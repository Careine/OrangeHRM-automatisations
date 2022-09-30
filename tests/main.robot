*** Settings ***
Resource  ../resources/common.robot
Resource  ../resources/PO/PageGoogle.robot
Resource  ../resources/PO/PageConnection.robot
Resource  ../resources/PO/PageSaveUser.robot



Suite Setup  common.Begin Test Web
Suite Teardown  common.Close Test Web

*** Test Cases ***
Accéder à google
    [Tags]  TC1
    PageGoogle.Aller sur google
    PageGoogle.Search OrangeHRM
    PageGoogle.Go to OrangeHRM

Login test
    [Tags]  Login
    PageConnection.Connect with username exist
    PageConnection.Connect witn username not exist
    PageConnection.Forgot password

Save user
    [Tags]  Save
    PageSaveUser.Connect user
    PageSaveUser.Add user
