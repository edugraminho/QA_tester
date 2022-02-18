*** Settings ***
Library         SeleniumLibrary
Library         String
Library         Collections
Library         OperatingSystem
Library         RPA.Tasks


#### Keywords ####
Resource    Modules/abrir_navegador.robot
Resource    Modules/cenario_01.robot
Resource    Modules/cenario_02.robot
Resource    Modules/cenario_03.robot
Resource    Modules/cenario_04.robot

#### Locators ####
Resource    Resources/navegacao.resource

