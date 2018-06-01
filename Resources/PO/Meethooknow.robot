*** Settings ***
Library  AppiumLibrary
Library  String

*** Keywords ***

Navigates to the MeetHook now option
    wait until element is visible  xpath=//android.widget.TextView[@text='My Calendar']  timeout=15
    #swipe by percent    30      70      30      20
    wait until page contains element    xpath=//android.widget.TextView[@text='MeetHook Now!!']
    click element   xpath=//android.widget.TextView[@text='MeetHook Now!!']
    wait until page contains element    xpath=//android.widget.TextView[@text='MeetHook Now!!']
    go back


Labels verification
    element name should be      com.meethook.meethookandroid:id/layRatePerHour      Rate per hour
    #element text should be      com.meethook.meethookandroid:id/layRatePerHour      Rate per hour
    element name should be      com.meethook.meethookandroid:id/layDuration     Duration
    element name should be      com.meethook.meethookandroid:id/laySkills       Skills
    element name should be      com.meethook.meethookandroid:id/laySessionType      Session Type

Tap on "turn on meethook now" button
    click element   com.meethook.meethookandroid:id/tvMeethookNow
    sleep   5s

Check the error message when no rates
    element text should be   xpath=//android.widget.TextView[@text='Please enter your rate per hour.']
    ...     Please enter your rate per hour.



Enter rate in rate field
    click element   com.meethook.meethookandroid:id/etRatePerHour
    input text   com.meethook.meethookandroid:id/etRatePerHour   5
    go back

Check the error message when below rates enetered
    element text should be   xpath=//android.widget.TextView[@text='Rate cannot be less than $10.00 USD']
    ...     Rate cannot be less than $10.00 USD

Enter valid rate in rate field
    input text   com.meethook.meethookandroid:id/etRatePerHour   55
    #go back


Check the error message on duration field
    element text should be      xpath=//android.widget.TextView[@text='Please select the duration of time you are available.']
    ...     Please select the duration of time you are available.


Navigate to the duration screen
    click element       com.meethook.meethookandroid:id/etDuration
    wait until page contains element    com.meethook.meethookandroid:id/tvtitle

Select invalid duration
    swipe by percent    90      30       90      80     1000
    click element  xpath=//android.widget.CheckedTextView[@text='8']

Check the error message for lesser time selection
    element should contain text     xpath=//android.widget.TextView[@text='All MeetHook sessions must be at least 10 minutes.']
    ...     All MeetHook sessions must be at least 10 minutes.


Tap on Durtaion screen done button
    click element  com.meethook.meethookandroid:id/tvDone

Tap on Ok button of error popup and go back
    click element   com.meethook.meethookandroid:id/tvOkay
    go back


Select valid duration
    click element  xpath=//android.widget.CheckedTextView[@text='18']



Check O hr and 15 min selected
    element attribute should match      xpath=//android.widget.CheckedTextView[@text='15']    checked     true
    element attribute should match      xpath=//android.widget.CheckedTextView[@text='0']    checked     true
    go back


Check the error message on Skills field
    element text should be      com.meethook.meethookandroid:id/textinput_error     Please select a skill.

Navigates to the skills section of meethook now
    click element   com.meethook.meethookandroid:id/etSkills

Select a skills
    wait until page contains element    com.meethook.meethookandroid:id/tvtitle
    click element       xpath=//android.widget.CheckedTextView[@text='Acoustic Guitar']
#    ${skillavailable}   get element attribute       android.widget.CheckedTextView      text
#    log to console      ${skillavailable}
#    click element       xpath=//android.widget.CheckedTextView[@text='${skillavailable}']

Check the error message on Skills field1
    sleep   3s
    swipe by percent    50      70      50      40
    element text should be      com.meethook.meethookandroid:id/textinput_error     Please select session type.


Navigates to the session type screen
    click element   com.meethook.meethookandroid:id/laySessionType

Select a session type
    click element   xpath=//android.widget.CheckedTextView[@text='Advice']


Verify the message displayed when meethook on
    element text should be      xpath=//android.widget.TextView[@text='You are now currently available to Host Sessions on-demand! We are notifying all Users who have favorited your profile.']      You are now currently available to Host Sessions on-demand!
     ...    We are notifying all Users who have favorited your profile.

    click element         com.meethook.meethookandroid:id/tvOkay













    log to console  hid

