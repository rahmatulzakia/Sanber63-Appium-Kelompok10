*** Settings ***
Documentation    Login keywords related
Variables        login-locators.yaml

*** Keywords ***
Input username
    [Arguments]    ${username}
    Input Text    ${input_username}    ${username}

Input password 
    [Arguments]    ${password}
    Input Text    ${input_password}    ${password}

Click sign in button on login page
    Click Element    ${click_signin}

Verify user successfully login
    Wait Until Page Contains Element   ${success_signin}

Verify user failed login
    Wait Until Page Contains Element    ${failed_signin}