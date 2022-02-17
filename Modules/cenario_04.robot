*** Settings ***
Documentation     Cenário 04: Adicionar Cliente
...               Acessar a página home do site Automation Practice
...               Clicar em "My account"
...               Faça um novo cadastrar no box "Register"
...               Informar um e-mail válido
...               Clicar em "Register"
...               Preencher os dados obrigatórios
...               Submeter cadastro
...               Conferir se o cadastro foi efetuado com sucesso

Resource          Resources/main.resource

*** Keywords ***
Clicar no menu My Account
    Log    Clicando em My account    console=True
    Click Element    ${scene_04.myacc_btn}
    Wait Until Element Is Visible    ${scene_04.page_element}    timeout=5

Cadastrar um novo usuario
    Log    Registrando um novo Usuario

    Input Text    ${scene_04.email_input}    edugramfinho@gmail.com
    Press Keys    ${scene_04.password_input}    automacoesemrobotframework
    Press Keys    ${scene_04.password_input}    TAB
    Press Keys    ${scene_04.password_input}    TAB

    ${status}    Run Keyword And Return Status    Wait Until Element Is Visible    ${scene_04.submit_btn}    timeout=3
    
    IF    ${status}
        Click Element    ${scene_04.submit_btn}
    ELSE
        Press Keys    ${scene_04.password_input}    TAB
        Click Element    ${scene_04.submit_btn}

    END

Conferir se o cadastro foi efetuado com sucesso
    ${status}    Run Keyword And Return Status    Wait Until Element Is Visible    ${scene_04.check_record}    timeout=5

    IF    ${status}
        Log    Cadastro Realizado com Sucesso!    console=True
    ELSE
        Log    Erro ao Realizar o Cadastro!    console=True
        
    END