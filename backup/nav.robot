*** Settings ***
Library           AppiumLibrary
Test Setup        Open Session
Test Teardown     Close Session


*** Test Cases ***
Ir a tela Dialogs
    Wait Until Page Contains         COMEÇAR
    Click Text                       COMEÇAR
    Wait Until Element Is Visible    //android.widget.ImageButton[@content-desc="Open navigation drawer"]
    Click Element                    //android.widget.ImageButton[@content-desc="Open navigation drawer"]
    Wait Until Element Is Visible    io.qaninja.android.twp:id/navView
    Click Text                       DIALOGS   
    Wait Until Element Is Visible    io.qaninja.android.twp:id/toolbarTitle
    Element Text Should Be           io.qaninja.android.twp:id/toolbarTitle    DIALOGS    

Ir a tela Forms
    Wait Until Page Contains         COMEÇAR
    Click Text                       COMEÇAR
    Wait Until Element Is Visible    //android.widget.ImageButton[@content-desc="Open navigation drawer"]
    Click Element                    //android.widget.ImageButton[@content-desc="Open navigation drawer"]
    Wait Until Element Is Visible    io.qaninja.android.twp:id/navView
    Click Text                       FORMS   
    Wait Until Element Is Visible    io.qaninja.android.twp:id/toolbarTitle
    Element Text Should Be           io.qaninja.android.twp:id/toolbarTitle    FORMS    

Ir a tela de Vingadores
    Wait Until Page Contains         COMEÇAR
    Click Text                       COMEÇAR
    Wait Until Element Is Visible    //android.widget.ImageButton[@content-desc="Open navigation drawer"]
    Click Element                    //android.widget.ImageButton[@content-desc="Open navigation drawer"]
    Wait Until Element Is Visible    io.qaninja.android.twp:id/navView
    Click Text                       AVENGERS   
    Wait Until Element Is Visible    io.qaninja.android.twp:id/toolbarTitle
    Element Text Should Be           io.qaninja.android.twp:id/toolbarTitle    AVENGERS    
    

*** Keywords ***
Open Session
    Set Appium Timeout  5
    Open Application    http://localhost:4723/wd/hub
    ...                 platformName=Android
    ...                 platformVersion=11    
    ...                 app=${EXECDIR}/app/twp.apk
    ...                 skipServerInstallation=true
    ...                 skipDeviceInitialization=true

Close Session
    Close Application