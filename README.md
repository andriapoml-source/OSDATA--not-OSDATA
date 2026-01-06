How to fix it (safe recovery)
	1.	Boot into Windows Recovery Environment (WinRE).
	2.	Open Command Prompt from Advanced options.
	3.	Navigate to the Windows drive (often C:).
	4.	Remove the unexpected item:
del C:\Windows\System32\config\OSDATA
rmdir /s /q C:\Windows\System32\config\OSDATA

(Use the command that matches whether it is a file or a folder.)
   
	5.	Restart Windows.

Result
Windows boots normally. No reinstall required. No data loss.
