*** Settings ***
Documentation    Basic Search Functionality
Library    SeleniumLibrary

*** Variables ***

*** Test Cases ***
Verify basic search functionality for eBay
    [Documentation]    This test case verifies the basic search functionality for eBay
    [Tags]    functional

    # Keywords from *** Keywords *** section below
    Start Testcase
    Verify Search Results
    Finish Testcase

    # Note you can also write test cases here, but we've turned them into user defined 
    # keywords representing each section in the *** Keywords *** section
    #
    # Start Testcase
    # Open Browser    https://www.ebay.com    chrome
    # Maximize Browser Window

    # Verify Search Results
    # Input Text    id:gh-ac    mobile
    # Click Button    id:gh-btn
    # Page Should Contain    results for mobile

    # Finish Testcase
    # Close Browser

*** Keywords ***

Start Testcase
    Open Browser    https://www.ebay.com    chrome
    Maximize Browser Window
Verify Search Results
    Input Text    id:gh-ac    mobile
    Click Button    id:gh-btn
    Page Should Contain    results for mobile

Finish Testcase
    Close Browser
