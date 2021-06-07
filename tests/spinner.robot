*** Settings ***

Resource     ../resources/base.robot

Test Setup    Open Session
Test Teardown    Close Session

*** Variables ***
${SPINNER}        io.qaninja.android.twp:id/spinnerJob
${LIST_OPTIONS}   class=android.widget.ListView 

*** Test Cases ***
Deve selecionar QA no formulário
    Go To Cadastro
    Choice job    QA


Deve selecionar DevOps no formulário
    Go To Cadastro
    Choice job    DevOps



*** Keywords ***
Choice job
    [Arguments]    ${TARGET}

    Click Element    ${SPINNER}
    Wait Until Element Is Visible    ${LIST_OPTIONS}

    Click Text    ${TARGET}