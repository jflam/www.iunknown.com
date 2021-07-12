

<HTML>

<!-- General subroutines to make things visible and invisible --><HEAD>
<META http-equiv="Content-Type"
content="text/html; charset=iso-8859-1">
<META name="GENERATOR" content="Visual Notepad 1.0">
<TITLE>COM is good for you. Have you thought about COM today?</TITLE>
</HEAD>

<BODY bgcolor="#FFFFFF"
text="#000000" topmargin="0" leftmargin="0">

<STYLE>

	.textRed	{ color:red; font-weight:bold }
	.textBlack	{ color:black; font-weight:bold }
	.dropDown	{ position:relative;top:10;left:10;cursor:'hand' }

	H1		{ font:'14pt Arial' }
	H2		{ font:'14pt Arial';border-bottom:1px outset green }
	H3		{ font:'12pt Arial';font-weight:bold;cursor:'hand' }
	H4		{ font:'8pt Arial';font-weight:normal;font-style:italic }
	H5		{ font: '10pt Arial' }

</STYLE>

<SCRIPT>
	function ChangeDisplay( element )
	{
		if( element.style.display == "" ) {
			element.style.display = "none";
		} else {
			element.style.display = "";
		}
		window.event.cancelBubble = true;
	}

	function Dummy()
	{
		return True;
	}

	function IsIE( browsertype )
	{
		return True;

		if( browsertype.Browser == "IE" ) {
			if( browserType.Version >= 4 ) {
				return True;
			}
		}
		return False;
	}
</SCRIPT>

<SCRIPT language=vbscript>
	Sub NewBuildTOC()

		dim anchorTags
		dim objTOC
		dim doc

		set anchorTags = parent.frames( "MainFrame" ).document.anchors
		set doc = parent.frames( "Contents" ).document

		doc.open()
		doc.write "<HTML><HEAD></HEAD><BODY bgcolor=darkblue text=white alink=yellow link=white vlink=white>"
		doc.write "<STYLE>H4 { font:'8pt Arial';font-weight:normal;font-style:italic }</STYLE><H4>"
		doc.write "<BR><BR><BR><B>Contents</U></B><BR><HR>"

		for i = 0 to anchorTags.length - 1
			doc.write "<A href='#" & anchorTags( i ).name & "' target='MainFrame'>"
			doc.write anchorTags( i ).innerText & "</A><BR>"
		next

		doc.write "<HR>"
		doc.write "</H4></BODY></HTML>"
		doc.close()

	End Sub

	Sub ClearTOC()

		dim doc
		set doc = parent.frames( "Contents" ).document

		doc.open()
		doc.write "<HTML><BODY bgcolor=darkblue text=white alink=yellow link=white vlink=white></BODY></HTML>"
		doc.close()

	End Sub
</SCRIPT>

<P>
	<FONT face="VERDANA, ARIAL, HELVETICA">
	<IMG src="images/onepixel.gif" vspace="30" hspace="10" width="1" height="1"></IMG>
	<IMG src="/images/iunknownlogo.gif"></IMG>
	<IMG src="images/onepixel.gif" hspace="81" width="1" height="1"></IMG>
	</FONT>
</P>

<TABLE border="0">
<TR>
    <TD width="10" valign=TOP>&nbsp
	</TD>
    <TD width="480">
		<FONT face="VERDANA, ARIAL, HELVETICA">

		<FONT size=2><CENTER><I>
			Wednesday, January 21, 1998<BR><BR><BR>
		</CENTER></I></FONT>
		<FONT size=3><B>
			Welcome to the updated IUnknown.com web site!                                                                                                                                                                                                             <BR>
		</B></FONT>
		<FONT size=2>
			<p><b>Merry Grinchmas!</b>I love my new Kodak DC210 Digital Camera! I also love Microsoft Picture-It 2.0. Check out what the combination of these two marvels of technology did for my rather mediocre photographic talents in my <a href="http://www.iunknown.com/images/grinch.jpg">Grinchmas wish</a> to all of you this holiday season!</p>
