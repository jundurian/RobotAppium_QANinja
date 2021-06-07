*** Settings ***

Resource     ../resources/base.robot

Test Setup    Open Session
Test Teardown    Close Session

*** Variables ***
${btn_remove}    io.qaninja.android.twp:id/btnRemove  

*** Test Cases ***
Deve remover Capitao America
    Go to Avengers List

    Swipe By Percent    88    18    47    18

    Wait Until Element Is Visible    ${btn_remove}
    Click Element    ${btn_remove}
    Sleep    5



    