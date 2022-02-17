*** Settings ***
Documentation    Biblioteca responsável por abrir o website e configurar o webdriver

Resource    Resources/main.resource

*** Keywords ***
Fechar Navegador
    Close All Browsers

Abrir Navegador
    [Documentation]    Abre o navegador maximizado.

    [Arguments]    ${URL}
    ${prefs}    Create Dictionary    plugins.always_open_pdf_externally=${True}
    ${options}    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys
    Call Method    ${options}    add_experimental_option    prefs    ${prefs}
    Call Method    ${options}    add_argument    start-maximized
    Call Method    ${options}    add_argument    disable-web-security
    Call Method    ${options}    add_argument    disable-notifications
    Call Method    ${options}    add_argument    disable-logging
    
    ${BrowserOpened}    Run Keyword And Return Status    Open Browser    ${URL}    Chrome    options=${options}

    Set Selenium Timeout    40
    
    [return]    ${BrowserOpened}