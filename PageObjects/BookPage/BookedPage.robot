*** Settings ***
Resource        ../base.robot
Variables    ../HomePage/home-locators.yaml
Variables        booked-locators.yaml

*** Keywords ***
Open Book Button
    Click Element    ${book_button_home}

Verify Booking Page
    Wait Until Element Is Visible    ${from_city}
    Wait Until Element Is Visible    ${to_city}
    Wait Until Element Is Visible    ${class}

Click One Way
    Click Element    ${one_way}

Click Round Trip
    Click Element    ${round_trip}

Select City
    [Arguments]    ${from}    ${to}
    Click Element    ${from_city}
    Sleep    1s
    Click Element    ${from}

    Click Element    ${to_city}
    Sleep    1s
    Click Element    ${to}

Select Class
    [Arguments]    ${class_type}
    Click Element    ${class}
    Sleep    1s
    Click Element    ${class_type}

Pick Dates
    Click Element    ${start_date}
    Sleep    1s
    Click Element    ${pick_date1}
    Click Element    ${ok_date}

    Click Element    ${end_date}
    Sleep    1s
    Click Element    ${pick_date2}
    Click Element    ${ok_date}

Choose Pack
    [Arguments]    ${type_pack}
    Click Element    $${type_pack}

Check Box Day
    Click Element    ${cekbox_day}

Book Button
    Click Element    ${book_button}

Confirm Price
    [Arguments]    ${price}
    Wait Until Element Is Visible    ${verify_price_page}
    Click Element    ${price}
    Click Element    ${confirm_button}

Verify Booking
    Wait Until Element Is Visible    ${verify_booked}
    Element Text Should Be    ${verify_booked}    ${text_booked}


