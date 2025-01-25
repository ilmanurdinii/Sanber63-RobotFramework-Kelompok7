*** Settings ***
Resource         ../pageObjects/homePageObject/homePage.robot
Resource         ../pageObjects/loginPageObject/loginPage.robot
Resource         ../pageObjects/bookFlightPageObject/bookFlightPage.robot
Test Setup       Run Keywords    
...              Open Flight Application 
...              AND Login With Valid Credentials
...              AND Verify User Is Logged In
...              AND Click Book Menu On Home Page
Test Teardown    Close Flight Application

*** Variables ***
${VALID_EMAIL}               support@ngendigital.com
${VALID_PASSWORD}            abc123

*** Test Cases ***
User should be able to open Booking Page after successfully logged-in
    Verify Booking Page opened

User should be able to click and select departure city
    Verify Booking Page opened
    Select Chicago as the departure city 
    Verify Chicago is successfully selected as the departure city

User should be able to click and select destination city
    Verify Booking Page opened
    Select Paris as the destination city 
    Verify Paris is successfully selected as the destination city

User should be able to click and select flight class 
    Verify Booking Page opened
    Select business as the flight class
    Verify business is successfully selected as the flight class

User should be able to select start date and end date for the flight 
    Verify Booking Page opened
    Select start date 
    Select end date 

User should be able to complete all fields to make a flight booking
    Verify Booking Page opened
    Select Chicago as the departure city 
    Verify Chicago is successfully selected as the departure city
    Select Paris as the destination city 
    Verify Paris is successfully selected as the destination city
    Select business as the flight class
    Verify business is successfully selected as the flight class
    Select start date 
    Select end date 
    Select 'Flight' as booking preference
    Click Book button
    Verify Flight Confirmation Page Opened

User should be able to complete booking process by clicking confirm button on confirmation page
    Verify Booking Page opened
    Select Chicago as the departure city 
    Verify Chicago is successfully selected as the departure city
    Select Paris as the destination city 
    Verify Paris is successfully selected as the destination city
    Select business as the flight class
    Verify business is successfully selected as the flight class
    Select start date 
    Select end date 
    Select 'Flight' as booking preference
    Click Book button
    Verify Flight Confirmation Page Opened
    Click Confirm Button
    Verify Flight is successfully booked