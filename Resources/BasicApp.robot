*** Settings ***
#Library  String

Resource   ../Resources/PO/LoginScreen.robot
Resource    ../Resources/PO/Dashboard.robot
Resource    ../Resources/PO/Profile.robot
Resource    ../Resources/PO/Charity.robot
Resource    ../Resources/PO/Meethooknow.robot
Resource    ../Resources/PO/Help.robot
Resource    ../Resources/PO/Calendar.robot
Resource    ../Resources/PO/Home.robot


*** Variables ***

#${RANDOM_STRING} =   generate random string     10      [LETTERS]




*** Keywords ***


Login screen availables to take input
    LoginScreen.Login screen available
    LoginScreen.Select and clear username field

Enter email ID
    LoginScreen.Select and clear username field
    LoginScreen.Enter username in field


Enter a password
    LoginScreen.Select a password
    LoginScreen.Enter a password in field


Tap on Login button
    LoginScreen.Tap on Login


Check the hamburger option available and tap
    Dashboard.Hamburger menu button is available
    Dashboard.Hamburger menu tap


Check the profile option is available to tap
    Dashboard.Profile option is available
    Dashboard.Profile option tap


Navigates to my personal info screen
    Profile.Navigates to my personal info

Naviagtes and clear the value of first name field
    Profile.Naviagtes to first name field


Tap on save button
    Profile.Tap on save button to save

Verify the error message when first name field is blank
    Verfiy the error message on first name field


Input value in first name field
    Input value in first name

Naviagtes and clear the value of last name field
    Navigates to last name field


Verify the error message when last name field is blank
    Tap on save button
    Verfiy the error message on last name field

Input value in last name field
    Input value in last name

Fill card details
    wait until page contains element  com.meethook.meethookandroid:id/etFullNameOnCard
    input text  com.meethook.meethookandroid:id/etFullNameOnCard    Mycard

Go to card screen whether card is present or not
    ${iscardpresent}    run keyword and return status   element should be visible   com.meethook.meethookandroid:id/txt_edit_billing
    run keyword if      '${iscardpresent}'=='True'  click element   com.meethook.meethookandroid:id/txt_edit_billing
    run keyword if      '${iscardpresent}'=='False'  click element   com.meethook.meethookandroid:id/txt_add_billing
    wait until page contains element        com.meethook.meethookandroid:id/tvtitle
    ${isParentPresent} =  Run Keyword And Return Status    Element Should Be Visible   com.meethook.meethookandroid:id/ll_header
    log to console   ${isParentPresent}
    Run Keyword If    '${isParentPresent}'== 'True'     Delete the already added card
    Run Keyword If    '${isParentPresent}'== 'False'    Add a new card

Delete the already added card
    Delete the already added card from profile


Add a new card
    Add a card in profile

Tap on generic save button
    Card detail save button

Delete and add new card
    Delete the already added card

Add a card
    Add a new card


Check if card is already added
    ${iscardpresent} =   Run keyword and return status  check if card is added already in card
    run keyword if      '${iscardpresent}'== 'True'    Delete and add new card
    run keyword if      '${iscardpresent}'== 'False'     Add a new card

Select About me section to edit
    select about me section

Navigates to the skills section
    Navigates to the what do you offer sections

delete and add skills again
    Delete the already added skill


Check if skills is added then delete the skill and add again
    ${isSkillAdded} =   run keyword and return status       skills presentav
    log to console      ${isSkillAdded}
    run keyword if      '${isSkillAdded}'=='True'   delete and add skills again
    run keyword if      '${isSkillAdded}'=='False'  Add skills



# Charity section
check the charity option available
    Navigates to the charity section

Go to the charity section and update the charity value
    Navigates to the charity section inside
    update the charity type value

Tap on charity save button
    Charity save button


Navigates to charity percentage field and clear value
    Percentage charity field



#--- MeetHook now section----


Navigates to the MeetHook now section
    Navigates to the MeetHook now option


Verify the error message when user enters no rates
    Check the error message when no rates


Enter rate below min length and tap save
    Enter rate in rate field
    Tap on "turn on meethook now" button


Verify the error message when user enters low rates
    Check the error message when below rates enetered


Verify the error message on duration field
    Check the error message on duration field


#--- Help section----#




Navigates to the duration screen
    Navigate to the duration screen


select a skills in calendar
    Select a skills












