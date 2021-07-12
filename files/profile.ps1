# JFLAM PowerShell profile

if (test-path alias:set) { remove-item alias:set > $null }
function set
{
	[string]$var = $args
	if ($var -eq "")
	{
		get-childitem env: | sort-object name
	}
	else
	{
		if ($var -match "^(\S*?)\s*=\s*(.*)$")
		{
			set-item -force -path "env:$($matches[1])" -value $matches[2];		
		}
		else
		{
			write-error "ERROR Usage: VAR=VALUE"
		}
	}	
}

set MERLIN_EXTERNAL="${env:MERLIN_ROOT}\..\External"
set PATH="${env:HOMEPATH}\darcs;${env:PATH};${env:MERLIN_ROOT}\Bin\debug\;"
set HOME="${env:HOMEPATH}"

function ipy { cmd /C " ${env:MERLIN_ROOT}\Bin\Release\ipy.exe  -D -X:TabCompletion $args"}
function ipyr { cmd /C " ${env:MERLIN_ROOT}\Bin\Release\ipy.exe  -D -X:TabCompletion $args"}
function ipyd { cmd /C "${env:MERLIN_ROOT}\Bin\Debug\ipy.exe    -D -X:TabCompletion $args"}
function ipt { cmd /C "${env:MERLIN_ROOT}\Utilities\Silverlight\x86ret\run_host.cmd /lang:py $args"}
function iptd { cmd /C "${env:MERLIN_ROOT}\Utilities\Silverlight\x86ret\run_host_debug.cmd /lang:py $args"}

function ipw { cmd /C "${env:MERLIN_ROOT}\Bin\Release\ipyw.exe -D $args"}
function ipwd { cmd /C "${env:MERLIN_ROOT}\Bin\Debug\ipyw.exe -D $args"}

function vbx { cmd /C "${env:MERLIN_ROOT}\Bin\Release\vbx.exe $args"}
function vbr { cmd /C "${env:MERLIN_ROOT}\Bin\Release\vbx.exe $args"}
function vbd { cmd /C "${env:MERLIN_ROOT}\Bin\Debug\vbx.exe $args"}
function vbt { cmd /C "${env:MERLIN_ROOT}\Utilities\Silverlight\x86ret\run_host.cmd /lang:vbx $args"}
function vbtd { cmd /C "${env:MERLIN_ROOT}\Utilities\Silverlight\x86ret\run_host_debug.cmd /lang:vbx $args"}

function jsx { cmd /C "${env:MERLIN_ROOT}\Bin\Release\jsx.exe $args"}
function jsr { cmd /C "${env:MERLIN_ROOT}\Bin\Release\jsx.exe $args"}
function jsd { cmd /C "${env:MERLIN_ROOT}\Bin\Debug\jsx.exe $args"}
function jst { cmd /C "${env:MERLIN_ROOT}\Utilities\Silverlight\x86ret\run_host.cmd /lang:js $args"}
function jstd { cmd /C "${env:MERLIN_ROOT}\Utilities\Silverlight\x86ret\run_host_debug.cmd /lang:js $args"}

function rbx { cmd /C "${env:MERLIN_ROOT}\Bin\Debug\ir.exe $args"}
function rbd { cmd /C "${env:MERLIN_ROOT}\Bin\Debug\ir.exe -D $args"}
function rbr { cmd /C "${env:MERLIN_ROOT}\Bin\Release\ir.exe $args"}
function rbt { cmd /C "${env:MERLIN_ROOT}\Utilities\Silverlight\x86ret\run_host.cmd /lang:rb $args"}
function rbtd { cmd /C "${env:MERLIN_ROOT}\Utilities\Silverlight\x86ret\run_host_debug.cmd /lang:rb $args"}

function ipi { cmd /C "${env:MERLIN_ROOT}\Bin\Release\ipy.exe -D -X:TabCompletion -X:AutoIndent $args"}

function n { cmd /C "notepad.exe $args"}
function n2 { cmd /C "notepad2.exe $args"}
function cpy { cmd /C "${env:MERLIN_ROOT}\..\External\Languages\CPython\25\Python.exe $args"}
function cpy24 { cmd /C "${env:MERLIN_ROOT}\..\External\Languages\CPython\24\Python.exe $args"}
function cpy25 { cmd /C "${env:MERLIN_ROOT}\..\External\Languages\CPython\25\Python.exe $args"}
function getall { cmd /C "tf get ${env:MERLIN_ROOT} /recursive $args" }
function getrec { cmd /C "tf get * /recursive $args" }

function bin { cd "${env:MERLIN_ROOT}\Bin"}
function ip { cd "${env:MERLIN_ROOT}\Languages\IronPython"}
function rb { cd "${env:MERLIN_ROOT}\Languages\Ruby"}
function rbl { cd "${env:MERLIN_ROOT}\Languages\Ruby\IronRuby.Libraries"}
function rt { cd "${env:MERLIN_ROOT}\Runtime"}
function t { cd "${env:MERLIN_ROOT}\Test"}
function sl { cd "${env:MERLIN_ROOT}\Utilities\Silverlight\x86ret"}
function sls { cd "${env:MERLIN_ROOT}\Hosts\Silverlight\Samples"}
function msl { cd "${env:ProgramFiles}\Microsoft Silverlight"}
function mwt { cd "${env:MERLIN_ROOT}\Hosts\MerlinWeb\Test\TestSuites"}
function slt { cd "${env:MERLIN_ROOT}\Hosts\Silverlight\TestSuites"}
function vb { cd "${env:MERLIN_ROOT}\Languages\VBX"}

