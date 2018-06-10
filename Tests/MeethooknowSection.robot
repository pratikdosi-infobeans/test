*** Settings ***
Documentation  This is the test site for MettHook now section
Resource      ../Resources/BasicApp.robot
Resource      ../Resources/Common.robot


Test Setup  launch and login in app
Test Teardown   Logout and close app


*** Test Cases ***

TC_01_Validate user is able to navigates on Meethook now screen
    check the hamburger option available and tap
    Navigates to the MeetHook now section


TC_02_Verifiy all the fields presents on screen
    [Documentation]  This test is to verify all the fields available on meethook now screen
    [Tags]  smoke
    check the hamburger option available and tap
    Navigates to the MeetHook now section
    Labels verification

TC_03_Validate the error message when user not enter rates in field
    [Documentation]  This test is to verifiy the error message when no rates has been entered
    [Tags]  Smoke
    check the hamburger option available and tap
    Navigates to the MeetHook now section
    Tap on "turn on meethook now" button
    Verify the error message when user enters no rates

TC_04_Validate when user enter the wrong rates in rate field (Min length validation)
    [Documentation]  This test is to verifiy the error message when minimum rates validtaion
    [Tags]  Smoke
    check the hamburger option available and tap
    Navigates to the MeetHook now section
    Enter rate below min length and tap save
    Verify the error message when user enters low rates

TC_05_Validate the error message when user not selects duration field
    [Documentation]  This test is to verify the error message when no duration has been selected
    [Tags]  Smoke
    check the hamburger option available and tap
    Navigates to the MeetHook now section
    Enter valid rate in rate field
    go back
    Tap on "turn on meethook now" button
    Verify the error message on duration field

TC_06_Validate that by default 0 and 15 min selected
    [Documentation]  This test is to verify that by default values on duration screen
    [Tags]  Smoke
    check the hamburger option available and tap
    Navigates to the MeetHook now section
    Navigates to the duration screen
    Check O hr and 15 min selected


TC_07_Validate that user not able to create MeetHook now less than 10 min
    [Documentation]  This test is to verify the error message when no skills has been selected
    [Tags]  Smoke
    check the hamburger option available and tap
    Navigates to the MeetHook now section
    Enter valid rate in rate field
    Navigates to the duration screen
    Select invalid duration
    Tap on Durtaion screen done button
    Check the error message for lesser time selection
    Tap on Ok button of error popup and go back



TC_08_Validate the error message on select skills field (No skill selected)
    [Documentation]  This test is to verify the error message when no skills has been selected
    [Tags]  Smoke
    check the hamburger option available and tap
    Navigates to the MeetHook now section
    Enter valid rate in rate field
    Navigates to the duration screen
    Select valid duration
    Tap on Durtaion screen done button
    Tap on "turn on meethook now" button
    Check the error message on Skills field

TC_09_Validate the error message on select session type field (No session type selected)
    [Documentation]  This test is to verify the error message when session type has not been selected
    [Tags]  Smoke
    check the hamburger option available and tap
    Navigates to the MeetHook now section
    Enter valid rate in rate field
    Navigates to the duration screen
    Select valid duration
    Tap on Durtaion screen done button
    Navigates to the skills section of meethook now
    Select a skills
    Tap on "turn on meethook now" button
    Check the error message on Skills field1


TC_10_Validate that user is able to successfully create a Meethook now session
    [Documentation]  This test is to validate user is able to create a meethook now session
    [Tags]  Smoke
    check the hamburger option available and tap
    Navigates to the MeetHook now section
    Enter valid rate in rate field
    Navigates to the duration screen
    Select valid duration
    Tap on Durtaion screen done button
    Navigates to the skills section of meethook now
    Select a skills
    Navigates to the session type screen
    Select a session type
    Tap on "turn on meethook now" button
    Verify the message displayed when meethook on









