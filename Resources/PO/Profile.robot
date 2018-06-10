*** Settings ***
Library  AppiumLibrary
Library  String

*** Variables ***

*** Keywords ***
Navigates to my personal info
    wait until page contains element  com.meethook.meethookandroid:id/txt_edit_personal_info    timeout=15s
    click element  com.meethook.meethookandroid:id/txt_edit_personal_info


Naviagtes to first name field
    wait until page contains element  com.meethook.meethookandroid:id/etFirstName
    clear text  com.meethook.meethookandroid:id/etFirstName
    hide keyboard


Tap on save button to save
    click element  com.meethook.meethookandroid:id/tvSave


Verfiy the error message on first name field
    wait until page contains element  xpath=//android.widget.TextView[@text='Please enter your first name.']
    element text should be  xpath=//android.widget.TextView[@text='Please enter your first name.']      Please enter your first name.
    go back


Verfiy the error message on last name field
    element text should be  name=Please enter your last name.    Please enter your last name.
    go back

Input value in first name
    ${Random_firstname}    generate random string   7   [Letters]
    input text   com.meethook.meethookandroid:id/etFirstName    ${Random_firstname}
    hide keyboard


Input value in last name
    ${Random_lastname}    generate random string   7   [Letters]
    input text  com.meethook.meethookandroid:id/etLastName      ${Random_lastname}
    hide keyboard


Navigates to last name field
    clear text  com.meethook.meethookandroid:id/etLastName
    hide keyboard


Delete the already added card from profile
    sleep   5s
    click element   com.meethook.meethookandroid:id/txt_default
    wait until page contains element    com.meethook.meethookandroid:id/ivDelete
    click element  com.meethook.meethookandroid:id/ivDelete
    click element  com.meethook.meethookandroid:id/ll_approve
    sleep  5s
    go back
    wait until page contains element    com.meethook.meethookandroid:id/rl_billing_details
    click element  com.meethook.meethookandroid:id/rl_billing_details



Add a card in profile
    input text  com.meethook.meethookandroid:id/etFullNameOnCard    Mycard1
    input text  com.meethook.meethookandroid:id/etCardNum1  4242
    input text  com.meethook.meethookandroid:id/etCardNum2  4242
    input text  com.meethook.meethookandroid:id/etCardNum3  4242
    input text  com.meethook.meethookandroid:id/etCardNum4  4242
    click element  com.meethook.meethookandroid:id/tvCardMonth
    click element  //android.widget.TextView[@text='04']
    click element    com.meethook.meethookandroid:id/tvCardYear
    click element  //android.widget.TextView[@text='2021']
    input text      com.meethook.meethookandroid:id/etCardCVV       223
    hide keyboard
    input text      com.meethook.meethookandroid:id/etUniqueCardName    myAxisbanh
    hide keyboard
    wait until page contains element    com.meethook.meethookandroid:id/etBillingAddress
    input text      com.meethook.meethookandroid:id/etBillingAddress    91 Chhatarapati nagar
    hide keyboard
    sleep   3s
    swipe   500    1450    500    700     1000
    click element  com.meethook.meethookandroid:id/at_state_registration
    wait until page contains element  xpath=//android.widget.TextView[@text='Alaska']
    click element  xpath=//android.widget.TextView[@text='Alaska']
    click element  com.meethook.meethookandroid:id/atCity
    wait until page contains element  xpath=//android.widget.TextView[@text='Adak']
    click element   xpath=//android.widget.TextView[@text='Adak']
    WAIT UNTIL PAGE CONTAINS ELEMENT    com.meethook.meethookandroid:id/etPinCode
    click element   com.meethook.meethookandroid:id/etPinCode
    input text      com.meethook.meethookandroid:id/etPinCode   fgjggjhg
    hide keyboard
    sleep  15s



Card detail save button
    click element  xpath=//android.widget.TextView[@text='SAVE']

Select about me section
    wait until page contains element  com.meethook.meethookandroid:id/txt_edit_about_me
    click element  com.meethook.meethookandroid:id/txt_edit_about_me
    clear text  com.meethook.meethookandroid:id/et_hostBio
    ${Random1}  generate random string  8   [NUMBERS]
    input text  com.meethook.meethookandroid:id/et_hostBio     ${Random1}
    hide keyboard


Check if card is added already in card
    element should be visible    com.meethook.meethookandroid:id/img_add_billing



Check if skills is added already in skills section
    element should be visible    com.meethook.meethookandroid:id/rl_what_you_offer



Navigates to the what do you offer sections
    ${skillsavailable} =  run keyword and return status     element should be visible   com.meethook.meethookandroid:id/rl_what_you_offer
    log to console  ${skillsavailable}
    run keyword if      '${skillsavailable}'=='True'    click element  com.meethook.meethookandroid:id/rl_what_you_offer
    run keyword if      '${skillsavailable}'=='False'   click element   com.meethook.meethookandroid:id/rl_parent_edit_host_whatYouOffer


skills presentav
    element should be visible   com.meethook.meethookandroid:id/img_add_whatYouOffer

Delete the already added skill
    wait until page contains element    //android.widget.RelativeLayout[@index='0']
    swipe by percent  20    90      90      90      1000


Navigates to Link screen section
    sleep   5s
    swipe by percent    50    95      50      10      1000
    sleep   5s
    swipe by percent    50    90      50      30      1000
    sleep   3s
    ${isalreadyadded}     run keyword and return status       element should be visible       com.meethook.meethookandroid:id/rl_parent_edit_links
    run keyword if      '${isalreadyadded}'=='True'     click element   com.meethook.meethookandroid:id/rl_parent_edit_links
    run keyword if      '${isalreadyadded}'=='False'     click element   com.meethook.meethookandroid:id/rl_links
    #click element   com.meethook.meethookandroid:id/txt_edit_links_details

Tap on add button at link screen
    click element  com.meethook.meethookandroid:id/tvSave

check error messge below field
    element text should be      com.meethook.meethookandroid:id/textinput_error     Please enter a valid link. Sharing social media links can increase your booked sessions!
    go back


Enter URL
    input text      com.meethook.meethookandroid:id/et_social_media     hhtps://www.google.com

Navigate to the social platform screen
    click element       com.meethook.meethookandroid:id/tv_platform

Select social platform
    click element       xpath=//android.widget.TextView[@text='Twitter']
check the added link
    sleep   7s
    element should contain text     xpath=//android.widget.TextView[@text='Https://Www.gootgle.com']    Https://Www.gootgle.com




##-------------------Media----------##

Navigates to the media section
    sleep   5s
    swipe by percent    50    95      50      10      1000
    sleep   5s
    swipe by percent    50    95      50      10      1000
    sleep   3s
    ${isMediaadded}     run keyword and return status       element should be visible       com.meethook.meethookandroid:id/txt_edit_media
    run keyword if      '${isMediaadded}'=='True'     click element   com.meethook.meethookandroid:id/txt_edit_media
    run keyword if      '${isMediaadded}'=='False'     click element   com.meethook.meethookandroid:id/img_edit_media_plus

Tap on the media add button
    click element   com.meethook.meethookandroid:id/btnAddMedia

Select a image
    click element       xpath=//android.widget.TextView[@text='5:52 PM']

Wait for image to add
    wait until page contains element    xpath=//android.widget.TextView[@text='Media']








