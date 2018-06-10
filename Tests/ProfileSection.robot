*** Settings ***
Documentation  This is the test site for Help section
Resource      ../Resources/BasicApp.robot
Resource      ../Resources/Common.robot




Test Setup  launch and login in app
Test Teardown   Logout and close app


*** Test Cases ***
#TC_01_Validate user is able to navigates on profile section
#    [Documentation]  This test case is to validate user is able to navigates on profile section
#    [Tags]  smoke
#    Check the hamburger option available and tap
#    Check the profile option is available to tap
#
##TC_02_Validate user is able to update the personal info
##    [Documentation]  This is to check the personal info section is update
##    [Tags]  Smoke
##    Check the hamburger option available and tap
##    Check the profile option is available to tap
##    Navigates to my personal info screen
##    Naviagtes and clear the value of first name field
##    Input value in first name field
##    Tap on save button
#
#TC_03_validate the error message validation on first name field
#    [Documentation]  check the error message for the first name field
#    [Tags]  Smoke
#    Check the hamburger option available and tap
#    Check the profile option is available to tap
#    Navigates to my personal info screen
#    Naviagtes and clear the value of first name field
#    Tap on save button
#    Verify the error message when first name field is blank
#
#TC_04_validate the error message validation on last name field
#    [Documentation]  check the error message for the last name field
#    [Tags]  Smoke
#    Check the hamburger option available and tap
#    Check the profile option is available to tap
#    Navigates to my personal info screen
#    Naviagtes and clear the value of last name field
#    Verify the error message when last name field is blank
#
#
#TC_05_Aboutme section editable
#    [Documentation]  Check about me section is editable
#    [Tags]  Smoke
#    sleep   5s
#    check the hamburger option available and tap
#    Check the profile option is available to tap
#    swipe   500    1450    500    700     1000
#    Select About me section to edit
#    Tap on generic save button

TC_06_Validate user is able to add and delete already adeed card
    [Documentation]  Check credit card  is available in profile if not then add it, if already then delete and Addd again
    [Tags]  Smoke
    Check the hamburger option available and tap
    Check the profile option is available to tap
    wait till user navigates to the profile
    swipe   500    1450    500    700     1000
    sleep  5s
    Go to card screen whether card is present or not
    #Check if card is already added
    sleep   10s
    Tap on generic save button

TC_07_Add skills in what do you offer?
    [Documentation]  Checking user is able to add the skills and delete the skills if already added
    [Tags]  Smoke
    check the hamburger option available and tap
    check the profile option is available to tap
    wait till user navigates to the profile
    #swipe   500    1450    500    700     1000
    sleep   10s
    swipe by percent    50    90      50      10      1000
    sleep   10s
    Navigates to the skills section
    Check if skills is added then delete the skill and add again

TC_08_Validate user is able to Navigates to the Link screen
    [Documentation]  Checking user is able to navigates on link screen
    [Tags]  Smoke
    check the hamburger option available and tap
    check the profile option is available to tap
    wait till user navigates to the profile
    Navigates to Link screen section
    go back

TC_09_Validate the error message on add Link screen
    [Documentation]  Checking user is able to navigates on link screen
    [Tags]  Smoke
    check the hamburger option available and tap
    check the profile option is available to tap
    wait till user navigates to the profile
    Navigates to Link screen section
    Tap on add button at link screen
    check error messge below field

TC_10_Validate the user is able to add a link
    [Documentation]  Checking user is able to add a link on link screen
    [Tags]  Smoke
    check the hamburger option available and tap
    check the profile option is available to tap
    wait till user navigates to the profile
    Navigates to Link screen section
    Enter URL
    Navigate to the social platform screen
    select social platform
    sleep  3s
    Tap on add button at link screen
    check the added link


TC_10_Validate the user is able to navigates to the Media link
    [Documentation]  Checking user is able to add a link on link screen
    [Tags]  Smoke
    check the hamburger option available and tap
    check the profile option is available to tap
    wait till user navigates to the profile
    Navigates to the media section
    go back


TC_11_Validate user is able to add a media
    [Documentation]  Checking user is able to add a link on link screen
    [Tags]  Smoke
    check the hamburger option available and tap
    check the profile option is available to tap
    wait till user navigates to the profile
    Navigates to the media section
    Tap on the media add button
    select a image
    wait for image to add
    go back


















