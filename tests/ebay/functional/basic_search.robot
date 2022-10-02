*** Settings ***
Documentation       Basic Search Functionality

Library             SeleniumLibrary
Resource            ../../../resources/common.robot
Resource            ../../../resources/user_defined_ebay.robot

Test Setup    Start Testcase
Test Teardown    Finish Testcase

*** Test Cases ***
Verify basic search functionality for eBay
    [Documentation]    This test case verifies the basic search functionality for eBay
    [Tags]    functional

    # Keywords from *** Keywords *** section below
    Verify Search Results
    Filter Results
    Verify Filter Results
