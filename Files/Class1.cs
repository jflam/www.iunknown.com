using System;
using System.Diagnostics;
using System.IO;
using System.Net;
using System.Text;
using System.Text.RegularExpressions;
using System.Web;
using System.Xml;
using System.Xml.XPath;

namespace ripit
{
  class XHtmlParser
  {
    private XmlNamespaceManager manager_;
    private XmlDocument         doc_;
    private XPathNavigator      nav_;
    
    private void LoadXmlDocument( string url )
    {
      WebRequest    request   = HttpWebRequest.Create( url );
      WebResponse   response  = request.GetResponse();
      using( Stream stream = response.GetResponseStream() )
      {
        doc_ = new XmlDocument( );
        doc_.Load( stream );
      }
    }

    private void CreateNamespaceManager()
    {
      nav_      = doc_.CreateNavigator();
      manager_  = new XmlNamespaceManager( nav_.NameTable );
      manager_.AddNamespace( "xhtml", "http://www.w3.org/1999/xhtml" );
    }

    public XHtmlParser( string url )
    {
      LoadXmlDocument( url );
      CreateNamespaceManager();
    }

    public XPathNodeIterator SelectNodes( string xpath )
    {
      XPathExpression expr = nav_.Compile( xpath );
      expr.SetContext( manager_ );
      return nav_.Select( expr );
    }

    public XPathNodeIterator SelectNodes( XPathNavigator nav, string xpath )
    {
      XPathExpression expr = nav.Compile( xpath );
      expr.SetContext( manager_ );
      return nav.Select( expr );
    }

    public XmlNode SelectSingleNode( string xpath )
    {
      XmlNode result = null;
      XPathNodeIterator iter = SelectNodes( xpath );
      if( iter.MoveNext() )
        result = (XmlNode)((IHasXmlNode)iter.Current).GetNode();

      return result;
    }

    public XmlNode SelectSingleNode( XPathNavigator nav, string relativeXPath )
    {
      XmlNode result = null;
      XPathNodeIterator iter = SelectNodes( nav, relativeXPath );
      if( iter.MoveNext() )
        result = (XmlNode)((IHasXmlNode)iter.Current).GetNode();

      return result;
    }
  }

	class App
	{
    private static XHtmlParser parser_;

    static string StripByLineFromCommentXHtml( XPathNavigator nav )
    {
      string body = parser_.SelectSingleNode( nav, XPATH_COMMENT ).OuterXml;
      int offset = body.IndexOf( "<span class=" );
      return offset > 0 ? body.Substring( 0, offset ) + "</p>" : body;
    }

    static string ParseDate( string date )
    {
      DateTime dt = DateTime.ParseExact( date, @"MM.dd.yy - h:mm tt", new System.Globalization.CultureInfo( @"en-US" ), System.Globalization.DateTimeStyles.AllowWhiteSpaces );
      return dt.ToShortDateString() + " " + dt.ToLongTimeString();
    }

    const string XPATH_COMMENTS     = @"//xhtml:table/xhtml:tr/xhtml:td[ @class='MessageCell' ]";

    const string XPATH_EMAIL1       = @"xhtml:p/xhtml:span/xhtml:a[1]/@href";
    const string XPATH_HOMEPAGE1    = @"xhtml:p/xhtml:span/xhtml:a[1]/@href";
    const string XPATH_HOMEPAGE2    = @"xhtml:p/xhtml:span/xhtml:a[2]/@href";

    const string XPATH_NAMEANDDATE  = @"xhtml:p/xhtml:span";
    const string XPATH_COMMENT      = @"xhtml:p";

    static string ParseEmail( XPathNavigator nav, string xpath )
    {
      return HttpUtility.UrlDecode( parser_.SelectSingleNode( nav, xpath ).Value ).Substring( 7 );  // strip off mailto:
    }

