*** Settings ***
Documentation  This is the test site for calendar section
Resource      ../Resources/BasicApp.robot
Resource      ../Resources/Common.robot


Test Setup  launch and login in app
Test Teardown   Logout and close app

*** Test Cases ***

#TC_01_Validate user is able to navigates on calendar screen
#    [Documentation]    This test is to verfiy the navigation on calendar screen
#    [Tags]  Smoke
#    check the hamburger option available and tap
#    Navigates to the Calendar section
#
#TC_02_validate the error message on start date field
#    [Documentation]    This test is to verfiy the error message on start date field
#    [Tags]  Smoke
#    check the hamburger option available and tap
#    Navigates to the Calendar section
#    Navigates to create schedule screen
#    Tap on the Calendar save button
#    Check error message on start date field
#
#TC_03_validate the error message on start time field
#    [Documentation]    This test is to verfiy the error message on start time field
#    [Tags]  Smoke
#    check the hamburger option available and tap
#    Navigates to the Calendar section
#    Navigates to create schedule screen
#    Navigates to start date screen
#    Select tomorrow date in start date
#    TAP ON PROCEED BUTTON
#    Tap on the Calendar save button
#    Check error message on start time field


#TC_04_validate the error message on End time field
#    [Documentation]    This test is to verfiy the error message on end  time field
#    [Tags]  Smoke
#    check the hamburger option available and tap
#    Navigates to the Calendar section
#    Navigates to create schedule screen
#    Navigates to start date screen
#    Select tomorrow date in start date
#    TAP ON PROCEED BUTTON
#    Navigates to start time screen
#    Select the start time after 2 hr
#    Tap on the OK button at time picker
#    Tap on the Calendar save button
#    check error message on end time field

#TC_05_validate the error message on select skills screen
#    [Documentation]    This test is to verfiy the error message on select skills screen
#    [Tags]  Smoke
#    check the hamburger option available and tap
#    Navigates to the Calendar section
#    Navigates to create schedule screen
#    Navigates to start date screen
#    Select tomorrow date in start date
#    TAP ON PROCEED BUTTON
#    Navigates to start time screen
#    Select the start time after 2 hr
#    Tap on the OK button at time picker
#    Navigates to end time screen
#    Select end time after 1 hr of start time
#    Tap on the OK button at time picker
#    Tap on the Calendar save button
#    check error message on select skills field
#
#TC_06_validate the error message on session type screen
#    [Documentation]    This test is to verfiy the error message on session type screen
#    [Tags]  Smoke
#    check the hamburger option available and tap
#    Navigates to the Calendar section
#    Navigates to create schedule screen
#    Navigates to start date screen
#    Select tomorrow date in start date
#    TAP ON PROCEED BUTTON
#    Navigates to start time screen
#    Select the start time after 2 hr
#    Tap on the OK button at time picker
#    Navigates to end time screen
#    Select end time after 1 hr of start time
#    Tap on the OK button at time picker
#    Navigates to the skills section of create schedule
#    select a skills in calendar
#    Tap on the Calendar save button
#    check error message on seesion type screen

#TC_07_validate the error message on time interval screen
#    [Documentation]    This test is to verfiy the error message on time interval screen
#    [Tags]  Smoke
#    check the hamburger option available and tap
#    Navigates to the Calendar section
#    Navigates to create schedule screen
#    Navigates to start date screen
#    Select tomorrow date in start date
#    TAP ON PROCEED BUTTON
#    Navigates to start time screen
#    Select the start time after 2 hr
#    Tap on the OK button at time picker
#    Navigates to end time screen
#    Select end time after 1 hr of start time
#    Tap on the OK button at time picker
#    Navigates to the skills section of create schedule
#    select a skills in calendar
#    Calendar.Navigates to the session type screen
#    select a session type
#    tap on the calendar save button
#    Check the error message on time interval screen
#
#
#TC_08_validate the error message when user selects same time in start and end time field
#    [Documentation]    This test is to verfiy the error message on time interval screen
#    [Tags]  Smoke
#    check the hamburger option available and tap
#    Navigates to the Calendar section
#    Navigates to create schedule screen
#    Navigates to start date screen
#    Select tomorrow date in start date
#    TAP ON PROCEED BUTTON
#    Navigates to start time screen
#    Select the same start and end time
#    Tap on the OK button at time picker
#    Navigates to end time screen
#    Select the same start and end time
#    Tap on the OK button at time picker
#    Navigates to the skills section of create schedule
#    select a skills in calendar
#    Calendar.Navigates to the session type screen
#    select a session type
#    tap on the calendar save button
#    Check the error message of same time
#


TC_09_validate the user should successful create a schdeule
    [Documentation]    This test is to verfiy the error message on time interval screen
    [Tags]  Smoke
    check the hamburger option available and tap
    Navigates to the Calendar section
    Navigates to create schedule screen
    Navigates to start date screen
    Select tomorrow date in start date
    TAP ON PROCEED BUTTON
    Navigates to start time screen
    Select the start time after 2 hr
    Tap on the OK button at time picker
    Navigates to end time screen
    Select end time after 1 hr of start time
    Tap on the OK button at time picker
    Navigates to the skills section of create schedule
    select a skills in calendar
    Calendar.Navigates to the session type screen
    select a session type
    Navigates to the time interval screen
    Select the Entire slot
    tap on the calendar save button
#     #Validate
#    Check the text present in current week
