*** Settings ***
Library  SeleniumLibrary

*** Variables ***

*** Test Cases ***
This is a sample test case
    [Documentation]  Google test
    [Tags]    functional

    Open Browser    https://www.google.com    chrome
    Close Browser

*** Keywords ***
