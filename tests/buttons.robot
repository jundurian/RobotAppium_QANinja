*** Settings ***

Resource     ../resources/base.robot

Test Setup    Open Session
Test Teardown    Close Session


*** Test Cases ***
Deve realizar click simples
    Go to Short Click

    Click Element               io.qaninja.android.twp:id/short_click
    Wait Until Page Contains    Isso é um clique simples

Deve realizar clique longo
    [Tags]    long
    Go to Long Click

    ${element}=               Set Variable    io.qaninja.android.twp:id/long_click   

    Long Press                ${element}    1000
    Wait Until Page Contains  CLIQUE LONGO OK

    Element Text Should Be    ${element}    CLIQUE LONGO OK