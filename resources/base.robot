*** Settings ***
Resource          helpers.robot

*** Keywords ***
Open Session
    Set Appium Timeout  5
    Open Application    http://localhost:4723/wd/hub
    ...                 platformName=Android
    ...                 platformVersion=11    
    ...                 app=${EXECDIR}/app/twp.apk
    ...                 skipServerInstallation=true
    ...                 skipDeviceInitialization=true
    Get Started

Close Session
    Capture Page Screenshot
    Close Application

