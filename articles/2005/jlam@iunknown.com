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
  <link href="/stylesheets/theme/application.css?1164503575" media="all" rel="Stylesheet" type="text/css" />
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
  <p>No action responded to 2005</p>
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

<p>I am a Program Manager on the Common Language Runtime team at Microsoft. I write .NET and Ruby code on a Mac. I'm the creator of <a href="http://www.rubyclr.com">RubyCLR</a>, a high performance bridge between Ruby and .NET. <a href="/pages/about_me">More ...</a>

<table>
<tr>
  <td>email:</td>
  <td>jlam@iunknown.com</td>
</tr>
<tr>
  <td>phone:</td>
  <td>425 698 9332</td>
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
        <a href="http://www.washingtonpost.com/wp-dyn/content/article/2007/04/04/AR2007040401721.html?referrer=digg" title="The story about Joshua Bell performing as a busker in Washington DC - $32.17 for 43 minutes worth of work. A very well written article about the importance of context in beauty (my conclusion - not necessarily the article's).">Pearls Before Breakfast - washingtonpost.com</a>
              </li>
      
      <li>
        <a href="http://bargiel.home.pl/iGTD/" title="A Getting Things Done organizer for the Mac as a desktop application">iGTD</a>
              </li>
      
      <li>
        <a href="http://blogs.smugmug.com/onethumb/files/ETech-SmugMug-Amazon-2007.pdf" title="">Don MacAskill on how S3 saved SmugMug 692K last year</a>
              </li>
      
      <li>
        <a href="http://www.people.iup.edu/pnwm/comparison.gif" title="Fun comparison of fictional starships from different SF shows.">Starship size comparison chart</a>
              </li>
      
      <li>
        <a href="http://www.teach12.com/" title="Bill Gates listens to the lectures from this company - available as downloads as well.">The Teaching Company</a>
              </li>
      
      <li>
        <a href="http://www.speedtest.net/" title="Found this via StumbleUpon">Speedtest.net - The Global Broadband Speed Test</a>
              </li>
      
      <li>
        <a href="http://wvs.topleftpixel.com/flash/cntower_timelapse.swf" title="Move your mouse around this picture and see it change.">Downtown Toronto Photo</a>
              </li>
      
      <li>
        <a href="ftp://gatekeeper.dec.com/pub/DEC/WRL/research-reports/WRL-TR-95.7.pdf" title="">Shared Memory Consistency Models</a>
              </li>
      
      <li>
        <a href="http://discuss.develop.com/archives/wa.exe?A2=ind0203B&amp;L=DOTNET&amp;P=R375" title="An excellent discussion on the motivation for and implementation of the CLR memory model.">Vance Morrison on CLR Memory Model</a>
              </li>
      
      <li>
        <a href="http://slideshare.net/" title="A YouTube like service for sharing slides from talks.">SlideShare</a>
              </li>
      
      <li>
        <a href="http://research.microsoft.com/manuvir/papers/instruction_level_tracing_VEE06.pdf" title="This is MSR's Nirvana framework for dynamically injecting tracing code into x86 binaries at runtime. It lets them travel forwards and backwards in execution flow ('time travel debugging').">Framework for Instruction-level Tracing and Analysis of Program Executions</a>
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
      <a href="/articles/2007/3">March 2007</a>
      <em>(4)</em>
    </li>
  
    <li>
      <a href="/articles/2007/2">February 2007</a>
      <em>(3)</em>
    </li>
  
    <li>
      <a href="/articles/2007/1">January 2007</a>
      <em>(4)</em>
    </li>
  
    <li>
      <a href="/articles/2006/12">December 2006</a>
      <em>(2)</em>
    </li>
  
    <li>
      <a href="/articles/2006/11">November 2006</a>
      <em>(2)</em>
    </li>
  
    <li>
      <a href="/articles/2006/10">October 2006</a>
      <em>(8)</em>
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
<span style="font-size:128.205128205128%"><a href="/articles/tag/dynamiclanguages">DynamicLanguages</a></span>
<span style="font-size:66.6666666666667%"><a href="/articles/tag/ironpython">IronPython</a></span>
<span style="font-size:128.205128205128%"><a href="/articles/tag/life">Life</a></span>
<span style="font-size:66.6666666666667%"><a href="/articles/tag/mac">Mac</a></span>
<span style="font-size:66.6666666666667%"><a href="/articles/tag/marketing">Marketing</a></span>
<span style="font-size:76.9230769230769%"><a href="/articles/tag/microsoft">Microsoft</a></span>
<span style="font-size:66.6666666666667%"><a href="/articles/tag/parenting">Parenting</a></span>
<span style="font-size:66.6666666666667%"><a href="/articles/tag/photography">Photography</a></span>
<span style="font-size:66.6666666666667%"><a href="/articles/tag/platforms">Platforms</a></span>
<span style="font-size:200%"><a href="/articles/tag/props">Props</a></span>
<span style="font-size:66.6666666666667%"><a href="/articles/tag/python">Python</a></span>
<span style="font-size:200%"><a href="/articles/tag/ruby">Ruby</a></span>
<span style="font-size:200%"><a href="/articles/tag/rubyclr">RubyCLR</a></span>
<span style="font-size:66.6666666666667%"><a href="/articles/tag/rubyconf">RubyConf</a></span>
<span style="font-size:66.6666666666667%"><a href="/articles/tag/secondlife">SecondLife</a></span>
<span style="font-size:66.6666666666667%"><a href="/articles/tag/simplicity">simplicity</a></span>
<span style="font-size:200%"><a href="/articles/tag/thoughts">Thoughts</a></span>
<span style="font-size:66.6666666666667%"><a href="/articles/tag/vim">Vim</a></span>
<span style="font-size:66.6666666666667%"><a href="/articles/tag/workspaces">workspaces</a></span>
</p>


</div>


      
<div class="sidebar-node">
  <h3>Categories</h3>
<ul id="categories">
  
  <li><a href="/articles/category/personal">Life</a> <em>(20)</em></li>
  
  
  <li><a href="/articles/category/links">Props</a> <em>(58)</em></li>
  
  
  <li><a href="/articles/category/thoughts">Thoughts</a> <em>(149)</em></li>
  
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
