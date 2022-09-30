*** Settings ***
Library  SeleniumLibrary
Resource  ../variables.robot

*** Keywords ***
Aller sur google
    Go To  ${google_url}

    Wait Until Page Contains  Google

Search OrangeHRM
    Clear Element Text  name=q 

    Input Text  name=q  orange hmr

    Mouse Down  xpath=/html/body/div[1]/div[2]/div/img

    Mouse Up  xpath=/html/body/div[1]/div[2]/div/img

    Click Element  xpath=/html/body/div[1]/div[3]/form/div[1]/div[1]/div[3]/center/input[1]

    Wait Until Page Contains  Images


Go to OrangeHRM

    Go To  ${orangehrm_url}

    Wait Until Page Contains  Login

