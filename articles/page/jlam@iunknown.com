<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
  <title>Less is better</title>
  <meta http-equiv="content-type" content="text/html; charset=utf-8" />
  
  <link rel="EditURI" type="application/rsd+xml" title="RSD" href="http://www.iunknown.com/xml/rsd/feed.xml" />
  <link href="http://feeds.feedburner.com/LessIsBetter" rel="alternate" title="RSS" type="application/rss+xml"/>
  <link href="/stylesheets/theme/azure.css" media="screen" rel="Stylesheet" type="text/css" />
  <link href="/stylesheets/theme/local.css" media="screen" rel="Stylesheet" type="text/css" />
  <script src="/javascripts/cookies.js" type="text/javascript"></script>
  <script src="/javascripts/prototype.js" type="text/javascript"></script>
  <script src="/javascripts/effects.js" type="text/javascript"></script>
  <script src="/javascripts/typo.js" type="text/javascript"></script>
  <script type="text/javascript"></script>
  <script src="http://www.google-analytics.com/urchin.js" type="text/javascript"></script>
  <script type="text/javascript">
    _uacct="UA-133590-1";
    urchinTracker();
  </script>
</head>
<body>
  <div id="container" class="clearfix">
     <div id="header">
        <div id="logo">
          <h1 id="sitename"><a href="/">Less is better</a></h1>
          <h2 id="subtitle">John Lam on software</h2>
        </div>
      </div>
      
      <div id="content" class="clearfix">
        <div id="main">
          <img id="photo" src='http://static.flickr.com/26/55383834_e4b27af640.jpg?v=0' alt='Self Portrait'/>
          <div class="post">
  <p>No action responded to page</p>
</div>

          <script type="text/javascript">show_dates_as_local_time()</script>
        </div>
        <div id="sidebar">
          <form action="/articles/search" id="sform" method="get">
 <h3><label for="q">Search: </label></h3><input type="text" id="q" name="q" value="" size="15" />
<img alt="Spinner-blue" id="search_spinner" src="/images/spinner-blue.gif" style="display:none;" />
</form>

          <div id="search-results"></div>
          <script type="text/javascript">new Form.Element.Observer('q', 1, function(element, value) {new Ajax.Updater('search-results', '/live/search', {asynchronous:true, evalScripts:true, onComplete:function(request){Element.hide('search_spinner')}, onLoading:function(request){Element.show('search_spinner')}, parameters:value})})</script>          
            <h3>Syndicate</h3>
<ul>
    <li><a href="http://feeds.feedburner.com/LessIsBetter" title="RSS 2.0 feed">Articles</a></li>
  
    <li><a href="http://feeds.feedburner.com/LessIsBetterComments" title="Comments RSS 2.0 feed">Comments</a></li>
  
  
</ul>

    <div id="delicious">
    <h3><a href='http://del.icio.us/drjflam'>My recent del.icio.us links</a></h3>
    <ul>
              <li><a href="http://www.iunknown.com/articles/2006/03/16/third-drop-of-rubyclr" title="For the archives">Third Drop of RubyCLR </a></li>
              <li><a href="http://www.winxponmac.com/" title="Wahoo! Once Apple ships a 12" MacBook Pro with 1400 x 1050 and a Merom CPU I'm all over it.">Windows XP now boots on an Intel Duo Core Mac </a></li>
              <li><a href="http://video.google.com/videoplay?docid=-199899523054020719&amp;q=linux" title="Wow. This video of vista-esque effects in Linux is seriously impressive.">Novell Linux 10 xgl Technology Demonstration </a></li>
              <li><a href="http://www.pro-networks.org/forum/about71695-0-asc-10.html&amp;sid=f821da51db26b693a7066fc7fa8644eb" title="This is the thing that's been blocking me installing Vista 5308 on my Opteron desktop. Apparently you have to install XP first to a partition and then upgrade.">Installing Vista 5308 on NVIDIA SATA RAID </a></li>
              <li><a href="http://video.google.com/videoplay?docid=-6909078385965257294" title="Wow. Wow. Wow. One of the most insightful talks that I've seen this year.">"All Marketers are Liars" - Seth Godin speaks at Google </a></li>
              <li><a href="http://home.allegiance.tv/~joem298/" title="How to reinstall your Windows XP image on a Toshiba M200 using a PXE server">PXE Booting your M200 to DOS </a></li>
              <li><a href="http://sports.espn.go.com/espn/page2/story?page=simmons/060302" title="A couple of great writers that I admire interview each other.">Bill Simmons interviews Malcolm Gladwell on ESPN </a></li>
              <li><a href="http://www.pbenz.com/switch/archives/2005/03/changing_key_bi.html" title="One of the things that really frustrated me is the inconsistency of some keybindings between OS X and Windows. This is a cool script that maps them back to something I'm more used to.">Windows - friendly Key Bindings on Mac OS X </a></li>
              <li><a href="http://weblog.rubyonrails.com/articles/2006/03/01/new-for-rails-1-1-integration-tests" title="Is this just me, or are these integration tests just a model of clarity?">Integration Tests in Rails 1.1 </a></li>
              <li><a href="http://www.engadget.com/2006/02/27/wwjd-3-results/" title="Today's Mac mini announcements were pretty lame. Now these are some products that I want!">WWJD 3 - Results (What Would Jobs Do?) </a></li>
              <li><a href="http://webcast.berkeley.edu/courses/feeds.php" title="I'm listening to lots of podcasts as I walk around carrying Ben in the evenings. Lots of good material here.">UC Berkeley courses as webcasts </a></li>
          </ul>
  </div>

  <div id="flickr">
