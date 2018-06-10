*** Settings ***
Library  AppiumLibrary
Library  String

*** Variables ***
${charityPercent}   "122"


*** Keywords ***
Navigates to the charity section
    wait until element is visible  xpath=//android.widget.TextView[@text='My Calendar']  timeout=15
    swipe by percent    30      70      30      20
    wait until page contains element    xpath=//android.widget.TextView[@text='Charity']
    element name should be      xpath=//android.widget.TextView[@text='Charity']    Charity
    #sleep   3s
    # by percent    20      60      20      -20
    swipe   173     700     173     1200
    go back

Navigates to the charity section inside
    wait until element is visible  xpath=//android.widget.TextView[@text='My Calendar']  timeout=15
    swipe by percent    30      70      30      20
    wait until page contains element    xpath=//android.widget.TextView[@text='Charity']
    click element   xpath=//android.widget.TextView[@text='Charity']
    wait until page contains element    xpath=//android.widget.TextView[@text='Add Charity']

Update the charity type value

    sleep   3s
    ${isChecked}    get element attribute   xpath=//android.widget.CheckedTextView[@text="Organization3"]   checked
    log to console  ${isChecked}
    run keyword if  '${isChecked}'=='true'      click element      xpath=//android.widget.CheckedTextView[@text="Organization2"]
    run keyword if  '${isChecked}'=='false'      click element      xpath=//android.widget.CheckedTextView[@text="Organization3"]
    sleep   10s
    go back


Charity save button
    sleep   3s
    click element  com.meethook.meethookandroid:id/btnSave

Percentage charity field
    #click element   com.meethook.meethookandroid:id/etPercentage
    clear text  com.meethook.meethookandroid:id/etPercentage
    go back
    sleep   4s


Verfiy the error message on charity percentage field
    element text should be  xpath=//android.widget.TextView[@text='Please enter the percentage of your Session earnings you choose to give back.']
    ...     Please enter the percentage of your Session earnings you choose to give back.


Enter charity percentage more then 100
    click element   com.meethook.meethookandroid:id/etPercentage
    input text  com.meethook.meethookandroid:id/etPercentage    123
    hide keyboard

Verfiy the error message on charity percentage field2
    element text should be  xpath=//android.widget.TextView[@text='Percentage should be 1 to 100.']
    ...     Percentage should be 1 to 100.

Input charity percent in 2 digit
    ${charityPercent}       generate random string      2       [NUMBERS]
    Set Global Variable  ${charityPercent}
    input text  com.meethook.meethookandroid:id/etPercentage    ${charityPercent}
    log to console  ${charityPercent}
    go back

Check same percent value get updated
    sleep   4s
    log to console  ${charityPercent}
    ${percentValue}    get element attribute   com.meethook.meethookandroid:id/tvGiveBackToCharity   text
    log to console      ${percentValue}
    wait until page contains element  com.meethook.meethookandroid:id/tvGiveBackToCharity
    element should contain text     com.meethook.meethookandroid:id/tvGiveBackToCharity     ${charityPercent}


turn off the donate button
    ${Donate_field_State}    get element attribute       com.meethook.meethookandroid:id/etPercentage    focused
    log to console  ${Donate_field_State}
    run keyword if  '${Donate_field_State}'=='true'      click element      com.meethook.meethookandroid:id/switchDonate
    run keyword if  '${Donate_field_State}'=='false'      click element     ${null}


check whether it get off
    element attribute should match      com.meethook.meethookandroid:id/switchDonate    checked     false






