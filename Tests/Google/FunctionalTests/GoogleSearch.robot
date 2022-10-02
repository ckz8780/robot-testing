*** Settings ***
Library  SeleniumLibrary

*** Variables ***

*** Test Cases ***
This is a sample test case
    [Documentation]  This is a sample test that opens the Chrome browser to google.com and then closes it
    [Tags]    functional

    Open Browser    https://www.google.com    chrome
    Close Browser

*** Keywords ***