<h3>John Lam's Photos (<a href="http://www.flickr.com/photos/23649168@N00/">flickr</a>)</h3>
  <div class="flickrsquare"><a href="http://www.flickr.com/photos/23649168@N00/109809504/"><img alt="Windows Presentation Foundation and RubyCLR" src="http://static.flickr.com/49/109809504_3cb96cef07_s.jpg" /></a>
</div>
    <div class="flickrsquare"><a href="http://www.flickr.com/photos/23649168@N00/110674297/"><img alt="RubyCLR irb session" src="http://static.flickr.com/44/110674297_303908d4cd_s.jpg" /></a>
</div>
    <div class="flickrsquare"><a href="http://www.flickr.com/photos/23649168@N00/94578381/"><img alt="amazon" src="http://static.flickr.com/22/94578381_8b6056d9e7_s.jpg" /></a>
</div>
    <div class="flickrsquare"><a href="http://www.flickr.com/photos/23649168@N00/102769655/"><img alt="Google Calculator using RubyCLR" src="http://static.flickr.com/27/102769655_160658c51e_s.jpg" /></a>
</div>
  </div>

  
<h3>Archives</h3>
<ul id="archives">
  
    <li>
      <a href="/articles/2006/03">March 2006</a>
      <em>(10)</em>
    </li>
  
    <li>
      <a href="/articles/2006/02">February 2006</a>
      <em>(25)</em>
    </li>
  
    <li>
      <a href="/articles/2006/01">January 2006</a>
      <em>(9)</em>
    </li>
  
    <li>
      <a href="/articles/2005/12">December 2005</a>
      <em>(22)</em>
    </li>
  
    <li>
      <a href="/articles/2005/11">November 2005</a>
      <em>(18)</em>
    </li>
  
    <li>
      <a href="/articles/2005/10">October 2005</a>
      <em>(7)</em>
    </li>
  
</ul>


  <h3>Categories</h3>
<ul id="categories">
  
  <li><a href="/articles/category/personal">Life</a> <em>(8)</em></li>
  
  
  <li><a href="/articles/category/links">Props</a> <em>(17)</em></li>
  
  
  <li><a href="/articles/category/thoughts">Thoughts</a> <em>(66)</em></li>
  
</ul>


  <h3>Links</h3>
<ul>
  <li><a href="/pages/about_me">About me</a></li>
  <li><a href="http://www.objectsharp.com">My company</a></li>
  <li><a href="http://www.rubyonrails.com">Rails</a></li>
</ul>

Posts that contain <a href="http://technorati.com/search/RubyCLR">RubyCLR</a> per day for the last 30 days.<br /><a href="http://technorati.com/search/RubyCLR"><img src="http://technorati.com/chartimg/%28RubyCLR%29?totalHits=38&size=s&days=30" style="border:0" alt="Technorati Chart" /></a>



          <a class="powered" href="http://typo.leetsoft.com/"><img alt="Powered" src="/images/powered.gif" /></a>
        </div>
        <br clear="all" />
      </div>
      <div id="footer">
        <ul>
          <li><a href="http://validator.w3.org/check?uri=referer">Valid XHTML 1.0</a></li>
          <li><a href="http://jigsaw.w3.org/css-validator/validator?uri=http://www.iunknown.com/">Valid CSS</a></li>
        </ul>
      </div>
  </div>
</body>
</html>
