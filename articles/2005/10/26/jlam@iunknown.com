<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
  <title>Less is better</title>
  <meta http-equiv="content-type" content="text/html; charset=utf-8" />
  
  <link rel="EditURI" type="application/rsd+xml" title="RSD" href="http://www.iunknown.com/xml/rsd" />
  <link rel="alternate" type="application/rss+xml" title="RSS" href="http://feeds.feedburner.com/LessIsBetter" />
  <script src="/javascripts/cookies.js?1156231406" type="text/javascript"></script>
  <script src="/javascripts/prototype.js?1156231406" type="text/javascript"></script>
  <script src="/javascripts/effects.js?1156231406" type="text/javascript"></script>
  <script src="/javascripts/typo.js?1156231406" type="text/javascript"></script>
  
  <script type="text/javascript"></script>
  <link href="/stylesheets/theme/application.css?1161635555" media="all" rel="Stylesheet" type="text/css" />
  <script src="http://www.google-analytics.com/urchin.js" type="text/javascript"></script>
  <script type="text/javascript">
    _uacct="UA-133590-1";
    urchinTracker();
  </script>
</head>

<body>
<div id="container">
  <div id="header">
    <h1><span><a href="/">Less is better</a></span></h1>
    <h2>John Lam on software</h2>
  </div>

  <div id="page">
    <div id="content">
      <div class="post">
  <p>Post not found...</p>
</div>

      <script type="text/javascript">
//<![CDATA[
show_dates_as_local_time()
//]]>
</script>
    </div>

    <div id="sidebar">
      <!-- search -->
      <div id="search" class="search">
	<form action="/articles/search" id="sform" method="get">
	  <p><input type="text" id="q" name="q" value="" /></p>
	</form>
	
	<div id="loading" class="loading" style="display:none;">Searching...</div>
	<div id="results" class="results"></div>
  <script type="text/javascript">
//<![CDATA[
new Form.Element.Observer('q', 1, function(element, value) {new Ajax.Updater('results', '/live/search', {asynchronous:true, evalScripts:true, onComplete:function(request){Element.hide('loading')}, onLoading:function(request){Element.show('loading')}, parameters:'q=' + escape($F('q'))})})
//]]>
</script>
</div>


      <!-- sidebar components -->
      
      
<div class="sidebar-node">
  <h3>John Lam</h3>
<a href="/pages/about_me"><img src="http://static.flickr.com/90/222479189_d4e19a202c_t.jpg" width="67" height="100" alt="Self portrait" /></a>

<p>I am a software developer living in Toronto, Canada. I write .NET and Ruby code on a Mac. I'm the creator of <a href="http://www.rubyclr.com">RubyCLR</a>, a high performance bridge between Ruby and .NET. I'm a Partner at <a href="http://www.objectsharp.com"><b>Object</b>Sharp</a>, and am available to help you with your Ruby or .NET projects. <a href="/pages/about_me">More ...</a>

<table>
<tr>
  <td>email:</td>
  <td>jlam@iunknown.com</td>
</tr>
<tr>
  <td>phone:</td>
  <td>647 836 3718</td>
</tr>
<tr>
  <td>msn:</td>
  <td>drjflam@hotmail.com</td>
</tr>
<tr>
  <td>gtalk:</td>
  <td>drjflam@gmail.com</td>
</tr>
</table>
<br>
<h3>Syndicate</h3>

<p><a href="http://feeds.feedburner.com/LessIsBetter"><img src="/images/rss.png"/></a>&nbsp;
<a href="http://feeds.feedburner.com/LessIsBetter"><img src="http://feeds.feedburner.com/~fc/LessIsBetter?bg=FF9900&amp;fg=000000&amp;anim=0" height="26" width="88" style="border:0" alt="" /></a>
<br>
<form style="padding:3px;text-align:left;" action="http://www.feedburner.com/fb/a/emailverify" method="post" target="popupwindow" onsubmit="window.open('http://www.feedburner.com', 'popupwindow', 'scrollbars=yes,width=550,height=520');return true"><p>Subscribe by email:</p><p><input type="text" style="width:140px" name="email"/></p><input type="hidden" value="http://feeds.feedburner.com/~e?ffid=180551" name="url"/><input type="hidden" value="Less is better" name="title"/><input type="submit" value="Subscribe" /><p>Delivered by <a href="http://www.feedburner.com/" target="_blank">FeedBurner</a></p></form>

