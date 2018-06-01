*** Settings ***
Documentation  This is the test site for calendar section
Resource      ../Resources/BasicApp.robot
Resource      ../Resources/Common.robot


Test Setup  launch and login in app
Test Teardown   Logout and close app

*** Test Cases ***

TC_Validate user is able to navigates on calendar screen
    check the hamburger option available and tap
    Navigates to the Calendar section

TC_validate the error message on start date field
    check the hamburger option available and tap
    Navigates to the Calendar section
    Navigates to create schedule screen
    Tap on the Calendar save button
    Check error message on start date field

TC_validate the error message on start time field
    check the hamburger option available and tap
    Navigates to the Calendar section
    Navigates to create schedule screen
    Navigates to start date screen
    Select tomorrow date in start date
    TAP ON PROCEED BUTTON
    Tap on the Calendar save button
    Check error message on start time field


TC_validate the error message on start time field
    check the hamburger option available and tap
    Navigates to the Calendar section
    Navigates to create schedule screen
    Navigates to start date screen
    Select tomorrow date in start date
    TAP ON PROCEED BUTTON
    Navigates to start time screen


    Tap on the Calendar save button
    Check error message on start date field