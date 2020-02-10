#ps
#find root of the .properties file
$info=(get-Content "env.properties" -totalcount 1) -split '='
set-item -force -path "env:$($info[0])" -value $info[1]

#load all the infos from the .properties file in For-Loop
infos=get-Content "env.properties"
for ($i=0; $i -lt $infos.Length; $i++) {
$info=((get-Content "env.properties")[$i]) -split '='
set-item -force -path "env:$($info[0])" -value $info[1]
}

#check 
ls env:
