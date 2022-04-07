*** Settings ***
Library  SeleniumLibrary
*** Variables ***
${web_url}  https://www.google.com/
${search_p}  Amazon.in
*** Test Cases ***
Login Screen Test
    [Documentation]  This is a login screen
    [Tags]  Users
    Log  Hello
Registration Screen Test
    [Documentation]  This is the registration screen
    [Tags]  users
    Log  Success

Admin Screen Test
    [Documentation]  This page is for Admins
    [Tags]  Admin
    Log  Admin

google test
    [Documentation]  open google
    [Tags]  internet
    open browser  ${web_url}   chrome
    maximize browser window
    input text  name:q  ${search_p}
    Submit Form
    Close browser

*** Keywords ***
Enter Search Data
    Input Text name:q  ${search_p}