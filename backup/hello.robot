*** Settings ***
Library    hello.py


*** Test Cases ***
Retorna mensagem do arquivo .py
    ${mensagem}=    Hello Robot    Gabriel
    Log To Console    ${mensagem}
    Should Be Equal    ${mensagem}    Olá Gabriel

