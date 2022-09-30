*** Settings ***
Resource  ../variables.robot
Resource  PageConnection.robot


*** Keywords ***
Connect user
    [Tags]  new connect
    Clear Element Text  name=username
    
    Input Text  name=username  Admin

    Input Password  name=password  admin123

    Click Button  xpath=//*[@id="app"]/div[1]/div/div[1]/div/div[2]/div[2]/form/div[3]/button

    Wait Until Page Contains  Reports

Add user    

    Click Button  xpath=//*[@id="app"]/div[1]/div[2]/div[2]/div/div[2]/div[1]/button

    Wait Until Page Contains  Add Employee

    Sleep  2

    Clear Element Text  xpath=//*[@id="app"]/div[1]/div[2]/div[2]/div/div/form/div[1]/div[2]/div[1]/div[1]/div/div/div[2]/div[1]/div[2]/input

    Input Text  xpath=//*[@id="app"]/div[1]/div[2]/div[2]/div/div/form/div[1]/div[2]/div[1]/div[1]/div/div/div[2]/div[1]/div[2]/input  DUPONT

    Clear Element Text  xpath=//*[@id="app"]/div[1]/div[2]/div[2]/div/div/form/div[1]/div[2]/div[1]/div[1]/div/div/div[2]/div[2]/div[2]/input

    Input Text  xpath=//*[@id="app"]/div[1]/div[2]/div[2]/div/div/form/div[1]/div[2]/div[1]/div[1]/div/div/div[2]/div[2]/div[2]/input   Marlène

    Clear Element Text  xpath=//*[@id="app"]/div[1]/div[2]/div[2]/div/div/form/div[1]/div[2]/div[1]/div[1]/div/div/div[2]/div[3]/div[2]/input 

    Input Text  xpath=//*[@id="app"]/div[1]/div[2]/div[2]/div/div/form/div[1]/div[2]/div[1]/div[1]/div/div/div[2]/div[3]/div[2]/input   Dorcas

    Click Element  xpath=//*[@id="app"]/div[1]/div[2]/div[2]/div/div/form/div[1]/div[2]/div[2]/div/label/span

    Input Text  xpath=//*[@id="app"]/div[1]/div[2]/div[2]/div/div/form/div[1]/div[2]/div[3]/div/div[1]/div/div[2]/input  Marlène

    Click Element  xpath=//*[@id="app"]/div[1]/div[2]/div[2]/div/div/form/div[1]/div[2]/div[3]/div/div[2]/div/div[2]/div[2]/div[2]/div/label/span

    Input Password  xpath=//*[@id="app"]/div[1]/div[2]/div[2]/div/div/form/div[1]/div[2]/div[4]/div/div[1]/div/div[2]/input  Pa12345@

    Input Password  xpath=//*[@id="app"]/div[1]/div[2]/div[2]/div/div/form/div[1]/div[2]/div[4]/div/div[2]/div/div[2]/input  Pa12345@

    Click Button  xpath=//*[@id="app"]/div[1]/div[2]/div[2]/div/div/form/div[2]/button[2]

    Wait Until Page Contains  Success



