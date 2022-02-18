*** Settings ***
Documentation     Cenário 03: Listar Produtos
...               Acessar a página home do site Automation Practice
...               Clique no menu Shop
...               Passar o mouse por cima da categoria "HTML" no menu lateral esquerdo de categorias
...               Clicar na sub categoria "HTML"
...               Conferir se o produto "Thinking in HTML"    esta presente
Resource          Resources/main.resource

*** Keywords ***
Clicar no menu Shop
    Log    Clicando em Shop no menu    console=True
    Click Element    ${scene_03.shop_btn}
    Wait Until Element Is Visible    ${scene_03.shop_element}    timeout=5

Clicar na subcategoria HTML
    Log    Clicando na subcategoria HTML   console=True
    Mouse Up    ${scene_03.html_btn}
    Click Element    ${scene_03.html_btn}

Verificar se o produto esta presente
    Log    Verificando se o produto digitado foi listado   console=True

    Wait Until Element Is Visible    ${scene_03.search_element}    timeout=5
    FOR    ${index}    IN RANGE    1    99
        ${text_result}    Format String    ${scene_03.search_product}    index=${index}
        ${status}    Run Keyword And Return Status    Wait Until Element Is Visible    ${text_result}
        IF    ${status}
            ${text}    Get Element Attribute    ${text_result}    innerText
            IF    '${text}' == 'Thinking in HTML'
                Log    Thinking in HTML Encontrado!    level=INFO    console=True
                Exit For Loop
            ELSE
                Log    Thinking in HTML NAO Encontrado!
            END
        ELSE
            Exit For Loop
        END
    END
