*** Settings ***
Documentation     Cenário 02: Pesquisar produto não existente
...               Acessar a página home do site Automation Practice
...               Digitar o nome do produto "itemNãoExistente" no campo de pesquisa
...               Clicar no botão de pesquisa
...               Conferir mensagem "itemNãoExistente"

Resource          Resources/main.resource

*** Keywords ***

Digitar o nome do produto no campo de pesquisa
    Log    Clicando em buscas    console=True
    Mouse Up    ${scene_02.search_input}
    Input Text    ${scene_02.search_input}    itemNãoExistente
    Press Keys    ${scene_02.search_input}    ENTER

Conferir lista de produtos
    Wait Until Element Is Visible    ${scene_02.search_element}    timeout=5

    ${status}    Run Keyword And Return Status    Wait Until Element Is Visible    ${scene_02.search_text}
    IF    ${status}
        ${text}    Get Element Attribute    ${scene_02.search_text}    innerText
        IF    '${text}' == 'Sorry, nothing found.'
            Log    Produto NAO Encontrado!    level=INFO    console=True
            
        ELSE
            Log    Produto Encontrado!    level=INFO    console=True
        END
    ELSE
        Log    Erro ao encontrar o elemento!    level=ERROR

    END

