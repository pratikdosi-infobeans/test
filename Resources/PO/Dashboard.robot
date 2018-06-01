*** Settings ***
Library  AppiumLibrary

*** Keywords ***
Hamburger menu button is available
    wait until element is visible  class=android.widget.ImageButton  timeout=15


Hamburger menu tap
    click element  class=android.widget.ImageButton



Profile option is available
    wait until page contains element  //android.widget.TextView[@text='Profile']

Profile option tap
    click element  xpath=//android.widget.TextView[@text='Profile']


wait for profile view
    wait until page contains element  com.meethook.meethookandroid:id/txt_edit_personal_info    timeout=10s