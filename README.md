Use this page to summarize the different configuration relevent methode.
* Powershell 创建环境变量 (只是机器环境变量的副本，及时改变，下次重新打开时会恢复)

_$env: TestVar = " value "_

_ls env:_

* Powershell 读取 .properties 

_config.properties_

_MA_TOOL=C:\Jenkins-INT\tool_

_Test=C:\Jenkins-INT\test_

前提：找到相同路径

_get_Content "filename.properties"_

去掉等号

_get_Content "filename.properties" | % {$_.Split("=")}_

取特定行

_(get_Content "filename.properties")[raw] | % {$_.Split("=")}_

OR

_get_Content "filename.properties" -totalcount raw | % {$_.Split("=")}_

转化为string

_$a.GetType()_

_get_Content "filename.properties" -totalcount raw | % {$_.Split("=")} | Out-String_ 
