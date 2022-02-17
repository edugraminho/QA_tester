*** Settings ***
Documentation    Arquivo de recursos
Resource    Resources/main.resource


*** Tasks ***
Abrir Browser
    [Documentation]    Task que abre o browser e retorna seu status

    ${status}    Run Keyword And Return Status    Abrir Navegador    http://practice.automationtesting.in/

    IF    ${status}

        Log    Deu boa    level=INFO

    ELSE
        Log    Deu ruim    level=INFO
        
    END
    
Finaliza Processo
    [Documentation]    Task de finalização do robô

    #TODO limpar Pasta de Downloads
    Log    Finalizando Processo!    level=INFO
    Fechar Navegador
