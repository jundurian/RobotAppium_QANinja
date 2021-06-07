*** Settings ***

Resource     ../resources/base.robot

Test Setup    Open Session
Test Teardown    Close Session


*** Test Cases ***
Deve marcar opção Robot Framework
    Go to Checkbox

    ${element}=    Set Variable    //android.widget.CheckBox[contains(@text,'Robot Framework')]

    Click Element                     ${element} 
    Wait Until Element Is Visible     io.qaninja.android.twp:id/rvContainer
    Element Attribute Should Match    ${element}    checked    true