*** Settings ***
Documentation     Cenário 01: Procurando por produto
...               Acessar a página home do site Automation Practice
...               Digitar o nome do produto "HTML" no campo de pesquisa
...               Clicar no botão de pesquisa
...               Conferir se o produto "Blouse" foi listado no site
Resource          Resources/main.resource

*** Keywords ***

Digitar o nome do produto HTML no campo de pesquisa
    Log    Iniciando a busca do pruduto HTML    console=True
    Mouse Up    ${scene_01.search_input}
    Input Text    ${scene_01.search_input}    HTML
    Press Keys    ${scene_01.search_input}    ENTER

Conferir se o produto foi listado
    Log    Verificando se o produto foi listado    console=True

    Wait Until Element Is Visible    ${scene_01.search_element}    timeout=5

    FOR    ${index}    IN RANGE    1    99
        ${text_result}    Format String    ${scene_01.search_text}    index=${index}
        ${status}    Run Keyword And Return Status    Wait Until Element Is Visible    ${text_result}
        IF    ${status}
            ${text}    Get Element Attribute    ${text_result}    innerText
            IF    '${text}' == 'Blouse'
                Log    Blouse Encontrado!    level=INFO    console=True
                Exit For Loop
            ELSE
                Log    Blouse NAO Encontrado!    level=INFO    console=True
            END
        ELSE
            Exit For Loop
        END
    END


