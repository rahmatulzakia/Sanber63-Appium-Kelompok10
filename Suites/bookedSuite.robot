*** Settings ***
Resource        ../PageObjects/base.robot
Resource        ../PageObjects/LoginPage/LoginPage.robot
Resource        ../PageObjects/BookPage/BookedPage.robot
Test Setup    Run Keywords    
...    Open Flight Application  
...    AND Verify Home Screen

Test Teardown    Close Flight Application

*** Test Cases ***
Test Case 1: Booking One-Way Flight
    Open Book Button
    Verify Booking Page
    Click One Way
    Select City    ${chicago}    ${london}
    Select Class    ${economy}
    Pick Dates
    Check Box Day
    Book Button
    Confirm Price    ${price1}
    Verify Booking

Test Case 2: Booking Round Trip Flight
    Open Book Button
    Verify Booking Page
    Click Round Trip
    Select City    ${toronto}    ${paris}
    Select Class    ${first}
    Pick Dates
    Check Box Day
    Book Button
    Confirm Price    ${price2}
    Verify Booking

Test case 3: Booking One-Way Flight With Out Input Date
    Open Book Button
    Verify Booking Page
    Click Round Trip
    Select City    ${toronto}    ${paris}
    Select Class    ${business}
    Check Box Day
    Book Button
    Confirm Price    ${price3}
    Verify Booking
    
Test Case 4: Booking Round Trip Flight With Out Input Date
    Open Book Button
    Verify Booking Page
    Click Round Trip
    Select City    ${chicago}    ${ottawa}
    Select Class    ${business}
    Check Box Day
    Book Button
    Confirm Price    ${price1}
    Verify Booking
