*** Settings ***
Documentation  This is the test site for calendar section
Resource      ../Resources/BasicApp.robot
Resource      ../Resources/Common.robot


Test Setup  launch and login in app
Test Teardown   Logout and close app

*** Test Cases ***


TC_01_Validate user is able to navigates on fav section
    Navigates to the favorites section