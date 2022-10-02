*** Settings ***
Documentation       Basic Search Functionality

Library             SeleniumLibrary
Resource            ../../../resources/common.robot
Resource            ../../../resources/user_defined_ebay.robot

Test Setup    common.Start Testcase
Test Teardown    common.Finish Testcase

*** Test Cases ***
Verify basic search functionality for eBay
    [Documentation]    This test case verifies the basic search functionality for eBay
    [Tags]    functional

    # Keywords from *** Keywords *** section below
    user_defined_ebay.Verify Search Results
    user_defined_ebay.Filter Results
    user_defined_ebay.Verify Filter Results
