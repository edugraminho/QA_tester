*** Settings ***
Library         SeleniumLibrary
Library         String
Library         Collections
Library         OperatingSystem
Library         DateTime
Library         RPA.Tasks


#### Custom Libraries ####
Library    Libraries/utils.py

#### Keywords ####
Resource    Modules/abrir_navegador.robot

#### Locators ####
Resource    Resources/navegacao.resource
