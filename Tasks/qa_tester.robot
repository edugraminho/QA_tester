*** Settings ***
Documentation    Arquivo de recursos
Resource    Resources/main.resource


*** Tasks ***
Abrir Browser
    [Documentation]    Task que abre o browser e retorna seu status
    ${status}    Run Keyword And Return Status    Abrir Navegador    http://practice.automationtesting.in/

    IF    ${status}
        Log    WebPage aberta com sucesso    level=INFO
        Set Next Task    Cenario 01
    ELSE
        Log    Erro ao abrir a Webpage    level=INFO    console=True
        Set Next Task    Finaliza Processo
    END
    
Cenario 01
    [Documentation]    Task responsavel por verificar se o produto digitado foi listado
    Log    Iniciando o processo de busca de Produtos    level=INFO    console=True
    Verificar se pagina aberta com sucesso
    Digitar o nome do produto HTML no campo de pesquisa
    Conferir se o produto foi listado

    Fechar Janela

    Set Next Task    Cenario 02


Cenario 02
    [Documentation]    Task responsavel por pesquisar produtos nao existentes
    Log    Iniciando o processo de busca de Produtos nao Existentes   level=INFO    console=True

    Abrir Navegador    http://practice.automationtesting.in/
    Verificar se pagina aberta com sucesso
    Digitar o nome do produto no campo de pesquisa
    Conferir lista de produtos

    Fechar Janela

    Set Next Task    Cenario 03
    

Cenario 03
    [Documentation]    Task responsavel por verificar se o produto digitado foi listado
    Log    Iniciando o processo de busca de Produtos    level=INFO    console=True
    Abrir Navegador    http://practice.automationtesting.in/
    Clicar no menu Shop
    Clicar na subcategoria HTML
    Verificar se o produto esta presente
    Fechar Janela

    Set Next Task    Cenario 04
    

Cenario 04
    [Documentation]    Task responsavel por verificar se o produto digitado foi listado
    Log    Iniciando o processo de busca de Produtos    level=INFO    console=True

    Abrir Navegador    http://practice.automationtesting.in/

    Clicar no menu My Account
    Cadastrar um novo usuario
    Conferir se o cadastro foi efetuado com sucesso
    
    Set Next Task    Finaliza Processo

Finaliza Processo
    [Documentation]    Task de finalização do robô

    #TODO limpar Pasta de Downloads
    Log    Finalizando Processo!    level=INFO    console=True
    Fechar Navegador
