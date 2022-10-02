*** Settings ***
Documentation       Basic Search Functionality

Library             SeleniumLibrary
Resource            ../../../Resources/CommonFunctionality.robot
Resource            ../../../Resources/PageObjects/HeaderPage.robot
Resource            ../../../Resources/PageObjects/SearchResultsPage.robot

Test Setup          CommonFunctionality.Start Testcase
Test Teardown       CommonFunctionality.Finish Testcase


*** Test Cases ***
Verify Basic Search Functionality
    [Documentation]    This test case verifies the basic search functionality for eBay
    [Tags]    functional

    HeaderPage.Input Search Text and Click Search
    SearchResultsPage.Verify Search Results

Verify Search Filtering
    [Documentation]    This test verifies that searches can be filtered
    [Tags]    functional

    HeaderPage.Input Search Text and Click Search
    SearchResultsPage.Verify Search Results
    SearchResultsPage.Select Product Condition
    SearchResultsPage.Select Delivery Options
    SearchResultsPage.Verify Filter Results


Verify Advanced Search Functionality
    [Documentation]    This test case verifies the advanced search functionality for eBay
    [Tags]    functional

    HeaderPage.Click Advanced Search Link