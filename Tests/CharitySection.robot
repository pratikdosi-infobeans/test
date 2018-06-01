*** Settings ***
Documentation  Test suite for Charity section
Resource    ../Resources/BasicApp.robot
Resource    ../Resources/Common.robot

Test Setup  launch and login in app
Test Teardown   Logout and close app

*** Test Cases ***

TC_11_Navigate to the charity section
    [Documentation]    Navigates to the charity section
    [Tags]  Smoke
    check the hamburger option available and tap
    check the charity option available

TC_12_Update the charity value
    [Documentation]     Update the vlaue and percentage
    [Tags]  Smoke
    check the hamburger option available and tap
    Go to the charity section and update the charity value
    Tap on charity save button

TC13_Validate the charity percentage field validation
    [Documentation]  Check whenuser enter the empty percentage value and try to save it
    [Tags]  Smoke
    check the hamburger option available and tap
    Navigates to the charity section inside
    Navigates to charity percentage field and clear value
    Tap on charity save button
    Verfiy the error message on charity percentage field


TC_14_Validate the charity percentage field validation 2
    [Documentation]  Check whenuser enter the percentage value which not falls in field validation error message should displayed
    [Tags]  Smoke
    check the hamburger option available and tap
    Navigates to the charity section inside
    Navigates to charity percentage field and clear value
    Enter charity percentage more then 100
    Tap on charity save button
    Verfiy the error message on charity percentage field2




TC15Validate the charity value get updated
    [Documentation]  This test validate whether user is able to update charity percentage
    [Tags]   smoke
    check the hamburger option available and tap
    Navigates to the charity section inside
    Navigates to charity percentage field and clear value
    Input charity percent in 2 digit
    Tap on charity save button
    Check same percent value get updated



TC16Validate the donate feature get off
    [Documentation]  This test to check the donate feature get off
    [Tags]  smoke
    check the hamburger option available and tap
    Navigates to the charity section inside
    turn off the donate button
    Tap on charity save button
    check whether it get off











