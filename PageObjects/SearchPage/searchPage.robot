*** Settings ***
Library          AppiumLibrary
Documentation    Search keywords related
#Variables        login-locators.yaml
Variables        search-locators.yaml

*** Keywords ***
#Input username
    #[Arguments]    ${username}
    #Input Text    ${input_username}    ${username}

#Input password 
    #[Arguments]    ${password}
    #Input Text    ${input_password}    ${password}

#Click sign in button on login page
    #Click Element    ${click_signin}

#Verify user successfully login
    #Wait Until Page Contains Element   ${success_signin}

Click search button header
    Click element      ${search_header}  

Input flight Number
    Wait Until Element Is Visible    ${input_flight} 
    [Arguments]    ${flight_number}
    Input Text     ${input_flight}    ${flight_number}

Click Button Search
    Wait Until Element Is Visible    locator=${search_flight}
    Click Element    ${search_flight}

Verify user failed search
    Wait Until Page Contains   ${error_message_search}

Verify Flight Number Exist
    Wait Until Element Is Visible    locator=${booked_data}
    Element Should Be Visible    locator=${booked_data}