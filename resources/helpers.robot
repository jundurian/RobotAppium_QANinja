*** Settings ***
Library           AppiumLibrary
Documentation     Aqui teremos as keywords helpers

*** Variables ***
${START}            COMEÇAR
${HAMBURGER}        //android.widget.ImageButton[@content-desc="Open navigation drawer"]  
${NAV_VIEW}         io.qaninja.android.twp:id/navView    


*** Keywords ***
Get Started
    Wait Until Page Contains         ${START}
    Click Text                       ${START}

Open nav
    Wait Until Element Is Visible    ${HAMBURGER}
    Click Element                    ${HAMBURGER}
    Wait Until Element Is Visible    ${NAV_VIEW}
    
Go To Login Forms
    Open nav

    Click Text                  FORMS
    Wait Until Page Contains    FORMS
    
    Click Text                  LOGIN
    Wait Until Page Contains    Fala QA, vamos testar o login?

Go To Cadastro
    Open nav

    Click Text                  FORMS
    Wait Until Page Contains    FORMS
    
    Click Text                  CADASTRO
    Wait Until Page Contains    Bem-vindo, crie sua conta.

Go to Radio Buttons
    Open nav

    Click Text    INPUTS
    Wait Until Page Contains    INPUTS

    Click Text    BOTÕES DE RADIO
    Wait Until Page Contains    Escolha sua linguagem preferida

Go to Checkbox
    Open nav

    Click Text                  INPUTS
    Wait Until Page Contains    INPUTS

    Click Text                  CHECKBOX
    Wait Until Page Contains    Marque as techs que usam Appium    

Go to Short Click
    Open nav

    Click Text                  BOTÕES
    Wait Until Page Contains    BOTÕES

    Click Text                  CLIQUE SIMPLES
    Wait Until Page Contains    Botão clique simples

Go to Long Click
    Open nav

    Click Text                  BOTÕES
    Wait Until Page Contains    BOTÕES

    Click Text                  CLIQUE LONGO
    Wait Until Page Contains    Botão clique longo     

Go to Avengers List
    Open nav

    Click Text                  AVENGERS
    Wait Until Page Contains    AVENGERS

    Click Text                  LISTA
    Wait Until Page Contains    LISTA