*** Settings ***
Library     AppiumLibrary
Library     String

*** Keywords ***


Navigates to the help option
    wait until element is visible  xpath=//android.widget.TextView[@text='My Calendar']  timeout=15
    swipe by percent    30      70      30      20
    wait until page contains element    xpath=//android.widget.TextView[@text='Help']
    click element   xpath=//android.widget.TextView[@text='Help']
    wait until page contains element    xpath=//android.widget.TextView[@text='Help']
    go back



