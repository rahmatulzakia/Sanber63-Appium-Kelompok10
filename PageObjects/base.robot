*** Settings ***
Library    AppiumLibrary

*** Keywords ***
Open Flight Application
    Open Application        remote_url=http://127.0.0.1:4723/wd/hub    
    ...    platformName=Android        
    ...    platformVersion=10.0        
    ...    deviceName=32000e5c5efc662b        
    ...    appPackage=com.example.myapplication    
    ...    appActivity=com.example.myapplication.MainActivity 

Close Flight Application
    Close Application