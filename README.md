# Use this page to summarize the different configuration relevent methode.
## Powershell 创建环境变量 

只是机器环境变量的副本，及时改变，下次重新打开时会恢复

_$env:TestVar = " value "_

_ls env:_

.NET方法[environment]::SetEnvironmentvariable操作可以立刻生效。

_[Environment]::SetEnvironmentVariable("TestVariableName", "My Value", "option")_
  
The "option" parameter allows you to tell PowerShell the type of environment variable should be created. You can assign the new environment variable to the User level (per Windows user profile), Machine level (for anyone logging onto the computer), or Process level (another way to create a temporary variable like above, using the $env operation).

## Powershell 读取 .properties 

_config.properties_

_MA_TOOL=C:\Jenkins-INT\tool_

_Test=C:\Jenkins-INT\test_

前提：找到相同路径

_get-Content "filename.properties"_

去掉等号

_get-Content "filename.properties" | % {$_.Split("=")}_

取特定行

_(get-Content "filename.properties")[raw] | % {$_.Split("=")}_

OR

_get-Content "filename.properties" -totalcount raw | % {$_.Split("=")}_

转化为string

_$a.GetType()_

_get-Content "filename.properties" -totalcount raw | % {$_.Split("=")} | Out-String_ 

分类

_get-Content "filename.properties" -totalcount raw | % {$infos = $_.Split("=")}_

_$key = $infos[0].Trim()_

_$value = $infos[1].Trim()_

OR

_($name, $value)=(get-Content "filename.properties" -totalcount 1) -split '='_
