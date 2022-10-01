*** Settings ***
Documentation    Basic Search Functionality
Library    SeleniumLibrary

*** Variables ***

*** Test Cases ***
Verify basic search functionality for eBay
    [Documentation]    This test case verifies the basic search functionality for eBay
    [Tags]    functional

    Open Browser    https://www.ebay.com    chrome
    Input Text    //*[@id="gh-ac"]    mobile
    Click Button    //*[@id="gh-btn"]
    Page Should Contain    results for mobile
    Close Browser

*** Keywords ***
