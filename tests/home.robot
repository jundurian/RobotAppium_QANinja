*** Settings ***
Library    AppiumLibrary


*** Test Cases ***
Abrir tela principal
    Open Application    http://localhost:4723/wd/hub
    ...                 platformName=Android
    ...                 platformVersion=11    
    ...                 app=${EXECDIR}/app/twp.apk
    ...                 skipServerInstallation=true
    ...                 skipDeviceInitialization=true
    Wait Until Page Contains    Training Wheels Protocol    5
    Wait Until Page Contains    Mobile Version    5
    Close Application
