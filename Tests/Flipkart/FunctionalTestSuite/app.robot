*** Settings ***
Library  SeleniumLibrary
*** Variables ***
${google_search}  https://www.google.com/
${search}  flipkart
${product_search}  iphone
*** Test Cases ***
Google Test
    [Documentation]  Google
    [Tags]  google
    Open Browser  ${google_search}  chrome
    Maximize Browser Window
    Search Data
    Submit Form
    Click Element  class:LC20lb

Flipkart Search Test
    [Documentation]  Flipkart
    [Tags]  app
    sleep  3s
    Click Button  class:_2KpZ6l
    Search Flipkart Data
    sleep  3s
    Click Button  class:L0Z3Pu




*** Keywords ***
Search Data
    Input Text  name:q  ${search}
Search Flipkart Data
    Input Text  name:q  ${product_search}