    static void ParseByLine( XPathNavigator nav, out string name, out string date, out string email, out string homePage )
    {
      string    nameAndDate = parser_.SelectSingleNode( nav, XPATH_NAMEANDDATE ).InnerText;
      string[]  fields      = nameAndDate.Split( '|' );

      name      = fields[ 0 ].Trim();
      email     = "";
      homePage  = "";

      switch( fields.Length )
      {
        case 3:
          date = ParseDate( fields[ 1 ].Trim() );
          break;
        case 4:
          date = ParseDate( fields[ 2 ].Trim() );
          if( fields[ 1 ].Trim() == "Email" )
            email = ParseEmail( nav, XPATH_EMAIL1 );
          else
            homePage = parser_.SelectSingleNode( nav, XPATH_HOMEPAGE1 ).Value;
          break;
        case 5:
          date      = ParseDate( fields[ 3 ].Trim() );
          email     = ParseEmail( nav, XPATH_EMAIL1 );
          homePage  = parser_.SelectSingleNode( nav, XPATH_HOMEPAGE2 ).Value;
          break;
        default:
          throw new Exception( "unknown byline format" );
      }
    }

    static void ParseHaloscanEntry( XPathNavigator nav, TextWriter writer )
    {
      string body = StripByLineFromCommentXHtml( nav );
      string name, date, email, homePage;
      ParseByLine( nav, out name, out date, out email, out homePage );

      writer.WriteLine( "COMMENT:" );
      writer.WriteLine( "AUTHOR: " + name );
      writer.WriteLine( "DATE: " + date );
      if( email != "" ) writer.WriteLine( "EMAIL: " + email );
      if( homePage != "" ) writer.WriteLine( "URL: " + homePage );
      writer.WriteLine( body );
      writer.WriteLine( "-----" );
    }

    static void ParseHaloscanCommentPage( string url, TextWriter writer )
    {
      parser_ = new XHtmlParser( url );

      XPathNodeIterator iter = parser_.SelectNodes( XPATH_COMMENTS );
      if( iter.Count > 0 )
      {
        while( iter.MoveNext() )
          ParseHaloscanEntry( iter.Current, writer );
      }
    }

    static void ParseExportedEntry( XmlNode entry, TextWriter writer )
    {
      string title  = entry.SelectSingleNode( @"title" ).InnerText;
      string author = entry.SelectSingleNode( @"author" ).InnerText;
      string date   = entry.SelectSingleNode( @"date" ).InnerText;
      string status = entry.SelectSingleNode( @"status" ).InnerText;
      string body   = entry.SelectSingleNode( @"body" ).InnerText;
      string link   = entry.SelectSingleNode( @"link" ).InnerText;

      writer.WriteLine( "TITLE: " + title );
      writer.WriteLine( "AUTHOR: " + author );
      writer.WriteLine( "DATE: " + date );
      writer.WriteLine( "STATUS: " + status );
      writer.WriteLine( "-----" );
      writer.WriteLine( "BODY:" );
      writer.WriteLine( body );
      writer.WriteLine( "-----" );

      try
      {
        ParseHaloscanCommentPage( @"http://www.haloscan.com/comments.php?user=jlam&comment=" + link, writer );
      }
      catch( Exception e )
      {
        Console.WriteLine( "Error processing: {0}, message = {1}", link, e.Message );
      }

      writer.WriteLine( "--------" );
    }

    static XmlDocument exportedEntries_;

    static void Initialize( string path )
    {
      exportedEntries_ = new XmlDocument();
      exportedEntries_.Load( path );
    }

    static void CreateMTImportFile( TextWriter writer )
    {
      XmlNodeList entries = exportedEntries_.SelectNodes( @"/entries/entry" );

      for( int i = 0; i < entries.Count; ++i )
        ParseExportedEntry( entries[ i ], writer );

      writer.Flush();
    }

    static void CreateHtAccessFile( string baseUri, TextWriter writer )
    {
      XmlNodeList entries = exportedEntries_.SelectNodes( @"/entries/entry" );

      for( int i = 0; i < entries.Count; ++i )
      {
        string link = entries[ i ].SelectSingleNode( @"link" ).InnerText;
        writer.WriteLine( @"RedirectPermanent /{0} {1}/{2:D6}.html", link, baseUri, i + 1 );
      }

      writer.Flush();
    }

		[STAThread]
		static void Main(string[] args)
		{
      Initialize( @"\temp\entries.xml" );
      CreateMTImportFile( new StreamWriter( @"\temp\import.txt" ) );
      CreateHtAccessFile( @"http://www.iunknown.com", new StreamWriter( @"\temp\.htaccess" ) );
//      ParseHaloscanCommentPage( @"http://www.haloscan.com/comments.php?user=jlam&comment=Weblog/Sleeplessnightsandfuturep.html", Console.Out );
    }
	}
}
