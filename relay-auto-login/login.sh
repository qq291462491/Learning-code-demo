#!/bin/bash
#--------------------------------------------
# 这是一个自动登陆线上relay的脚本 https://github.com/qq291462491/Learning-code-demo/tree/master/relay-auto-login
# 功能：直接输入口令即可登陆指定机器
#--------------------------------------------

##### 用户配置区 开始 #####
#
# 用户名和密码配置
#
##### 用户配置区 结束  #####
relay_name=
relay_password=
##### script start ######
echo  '请输入6位的大象口令'
if read -t 30 -p 'dynamic_token:' dynamic_token
then 
    echo "hello ${USER} ,请输入对应的编号来登录"


    
   if read -t 30 -p "number:" number
   then
	case "$number" in  

	esac
#调用expect脚本  
        ./login.expect $relay_name $relay_password$dynamic_token $online_host  	
   else
       echo -e "\nsorry,too slow" 
       exit 0
   fi
else
    echo -e "\nsorry,too slow "

    exit 0
fi


