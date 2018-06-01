*** Settings ***
Library  AppiumLibrary
Library  String
Resource   ../Resources/PO/LoginScreen.robot
Resource    ../Resources/PO/Dashboard.robot
Resource    ../Resources/PO/Profile.robot
Resource  ../Resources/BasicApp.robot


*** Keywords ***

launch application1
      Open Application  http://localhost:4723/wd/hub
             ...  platformName=Android
             ...  platformVersion=6.0.1
             ...  deviceName=Nexus5
             ...  udid=0bb3b23a43e67009
             ...  app=com.meethook.meethookandroid
             #...  app=io.ionic.fb4
             ...  appActivity=com.meethook.meethookandroid.activity.SplashActivity
             #...    appActivity=io.ionic.fb4.MainActivity
            # ...  appPacakage=com.meethook.meethookandroid
Close app1
    Close Application


launch and login in app
    launch application1
    Login screen available
    Enter email ID
    Enter a password
    Tap on Login

Logout and close app
    CHECK THE HAMBURGER OPTION AVAILABLE AND TAP
    tap on logout button
    #sleep   3s
    close app1

Wait till user navigates to the profile
    wait for profile view
