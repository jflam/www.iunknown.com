

<HTML>

<HEAD>
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

	<font size = 3><b>Stories</b></font><br>

		<a href="story.asp?StoryID=10"><br>
		<font size = 3><b>RADICAL Automation: Dual Interfaces in Delphi 3                                                                                                                                                                                                           </b></font></a><br>
		<font size = 2>A lot has changed under the cover between Delphi 2 and Delphi 3. Of the many exciting new additions to Delphi 3 is native support for COM interfaces and Automation Dual Interfaces. This paper will give you an overview of the new dual interface features in Delphi 3.
</font><br><br>
	
		<a href="story.asp?StoryID=8"><br>
		<font size = 3><b>OLE Automation Collections and Delphi 2                                                                                                                                                                                                                   </b></font></a><br>
		<font size = 2>By using Automation Collections, you'll allow other programmers to manipulate a collection of objects within your Delphi application. These objects can be a set of integers, a set of strings, or a set of other Automation objects. This article shows how you can build an Automation collection that can be easily manipulated from Visual Basic.</font><br><br>
	
		<a href="story.asp?StoryID=7"><br>
		<font size = 3><b>Dual Interfaces Using Delphi 2                                                                                                                                                                                                                            </b></font></a><br>
		<font size = 2>Dual interfaces are high-speed OLE Automation interfaces. They combine the speed of a regular COM interface with the dynamic dispatching flexibility of the Automation IDispatch interface. Delphi 2 allows you to create Automation objects simply by deriving a new class from TAutoObject. This article shows how you can turn your pedestrian Automation objects into hot-rod dual interface objects.</font><br><br>
	
		<a href="story.asp?StoryID=5"><br>
		<font size = 3><b>Latest updates to John Lam's Sessions at BorCon '97!                                                                                                                                                                                                      </b></font></a><br>
		<font size = 2>You'll find the latest session notes and handouts for John Lam's 
DL240: Radical Automation and DL260: Fusing 32-bit Delphi 
Applications with Explorer and the Windows 95 Shell sessions that are 
being given at this year's Borland Conference in Nashville.</font><br><br>
	
		<a href="story.asp?StoryID=2"><br>
		<font size = 3><b>Sneak Preview! Excerpts from the forthcoming Delphi Developer's Guide                                                                                                                                                                                     </b></font></a><br>
		<font size = 2>This is a sneak preview of the Delphi and COM chapter in the forthcoming book "Delphi Developers Guide" to be published this fall by Sybex. The text that is included on the web site represents the introduction to COM section of the chapter. The Delphi-specific information will also be included in the final version of this chapter. Please send in your <a href="mailto:jlam@iunknown.com">comments</a> about this work-in-progress!</font><br><br>
	
		<a href="story.asp?StoryID=1"><br>
		<font size = 3><b>Structured Storage: A View from Delphi                                                                                                                                                                                                                    </b></font></a><br>
		<font size = 2>Structured storage is a part of the OLE Compound Documents Technology. In essence, it allows you to create a file system <I>inside a file</I>. This article walks you through the details of creating a Delphi application that allows you to browse structured storage files. In doing so, you'll gain the ability to use structured storage in your own applications.</font><br><br>
	
		<a href="story.asp?StoryID=4"><br>
		<font size = 3><b>ATL Can Mean Fast, Lightweight Controls!                                                                                                                                                                                                                  </b></font></a><br>
		<font size = 2>Version 2.0 of Microsoft's Active Template Library (ATL) adds the ability to create visual ActiveX controls with multiple threads and subclassed controls. Designed to work with Visual C++ 4.2b and 5.0, this article takes you on a tour of the major features of ATL, and walks you through the creation of your first ATL ActiveX control.</font><br><br>
	
		<a href="story.asp?StoryID=3"><br>
		<font size = 3><b>Borland Delphi 3.0 and ActiveX Controls                                                                                                                                                                                                                   </b></font></a><br>
		<font size = 2>Delphi 3.0 now adds the ability to create ActiveX controls, by allowing you to convert your existing VCL components into ActiveX controls.  In this article, we take a first look at Delphi 3.0's new ActiveX control creation features.</font><br><br>
	
	<center>
	<hr>
	<font size = 1>Page last updated on Sunday, July 20, 1997<br><br>
	</font>
	</center>

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

</font></p>
</body>

</BODY>
</HTML>