</div>


      
<div class="sidebar-node">
    <div id="delicious">
    <h3><a href="http://del.icio.us/drjflam">del.icio.us/drjflam</a></h3>
            <ul>
      
      <li>
        <a href="http://www.sciam.com/print_version.cfm?articleID=000B557A-71ED-146C-ADB783414B7F0000" title="">Scientific American: The Flipping Point</a>
              </li>
      
      <li>
        <a href="http://blogs.msdn.com/tims/articles/475132.aspx" title="">Tim Sneath : Windows Presentation Foundation Blogs</a>
              </li>
      
      <li>
        <a href="http://windowssdk.msdn.microsoft.com/en-us/library/ms746683.aspx" title="">Base Elements</a>
              </li>
      
      <li>
        <a href="http://blogs.msdn.com/text/" title="">WPF Text Blog</a>
              </li>
      
      <li>
        <a href="http://www.washingtonpost.com/wp-dyn/content/article/2006/04/14/AR2006041401209_pf.html" title="Founder of Greenpeace in an editorial that advocates a return to nuclear power as a way to combat climate change.">Going Nuclear</a>
              </li>
      
      <li>
        <a href="http://www.velonews.com/" title="">VeloNews: The Journal of Competitive Cycling</a>
              </li>
      
      <li>
        <a href="http://illconsidered.blogspot.com/" title="">A Few Things Ill Considered</a>
              </li>
      
      <li>
        <a href="http://www.iunknown.com/" title="">Less is better</a>
              </li>
      
      <li>
        <a href="http://www.nybooks.com/articles/19131" title="Jim Hansen, Director of NASA Goddard Institute weighs in on an Inconvenient Truth. Contains interesting personal anecdotes on his rocky relationship with Al Gore.">The New York Review of Books: The Threat to the Planet</a>
              </li>
      
      <li>
        <a href="http://www.youtube.com/watch?v=QjA5faZF1A8&amp;feature=Favorites&amp;page=1&amp;t=t&amp;f=b" title="">You just have to watch this guitar solo to believe it. Amazing.</a>
              </li>
      
      <li>
        <a href="http://www.iunknown.com/articles/2006/05/03/activerecord-and-windows-forms" title="For the archives">ActiveRecord and Windows Forms</a>
              </li>
          </ul>
      </div>

</div>


      
<div class="sidebar-node">
  <h3>My Photos</h3>
