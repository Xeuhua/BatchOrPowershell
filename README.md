# Bash vs. Powershell



### Difference between Powershell and Bash 
Powershell vs Bash both provide one intelligent command line interface by using their own configuration management tool.
Bash is providing windows environment similar to Unix or Linux systems and also gives one big utility of OpenSSH connectivity which is the most secure security as it follows the secure shell protocol. Powershell provides proper windows specific Microsoft native scripting or automates scripting platform, which helds both Linux kind of command line interface (CLI) and pure clickable windows native environment, which attracts the developer for using the same as a virtual deployment environment.

**Purpose and scope** 

PowerShell is a configuration management tool that brings the capabilities of Linux command-line interface (CLI) control into the historically point-and-click Windows environment to manage Windows servers efficiently in virtual deployments. Administrators can manage Windows server workloads or host production Linux workloads and server applications via PowerShell.

Bash, on the other hand, is more traditionally suited for development environments. It was introduced to complement and strengthen CLI-based interaction. With the addition of Bash to Windows, code that developers or infrastructure engineers write for Linux works on their Windows systems, too. Picture Linux-first tools -- Python, Ruby, Git -- that are common in DevOps shops running directly on Windows.

**Syntax** 

PowerShell is not just a shell; it is a complete scripting environment. PowerShell invokes lightweight commands called cmdlets at run-time via automated scripts or APIs. While PowerShell does not call for them, old disk OS commands still work well. PowerShell uses aliases, which point old commands to the corresponding new ones. The `Get-Alias` cmdlet gives you a list of all aliases in PowerShell.
The commands `ls -la` in Bash and dir in PowerShell are two separate CLI concepts, but the output is not wildly different. The output of PowerShell dir commands, and how a directory list displays in PowerShell. The output is in the form of file objects with properties, such as date created and size, listed beside the files.
By contrast, the Bash output is in the form of a set of strings, which are the text representations of file names. The end result is especially important: The scripts you write take the data that is returned and pass it on to another function or use it to perform an action
PowerShell relies on an object pipeline. It pipes objects, passing along the output of one cmdlet as the input for another one. The same data can be manipulated with multiple cmdlets in sequence. By piping objects, PowerShell scripts share complex data, passing entire data structures between commands. Bash, on the other hand, passes output and input as plain text, which means it is easy for the user to move information to the next program.
The PowerShell output demonstrates how one directory entry contains a wealth of properties. Use the command `Get-ChildItem | Select-Object * -First 1` to show the many available properties on a single file-system object.

**Capabilities** 

PowerShell enables admins to edit the registry, manage Microsoft Azure cloud and Exchange email or conduct Windows Management Instrumentation. The Bash shell and command language don't offer these capabilities in Windows. As a developer tool on Windows, however, users can code and build functions or services while working on the same files from both the Linux and Windows CLI.

PowerShell makes it easy to access registry values and file properties using a common syntax. XML processing is also straightforward.

The value of PowerShell vs. Bash comes down to the user. If you're working on several Windows systems, Bash is of little use; you'll need PowerShell to write scripts. Admins can't access local Linux files with Windows apps -- such as Windows Notepad -- via Bash.

While Bash is great to manage text files in a scripting environment, everything is managed through APIs, not files. So, Bash is useful primarily to import Linux code to Windows machines and develop that code.


### Reference
<https://www.educba.com/powershell-vs-bash/>
https://searchitoperations.techtarget.com/tip/On-Windows-PowerShell-vs-Bash-comparison-gets-interesting
