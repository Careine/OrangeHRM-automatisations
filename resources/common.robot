*** Settings ***
Library  SeleniumLibrary
Resource  variables.robot

*** Keywords ***
Begin Test Web
    Open Browser  about:blank  ${browser}

    Maximize Browser Window

Close Test Web
    Close Browser



