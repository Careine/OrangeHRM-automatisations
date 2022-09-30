*** Settings ***
Resource  PageGoogle.robot


*** Keywords ***
Connect with username exist
    [Tags]  Connect
    Clear Element Text  name=username
    
    Input Text  name=username  Admin

    Input Password  name=password  admin123

    Click Button  xpath=//*[@id="app"]/div[1]/div/div[1]/div/div[2]/div[2]/form/div[3]/button

    Wait Until Page Contains  Reports

    Click Element  xpath=//*[@id="app"]/div[1]/div[1]/header/div[1]/div[2]/ul/li/span

    Click Element  xpath=//*[@id="app"]/div[1]/div[1]/header/div[1]/div[2]/ul/li/ul/li[4]/a

    Wait Until Page Contains  Admin

Connect witn username not exist
    [Tags]  Not connect

    Clear Element Text  name=username
    
    Input Text  name=username  Admin

    Input Password  name=password  admin

    Click Button  xpath=//*[@id="app"]/div[1]/div/div[1]/div/div[2]/div[2]/form/div[3]/button

    Wait Until Page Contains  Invalid credentials

Forgot password
    [Tags]  Forgot my password

    Click Element  xpath=//*[@id="app"]/div[1]/div/div[1]/div/div[2]/div[2]/form/div[4]/p

    Wait Until Page Contains  Reset Password

    Input Text  name=username  Admin

    Click Button  xpath=//*[@id="app"]/div[1]/div[1]/div/form/div[2]/button[2]

    Wait Until Page Contains  Reset Password link sent successfully

    Go Back

    Click Button  xpath=//*[@id="app"]/div[1]/div[1]/div/form/div[2]/button[1]

    Wait Until Page Contains  Login







   




