*** Settings ***

Resource     ../resources/base.robot

Test Setup    Open Session
Test Teardown    Close Session


*** Test Cases ***
Deve selecionar Python
    Go to Radio Buttons

    ${element}=    Set Variable    //android.widget.RadioButton[contains(@text,'Python')]

    Click Element                     ${element} 
    Wait Until Element Is Visible     ${element}
    Element Attribute Should Match    ${element}    checked    true