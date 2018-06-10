*** Settings ***
Library     AppiumLibrary
Library     String
#Library     DateTime
Library     robot.libraries.DateTime

*** Variables ***
${Time}   "122"
${Time1}    "123"
${Time2}    "23"
${indexvalue}   "34"
${Date}     "34"
${Date1}    "344"





*** Keywords ***

Navigates to the Calendar section
    wait until element is visible  xpath=//android.widget.TextView[@text='My Calendar']     15s
    #swipe by percent    30      70      30      20
    wait until page contains element    xpath=//android.widget.TextView[@text='My Calendar']
    click element   xpath=//android.widget.TextView[@text='My Calendar']
    wait until page contains element    xpath=//android.widget.TextView[@text='Calendar']


check add button is visisble
    page should contain element     com.meethook.meethookandroid:id/btnCalendarEvent

Tap on add button
    click element       com.meethook.meethookandroid:id/btnCalendarEvent

Tap on the top add button
    click element   com.meethook.meethookandroid:id/imgAddEvent

Navigates to create schedule screen
    ${addButtonpresent}     run keyword and return status       check add button is visisble
    log to console      ${addButtonpresent}
    run keyword if      '${addButtonpresent}'=='True'    Tap on add button
    run keyword if      '${addButtonpresent}'=='False'   Tap on the top add button


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
    set global variable     ${Date}
    ${Date1} =      Add Time To Date    ${Date}   1 days    result_format='%d'
    log to console      ${Date1}
    set global variable     ${Date1}
    swipe by percent        50      75      50      40
    click element   xpath=//android.widget.TextView[@text=${Date1}]


TAP ON PROCEED BUTTON
    CLICK ELEMENT  com.meethook.meethookandroid:id/tvProceed


Check error message on start time field
    element text should be      com.meethook.meethookandroid:id/textinput_error     Please select start time.
    go back

Check error message on end time field
    element text should be      com.meethook.meethookandroid:id/textinput_error     Please select end time.
    go back


Navigates to start time screen
    click element   com.meethook.meethookandroid:id/etStartTime

Navigates to end time screen
    wait until element is visible       com.meethook.meethookandroid:id/etEndTime
    click element   com.meethook.meethookandroid:id/etEndTime


Select the start time after 2 hr
    sleep   3s
    ${Time}     get current date      result_format='%Y-%m-%d %H:%M:%S.%f'
    set global variable     ${Time}

    ${Time1} =      Add Time To Date    ${Time}   2 hours    result_format='%H'
    set global variable     ${Time1}

    ${Time2}    EVALUATE      int(${Time1})-12
    set global variable     ${Time2}

    ${indexvalue}   EVALUATE    int(${Time2})-1
    set global variable     ${indexvalue}
    click element   xpath=//*[@content-desc='${time2}' and @index='${indexvalue}']

Select the same start and end time
    click element   xpath=//*[@content-desc='${time2}' and @index='${indexvalue}']

Check the error message of same time
    element text should be      com.meethook.meethookandroid:id/textinput_error          End time must be later than start time.
    go back




Tap on the OK button at time picker
    click element   xpath=//android.widget.Button[@text='OK']


Select end time after 1 hr of start time
    ${EndHrTime}    evaluate    int(${Time2})+2
    log to console  ${EndHrTime}
    ${indexvalue1}  evaluate    int(${indexvalue})+2
    log to console  ${indexvalue1}
    click element   xpath=//*[@content-desc='${EndHrTime}' and @index='${indexvalue1}']


check error message on select skills field
    wait until page contains element    com.meethook.meethookandroid:id/textinput_error
    element text should be      com.meethook.meethookandroid:id/textinput_error     Please select skill.
    go back

Navigates to the skills section of create schedule
    click element   com.meethook.meethookandroid:id/etSkill


check error message on seesion type screen
    wait until page contains element    com.meethook.meethookandroid:id/textinput_error
    element text should be      com.meethook.meethookandroid:id/textinput_error     Please select session type.
    go back


Navigates to the time interval screen
    click element       com.meethook.meethookandroid:id/etTimeSlot


Navigates to the session type screen
    click element   com.meethook.meethookandroid:id/etInterationType

Check the error message on time interval screen
    wait until page contains element    com.meethook.meethookandroid:id/textinput_error
    element text should be      com.meethook.meethookandroid:id/textinput_error     Please select time interval.
    go back


Select the Entire slot
    wait until page contains element    xpath=//android.widget.TextView[@text='Select Time Interval']
    click element   xpath=//android.widget.LinearLayout[@index='3']

Check the text present in current week
    #element should contain text     xpath=//android.widget.TextView[@index=1]       ${Date}
    #log to console      ${Date}
    ${abd}      get element attribute       com.meethook.meethookandroid:id/tvDate   text
    log to console      ${abd}
    run keyword if      '${abd}'=='${Date}'
    element should contain text     ${abd}      ${Date}
    log to console      ${Date}


Validate
    ${isinweek}     run keyword and return status       Check the text present in current week
    log to console      ${isinweek}
    run keyword if      '${isinweek}'=='True'       ${null}
    run keyword if