<style type="text/css">
.zg_div {margin:0px 5px 5px 0px; width:117px;}
.zg_div_inner {background-color:#ffffff;  color:#666666; text-align:center; font-family:arial, helvetica; font-size:11px;}
.zg_div a, .zg_div a:hover, .zg_div a:visited {color:#3993ff; background:inherit !important; text-decoration:none !important;}
</style>
<script type="text/javascript">
zg_insert_badge = function() {
var zg_bg_color = 'ffffff';
var zgi_url = 'http://www.flickr.com/apps/badge/badge_iframe.gne?zg_bg_color='+zg_bg_color+'&zg_person_id=23649168%40N00';
document.write('<iframe style="background-color:#'+zg_bg_color+'; border-color:#'+zg_bg_color+'; border:none;" width="113" height="151" frameborder="0" scrolling="no" src="'+zgi_url+'" title="Flickr Badge"><\/iframe>');
if (document.getElementById) document.write('<div id="zg_whatlink"><a href="http://www.flickr.com/badge_new.gne"	style="color:#3993ff;" onclick="zg_toggleWhat(); return false;">what is this?<\/a><\/div>');
}
zg_toggleWhat = function() {
document.getElementById('zg_whatdiv').style.display = (document.getElementById('zg_whatdiv').style.display != 'none') ? 'none' : 'block';
document.getElementById('zg_whatlink').style.display = (document.getElementById('zg_whatdiv').style.display != 'none') ? 'none' : 'block';
return false;
}
</script>
<div class="zg_div"><div class="zg_div_inner"><a href="http://www.flickr.com">www.<strong style="color:#3993ff">flick<span style="color:#ff1c92">r</span></strong>.com</a><br>
<script type="text/javascript">zg_insert_badge();</script>
<div id="zg_whatdiv">This is a Flickr badge showing public photos from <a href="http://www.flickr.com/photos/23649168@N00">John Lam</a>. Make your own badge <a href="http://www.flickr.com/badge_new.gne">here</a>.</div>
<script type="text/javascript">if (document.getElementById) document.getElementById('zg_whatdiv').style.display = 'none';</script>
</div>
</div>

</div>


      
<div class="sidebar-node">
  
<h3>Archives</h3>
<ul id="archives">
  
    <li>
      <a href="/articles/2006/10">October 2006</a>
      <em>(7)</em>
    </li>
  
    <li>
      <a href="/articles/2006/9">September 2006</a>
      <em>(12)</em>
    </li>
  
    <li>
      <a href="/articles/2006/8">August 2006</a>
      <em>(39)</em>
    </li>
  
    <li>
      <a href="/articles/2006/7">July 2006</a>
      <em>(29)</em>
    </li>
  
    <li>
      <a href="/articles/2006/6">June 2006</a>
      <em>(23)</em>
    </li>
  
    <li>
      <a href="/articles/2006/5">May 2006</a>
      <em>(34)</em>
    </li>
  
    <li>
      <a href="/articles/2006/4">April 2006</a>
      <em>(13)</em>
    </li>
  
    <li>
      <a href="/articles/2006/3">March 2006</a>
      <em>(21)</em>
    </li>
  
    <li>
      <a href="/articles/2006/2">February 2006</a>
      <em>(25)</em>
    </li>
  
    <li>
      <a href="/articles/2006/1">January 2006</a>
      <em>(9)</em>
    </li>
  
    <li>
      <a href="/articles/2005/12">December 2005</a>
      <em>(22)</em>
    </li>
  
    <li>
      <a href="/articles/2005/11">November 2005</a>
      <em>(17)</em>
    </li>
  
    <li>
      <a href="/articles/2005/10">October 2005</a>
      <em>(6)</em>
    </li>
  
</ul>


</div>


      
<div class="sidebar-node">
  <h3>Tags</h3>
<p style="overflow:hidden">
<span style="font-size:66.6666666666667%"><a href="/articles/tag/barcampearthtoronto">BarCampEarthToronto</a></span>
<span style="font-size:142.857142857143%"><a href="/articles/tag/dynamiclanguages">DynamicLanguages</a></span>
<span style="font-size:66.6666666666667%"><a href="/articles/tag/ironpython">IronPython</a></span>
<span style="font-size:66.6666666666667%"><a href="/articles/tag/life">Life</a></span>
<span style="font-size:66.6666666666667%"><a href="/articles/tag/mac">Mac</a></span>
<span style="font-size:66.6666666666667%"><a href="/articles/tag/marketing">Marketing</a></span>
<span style="font-size:66.6666666666667%"><a href="/articles/tag/microsoft">Microsoft</a></span>
<span style="font-size:66.6666666666667%"><a href="/articles/tag/parenting">Parenting</a></span>
<span style="font-size:66.6666666666667%"><a href="/articles/tag/photography">Photography</a></span>
<span style="font-size:66.6666666666667%"><a href="/articles/tag/platforms">Platforms</a></span>
<span style="font-size:200%"><a href="/articles/tag/props">Props</a></span>
<span style="font-size:66.6666666666667%"><a href="/articles/tag/python">Python</a></span>
<span style="font-size:200%"><a href="/articles/tag/ruby">Ruby</a></span>
<span style="font-size:200%"><a href="/articles/tag/rubyclr">RubyCLR</a></span>
<span style="font-size:66.6666666666667%"><a href="/articles/tag/secondlife">SecondLife</a></span>
<span style="font-size:66.6666666666667%"><a href="/articles/tag/simplicity">simplicity</a></span>
<span style="font-size:200%"><a href="/articles/tag/thoughts">Thoughts</a></span>
<span style="font-size:66.6666666666667%"><a href="/articles/tag/vb">VB</a></span>
<span style="font-size:66.6666666666667%"><a href="/articles/tag/vim">Vim</a></span>
<span style="font-size:66.6666666666667%"><a href="/articles/tag/workspaces">workspaces</a></span>
</p>


</div>


      
<div class="sidebar-node">
  <h3>Categories</h3>
<ul id="categories">
  
  <li><a href="/articles/category/personal">Life</a> <em>(17)</em></li>
  
  
  <li><a href="/articles/category/links">Props</a> <em>(58)</em></li>
  
  
  <li><a href="/articles/category/thoughts">Thoughts</a> <em>(148)</em></li>
  
</ul>


</div>


  


    </div>
    <br style="clear:both;" />
  </div>

  <div id="footer">
    <hr />
    <p><a href="/">Less is better</a></p>
    <ul>
      <li>powered by <a href="http://typosphere.org">typo</a> /
          styled with <a href="http://quotedprintable.com/pages/scribbish">scribbish</a></li>
    </ul>
  </div>
</div>
</body>
</html>
