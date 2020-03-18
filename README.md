# Summarize the different configuration relevent methode.
### Powershell 创建环境变量 

* Set Environment Variable For The Current Session 

>在Powershell中只是机器环境变量的副本，只影响当前会话。类似于基于windows环境中的set命令。

```powershell
$env:<变量名> = " <新值> "

ls env:
```
>例如，将";c:\temp"追加到 Path 环境变量中:

```powershell
$env:Path = $env:path + ";c:\temp"
```

>或使用 Set-Item, Remove-Item 和 Copy-Item 来更改环境变量

```powershell
set-item -path env:path -value ($env:path + ";c:\temp")
```

* .NET方法[environment]::SetEnvironmentvariable操作可以立刻生效。

```powershell
[Environment]::SetEnvironmentVariable("TestVariableName", "My Value", "option")
```

The "option" parameter allows you to tell PowerShell the type of environment variable should be created. You can assign the new environment variable to the User level (per Windows user profile), Machine level (for anyone logging onto the computer), or Process level (another way to create a temporary variable like above, using the $env operation).

* Getting Help

For a full breakdown on working with environment variables in PowerShell, check out the help section by running _Get-Help -Name about_Environment_Variables_.

### Powershell 读取 .properties 

>前提：找到相同路径

```powershell
get-Content "filename.properties"
```

>去掉等号

```powershell
get-Content "filename.properties" | % {$_.Split("=")}
```

>取特定行

```powershell
(get-Content "filename.properties")[raw] | % {$_.Split("=")}
```

OR

```powershell
get-Content "filename.properties" -totalcount raw | % {$_.Split("=")}
```

>转化为string

```powershell
$a.GetType()

get-Content "filename.properties" -totalcount raw | % {$_.Split("=")} | Out-String 
```

>分类

```powershell
get-Content "filename.properties" -totalcount raw | % {$infos = $_.Split("=")}

$key = $infos[0].Trim()

$value = $infos[1].Trim()
```

OR

```powershell
($name, $value)=(get-Content "filename.properties" -totalcount 1) -split '='
```

### Powershell to manage group policy
<https://gerane.github.io/powershell/Local-gpo-powershell/>
```powershell
Install-Module -Name PolicyFileEditor -RequiredVersion 3.0.0 
```

### Powershell run cmd .bat file
```cmd
start-process "cmd.exe" "<path>:xxx.bat"
```

### Java JVM set system property
* change the location of user home
That can be set as a Java -D argument
```JVM
rem JVM parameters, modify as appropriate
set JAVA_OPTS=-Xms128m -Xmx1024m -Duser.home=<path>
```
