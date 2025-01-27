*** Settings ***
Documentation    Home page keywords related
Variables        home-locators.yaml

***Keywords***
Verify Home Screen
    Wait Until Element Is Visible    
    ...    locator=${home_screen}

Click sign in button 
    Click Element     locator=${login_button}
    Wait Until Page Contains Element    locator=${signin_element}