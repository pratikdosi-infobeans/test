*** Settings ***
Library     AppiumLibrary
Library     String
#Library     DateTime
Library     robot.libraries.DateTime



*** Keywords ***

Navigates to the Calendar section
    wait until element is visible  xpath=//android.widget.TextView[@text='My Calendar']
    #swipe by percent    30      70      30      20
    wait until page contains element    xpath=//android.widget.TextView[@text='My Calendar']
    click element   xpath=//android.widget.TextView[@text='My Calendar']
    wait until page contains element    xpath=//android.widget.TextView[@text='Calendar']



check add button is visisble
    page should contain element     com.meethook.meethookandroid:id/btnCalendarEvent

Tap on add button
    click element       com.meethook.meethookandroid:id/btnCalendarEvent

Navigates to create schedule screen
    ${addButtonpresent}     run keyword and return status       check add button is visisble
    log to console      ${addButtonpresent}
    run keyword if      '${addButtonpresent}'=='True'    Tap on add button
    run keyword if      '${addButtonpresent}'=='False'    tap on add button


Check error message on start date field
    element text should be      com.meethook.meethookandroid:id/textinput_error     Please select start date.
    go back



Tap on the Calendar save button
    click element   com.meethook.meethookandroid:id/btnSave

Navigates to start date screen
    click element   com.meethook.meethookandroid:id/etStartDate

Select tomorrow date in start date
    ${Date}     get current date      result_format='%Y-%m-%d %H:%M:%S.%f'
    log to console  ${Date}
    ${Date1} =      Add Time To Date    ${Date}   1 days    result_format='%d'
    log to console      ${Date1}
    swipe by percent        50      75      50      40
    click element   xpath=//android.widget.TextView[@text=${Date1}]


TAP ON PROCEED BUTTON
    CLICK ELEMENT  com.meethook.meethookandroid:id/tvProceed


Check error message on start time field
    element text should be      com.meethook.meethookandroid:id/textinput_error     Please select start time.
    go back

Navigates to start time screen
    click element   com.meethook.meethookandroid:id/etStartTime
    sleep   3s
    ${Time}     get current date      result_format='%Y-%m-%d %H:%M:%S.%f'
    log to console  ${Time}
    ${Date1} =      Add Time To Date    ${Time}   2 hours    result_format='%H'
    log to console      ${Date1}
    ${Date1}    EVALUATE      int(${Date1})-12
    log to console    ${Date1}
    ${indexvalue}   EVALUATE    int($Date1)-1
    click element   xpath=//*[@content-desc='${Date1}' and @index='${indexvalue}']