<p><b>Get it here! </b> The source code files for my Issue 22 PC Magazine articles on Active Server Pages can be found <a href="aspsrc.zip">here.</a></p>
<p><b>Hot off the press:</b> My book just got released in North America! I wrote the COM stuff for the Delphi Developer's Handbook written by Marco Cantu, Tim Gooch and myself. Check out what the <a href="http://www.sybex.com/cgi-bin/scan_temp.pl?1987.gif">cover</a> looks like!</p>
<p><b>Cool new stuff: </b> I've updated this site to <I>automatically</I> generate a table of contents for any web page that has internal anchor links (identified by the &lt;A name='link name'&gt; tag). I'm leveraging some of the really cool collections stuff in the Document Object Model (DOM) to generate the TOC using VBScript. Click on the Stories link to check out this really cool client-side scripting feature. To see the TOC generation source code, just view the source for the page and check out the NewBuildTOC function!</p>
<p>I've fixed the site bugs that prevented Netscape from working. IE takes a far more liberal interpretation of HTML than Netscape … as it will render a table even when the final &lt;/TABLE&gt; tag is missing! The site now dynamically generates the correct pages for Internet Explorer 4.0 and 3.0, as well as Navigator 4.04. Please send <a href="mailto:jlam@iunknown.com">me</a> mail if your browser isn't rendering this site correctly.</p>
<p><b>Older, but still cool stuff: </b> If you're using Internet Explorer 4.0, check out the new pages that take advantage of the Document Object Model inside Internet Explorer 4.0. The stuff is still fairly basic, but shows the use of the &lt;DIV&gt;, &lt;SPAN&gt; tags and some fairly rudimentary event handlers. If you check out the event handling code, you'll see some of the new event bubbling stuff in action. It takes a bit of getting used to having to cancel the 'bubbling' of your events through the object model, but this behavior can be quite useful in certain cases. In any case typing 'window.event.cancelBubble = true;' in your JScript code will probably become a reflex action :).</p>
<p>There is also a new Viper component on the site. It takes care of counting the number of sessions on the web site. It stores it's non-durable state in the Shared Property manager, and its durable state in a SQL Server table. It only accesses the SQL Server table once every 100 hits to update the durable counter, so if the web site crashes, the session count could be in error by a maxiumum of 100 hits. The source for this component will be posted shortly.</p>
<p>Please note that I am bearing the full cost and responsibility for running and maintaining this web site. If you are interested in sponsoring this web site, contributing content, or offering some suggestions, please let <a href="mailto:jlam@iunknown.com">me</a> know.</p><BR><BR>
		</FONT>								
		<FONT size=3><B>What's New</B></FONT><BR><BR>
	
		<a href="story.asp?StoryID=10"><br>
		<font size = 3><b>RADICAL Automation: Dual Interfaces in Delphi 3                                                                                                                                                                                                           </b></font></a><br>
		<font size = 2>A lot has changed under the cover between Delphi 2 and Delphi 3. Of the many exciting new additions to Delphi 3 is native support for COM interfaces and Automation Dual Interfaces. This paper will give you an overview of the new dual interface features in Delphi 3.
</font><br><br>
	
		<a href="story.asp?StoryID=5"><br>
		<font size = 3><b>Latest updates to John Lam's Sessions at BorCon '97!                                                                                                                                                                                                      </b></font></a><br>
		<font size = 2>You'll find the latest session notes and handouts for John Lam's 
DL240: Radical Automation and DL260: Fusing 32-bit Delphi 
Applications with Explorer and the Windows 95 Shell sessions that are 
being given at this year's Borland Conference in Nashville.</font><br><br>
	
		<a href="story.asp?StoryID=2"><br>
		<font size = 3><b>Sneak Preview! Excerpts from the forthcoming Delphi Developer's Guide                                                                                                                                                                                     </b></font></a><br>
		<font size = 2>This is a sneak preview of the Delphi and COM chapter in the forthcoming book "Delphi Developers Guide" to be published this fall by Sybex. The text that is included on the web site represents the introduction to COM section of the chapter. The Delphi-specific information will also be included in the final version of this chapter. Please send in your <a href="mailto:jlam@iunknown.com">comments</a> about this work-in-progress!</font><br><br>
	
		<CENTER>
		<HR>
	
		<FONT size=1>
			You are visitor number 11806.<br>
			This page count is courtesy of ViperCounter. Source coming soon!<BR><BR>
		</FONT>
	
		</CENTER>
		</FONT>
		<CENTER>
		<FONT size = 1>&#169; 1997 John Lam. All rights reserved.<BR><BR></FONT>
		<A href="#TOP"><IMG src="images/top.gif" border=0 alt="Back to top"></A><BR>
		<BR><FONT FACE="ARIAL,HELVETICA" SIZE="1">
		<TABLE BORDER="0" CELLPADDING="0" CELLSPACING="5">
		<TR>
				<TD ALIGN="right" VALIGN="middle"><a href="/ie/" target="_top"><img src="/images/ie_animated.gif" width="88" height="31" border="0" alt="Microsoft Internet Explorer"></a></TD>
				<TD ALIGN="center" VALIGN="middle"><IMG SRC="images/bar.gif" width="3" height="43"></TD>
				<TD ALIGN="left" VALIGN="middle"><a href="/backoffice/designed/logo.htm" target="_top"><IMG SRC="/images/msbo_iis.gif" width="100" height="31" border="0" alt="Microsoft Windows NT Server with Internet Information Server"></a></TD>
		</TR>
		</TABLE>
		</FONT></CENTER><BR>
	</TD>	
</TR>
</TABLE>

</BODY>
</HTML>
