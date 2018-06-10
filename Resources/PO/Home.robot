*** Settings ***
Library     AppiumLibrary
Library     String


*** Keywords ***


Navigates to the favorites section
    click element   xpath=//android.widget.TextView[@index='2']
    get element attribute   xpath=//android.widget.TextView[@index='2']     clickable       false


