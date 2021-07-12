

<!-- Make sure that we call the GenerateXML method to ensure that we have the latest
	 version of the What's New XML file available for download -->


<html>
<head>
<meta HTTP-EQUIV="Content-Type" content="text/html; charset=iso-8859-1">
<title>What's new at IUnknown.com?</TITLE>
</head>

<style type="text/css">
  body {margin: 0pt}
</style>
<body link=yellow vlink=white text=white bgcolor=black>
<font face="Verdana, Arial, Helvetica" size=2>

<table cellpadding=3 width="100%" style="font-family: Verdana; font-size: 12; background-color: rgb( 0, 102, 51)">
<tr>
<td>
<b>IUnknown.com</b>
&nbsp;&nbsp;|&nbsp;&nbsp;<a href="new.asp">Whats New</a>
&nbsp;&nbsp;|&nbsp;&nbsp;<a href="stories.asp">Stories</a>
&nbsp;&nbsp;|&nbsp;&nbsp;<a href="links.asp">Links</a>
&nbsp;&nbsp;|&nbsp;&nbsp;<a href="samples.asp">Samples</a>
&nbsp;&nbsp;|&nbsp;&nbsp;<a href="about.asp">About</a>
</td>
</tr>
</table>
<br>

<center><span id=dateField></span></center>
<br><br>

<table border="0" width="100%" cellpadding="0" datasrc=#xmldso cols=2 
style="font-family: Verdana; font-size: 12; background-color: rgb(0,0,0); color: rgb(255,255,255)">
  <tr>
    <td width="100"></td>
    <td width="100%">
		<big><b><div datafld=title dataformatas=html></div></b></big>
		<small>Last updated: <span datafld=date dataformatas=html></span></small>
		<div datafld=abstract dataformatas=html></div><br>
	</td>
  </tr>
</table>

<br><br><br>
<small>
<center>Copyright &copy;1998 John Lam</center>
<center>You are visitor number: 29301</center>
<center>The visitor count is maintained by my <a href="samples.asp#ViperCounter">ViperCounter</a> MTS component.</center>
</small>
</font>
</body>

<script language=vbscript>
	
	Sub window_OnLoad()
		dateField.innerHTML = FormatDateTime( Date, vbLongDate )
	End Sub

</script>

<!-- Insert our XML applet parser -->
<applet code="com.ms.xml.dso.XMLDSO.class" id=xmldso width=0 height=0 mayscript=true>
	<param name="URL" value="new.xml">
</applet>
</html>

