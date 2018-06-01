*** Settings ***
Library  AppiumLibrary
#Resource  ../Resource/Common.robot

*** Variables ***
${Username}    jason@mailinator.com
${Password}    qa1234567





*** Keywords ***
Login screen available
    wait until element is visible   com.meethook.meethookandroid:id/etUserName

Select and clear username field
    click element  com.meethook.meethookandroid:id/etUserName
    Clear Text  com.meethook.meethookandroid:id/etUserName

Enter username in field
    input text  id=com.meethook.meethookandroid:id/etUserName   ${username}

Select a password
    click element  com.meethook.meethookandroid:id/etPassword

Enter a password in field
    input text  com.meethook.meethookandroid:id/etPassword  ${password}
    hide keyboard

Tap on Login
    click element  com.meethook.meethookandroid:id/tvBtnTitle


Tap on logout button
    sleep   3s
    ${iscalendarpresent} =  Run Keyword And Return Status    Element Should Be Visible   xpath=//android.widget.TextView[@text='My Calendar']
    log to console   ${iscalendarpresent}
    #swipe by percent    30      70      30      20
    Run Keyword If    '${iscalendarpresent}'== 'True'   logout when hamburger option are in bottom
    Run Keyword If    '${iscalendarpresent}'== 'False'   click element  xpath=//android.widget.TextView[@text='Log out']
    click element  id=com.meethook.meethookandroid:id/ll_approve

    #wait until element is visible  xpath=//android.widget.TextView[@text='My Calendar']  timeout=15
    #swipe by percent    30      70      30      20
    #click element  xpath=//android.widget.TextView[@text='Log out']
    #click element  id=com.meethook.meethookandroid:id/ll_approve


logout when hamburger option are in bottom
    swipe by percent    30      70      30      20
    click element  xpath=//android.widget.TextView[@text='Log out']

