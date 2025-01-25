*** Settings ***
Resource                ../base/base.robot
Variables               bookflightpage_locators.yaml

*** Keywords ***
Verify Booking Page opened 
    Wait Until Element Is Visible    ${fromcity_dopdown_bookFlightPage}
    Wait Until Element Is Visible    ${tocity_dropdown_bookFlightPage}
    Wait Until Element Is Visible    ${class_dropdown_bookFlightPage}

Select Chicago as the departure city 
    Click Element    ${fromcity_dopdown_bookFlightPage}
    Wait Until Element Is Visible    ${chicago_fromcity_dropdown_bookFlightPage}
    Click Element    ${chicago_fromcity_dropdown_bookFlightPage}

Verify Chicago is successfully selected as the departure city
    Wait Until Element Is Visible    ${chicago_fromcity_dropdown_bookFlightPage}

Select Paris as the destination city 
    Click Element    ${tocity_dropdown_bookFlightPage}
    Wait Until Element Is Visible    ${paris_tocity_dropdown_bookFlightPage}
    Click Element    ${paris_tocity_dropdown_bookFlightPage}

Verify Paris is successfully selected as the destination city
    Wait Until Element Is Visible    ${paris_tocity_dropdown_bookFlightPage}

Select business as the flight class
    Click Element    ${class_dropdown_bookFlightPage}
    Wait Until Element Is Visible    ${business_class_dropdown_bookFlightPage}
    Click Element    ${business_class_dropdown_bookFlightPage}

Verify business is successfully selected as the flight class
    Wait Until Element Is Visible    ${business_class_dropdown_bookFlightPage}

Select start date 
    Click Element    ${start_date_bookFlightPage}
    Wait Until Element Is Visible    ${01agustus2019_bookFlightPage}
    Click Element    ${01agustus2019_bookFlightPage}
    Click Element    ${oke_button_bookFlightPage}

Select end date 
    Click Element    ${end_date_bookFlightPage}
    Wait Until Element Is Visible    ${09agustus2019_bookFlightPage}
    Click Element    ${09agustus2019_bookFlightPage}
    Click Element    ${oke_button_bookFlightPage}
    
Select 'Flight' as booking preference 
    Click Element    ${flight_only_radiobutton_bookFlightPage}

Click Book button 
    Click Element    ${book_button_bookFlightPage}

Verify Flight Confirmation Page Opened  
    Wait Until Element Is Visible    ${confirm_button_bookFlightPage}

Click Confirm Button 
    Click Element    ${confirm_button_bookFlightPage}

Verify Flight is successfully booked
    Wait Until Element Is Visible    ${flight_booked_text_bookFlightPage}