function bd { cmd /C "${env:MERLIN_ROOT}\Scripts\Bat\BuildRowan.cmd /p:Configuration=`"Debug`" $args"}
function bdc { cmd /C " ${env:MERLIN_ROOT}\Scripts\Bat\BuildRowan.cmd /p:Configuration=`"Debug`" /t:Rebuild  $args"}
function br { cmd /C "${env:MERLIN_ROOT}\Scripts\Bat\BuildRowan.cmd /p:Configuration=`"Release`" $args"}
function brc { cmd /C "${env:MERLIN_ROOT}\Scripts\Bat\BuildRowan.cmd /p:Configuration=`"Release`" /t:Rebuild $args"}
function bfx { cmd /C "${env:MERLIN_ROOT}\Scripts\Bat\BuildRowan.cmd /p:Configuration=`"FxCop`" $args"}
function bsd { cmd /C "${env:MERLIN_ROOT}\Scripts\Bat\BuildRowan.cmd /p:Configuration=`"Silverlight Debug`" $args"}
function bsr { cmd /C "${env:MERLIN_ROOT}\Scripts\Bat\BuildRowan.cmd /p:Configuration=`"Silverlight Release`" $args"}
function bsdc { cmd /C "${env:MERLIN_ROOT}\Scripts\Bat\BuildRowan.cmd /p:Configuration=`"Silverlight Debug`" /t:Rebuild $args"}
function bsrc { cmd /C "${env:MERLIN_ROOT}\Scripts\Bat\BuildRowan.cmd /p:Configuration=`"Silverlight Release`" /t:Rebuild $args"}
function bnd { cmd /C "${env:MERLIN_ROOT}\Scripts\Bat\BuildNessie.cmd /p:Configuration=`"Debug`" $args"}
function bnr { cmd /C "${env:MERLIN_ROOT}\Scripts\Bat\BuildNessie.cmd /p:Configuration='Release' $args"}
function bvb { cmd /C "${env:MERLIN_ROOT}\Scripts\Bat\BuildVBX.cmd /p:Configuration='Debug' $args"}
function bvbr { cmd /C "${env:MERLIN_ROOT}\Scripts\Bat\BuildVBX.cmd /p:Configuration='Release' $args"}
function bvbc { cmd /C "${env:MERLIN_ROOT}\Scripts\Bat\BuildVBX.cmd /p:Configuration='Debug' /t:Rebuild $args"}
function bvbrc { cmd /C "${env:MERLIN_ROOT}\Scripts\Bat\BuildVBX.cmd /p:Configuration='Release' /t:Rebuild $args"}
function bslt { cmd /C "${env:MERLIN_ROOT}\Hosts\SilverLight\TestSuites\setup\BuildSilverLightTests.bat $args"}

function nd { cmd /C "${env:MERLIN_ROOT}\Tools\Nessie\Nessie\bin\Debug\Nessie.exe $args"}
function nr { cmd /C "${env:MERLIN_ROOT}\Tools\Nessie\Nessie\bin\Release\Nessie.exe $args"}

function chd { cmd /C "`"${env:MERLIN_ROOT}\Bin\Silverlight Debug\Chiron.exe`" $args" }
function chr { cmd /C "`"${env:MERLIN_ROOT}\Bin\Silverlight Release\Chiron.exe`" $args" }
function ch { cd "${env:MERLIN_ROOT}\Hosts\Silverlight\Chiron\" }

function bc { cmd /C "`"${env:ProgramFiles}\Beyond Compare 2\Bc2.exe`" $args"}

function pushsl { cmd /C "${env:MERLIN_ROOT}\Utilities\IronPython(x86)\ipy.exe $env:MERLIN_ROOT\Scripts\Python\push_to_slw2.py $args"}
function update_coreclr { cmd /C "${env:MERLIN_ROOT}\Utilities\IronPython\ipy.exe $env:MERLIN_ROOT\Scripts\Python\update_coreclr.py $args"}
function update_manifest { cmd /C "${env:MERLIN_ROOT}\Bin\Release\ipy.exe $env:MERLIN_ROOT\Scripts\Python\silverlight_manifest.py $args"}

function temp { cd c:\temp }
function tools { cd "${env:HOMEPATH}\tools" }
function demos { cd "${env:MERLIN_ROOT}\..\users\jflam\demos" }
function bb { cd "${env:MERLIN_ROOT}\..\users\jflam\demos\beachball" }
function docs { cd "${env:HOMEPATH}\documents" }
function dt { cd "${env:HOMEPATH}\desktop" }
function home { cd "${env:HOMEPATH}" }
function psd { cd "${env:HOMEPATH}\Documents\WindowsPowerShell" }

function irb { cmd /C "${env:MERLIN_EXTERNAL}\languages\ruby\ruby-1.8.6\bin\irb.bat $args"}
function ruby { cmd /C "${env:MERLIN_EXTERNAL}\languages\ruby\ruby-1.8.6\bin\ruby.exe $args"}
function crmail { cmd /C "${env:MERLIN_ROOT}\Scripts\Bat\CRMail.cmd $args" }
function irb19 { cmd /C "${env:MERLIN_ROOT}\..\External\Languages\Ruby\ruby-1.9.0-0\bin\irb.bat $args" }
function ruby19 { cmd /C "${env:MERLIN_ROOT}\..\External\Languages\Ruby\ruby-1.9.0-0\bin\ruby.exe $args" }

function u { cd .. }
function uu { cd ..\.. }
function uuu { cd ..\..\.. }
function uuuu { cd ..\..\..\.. }
function uuuuu { cd ..\..\..\..\.. }
function uuuuuu { cd ..\..\..\..\..\.. }

function pd { pushd "$args" }

set-alias start explorer

#Add-PSSnapin PSCX

cls

"Hai " + $env:Username + " LOL!"

