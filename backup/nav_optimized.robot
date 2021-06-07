*** Settings ***
Resource          ../resources/base.robot

Test Setup        Open Session
Test Teardown     Close Session

*** Variables ***
#${variavel_normal}    Gabriel
#@{variavel_lista}     Gabriel    Jundurian    Fernandes
#&{dicionario}         nome=Gabriel    sobrenome=Fernandes    idade=33
${TOOLBAR_TITLE}       io.qaninja.android.twp:id/toolbarTitle


*** Test Cases ***
Ir a tela Dialogs
    Open nav

    Click Text                       DIALOGS   
    Wait Until Element Is Visible    ${TOOLBAR_TITLE}
    Element Text Should Be           ${TOOLBAR_TITLE}    DIALOGS    

Ir a tela Forms
    Open nav

    Click Text                       FORMS   
    Wait Until Element Is Visible    ${TOOLBAR_TITLE}
    Element Text Should Be           ${TOOLBAR_TITLE}    FORMS    

Ir a tela de Vingadores
    Open nav
    
    Click Text                       AVENGERS   
    Wait Until Element Is Visible    ${TOOLBAR_TITLE}
    Element Text Should Be           ${TOOLBAR_TITLE}    AVENGERS    
    

