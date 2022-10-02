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
    
    # We are searching for and confirming results for the term "mobile"
    HeaderPage.Input Search Text and Click Search    mobile
    SearchResultsPage.Verify Search Results    mobile

Verify Search for Books
    [Documentation]    This test case verifies we can search for a specific term
    [Tags]    functional
    
    # We are searching for and confirming results for the term "mobile"
    HeaderPage.Input Search Text and Click Search    book
    SearchResultsPage.Verify Search Results    book

Verify Search for Model Airplanes
    [Documentation]    This test case verifies we can search for a specific term
    [Tags]    functional
    
    # We are searching for and confirming results for the term "mobile"
    HeaderPage.Input Search Text and Click Search    model airplane
    SearchResultsPage.Verify Search Results    model airplane

Verify Search Filtering
    [Documentation]    This test verifies that searches can be filtered
    [Tags]    functional

    # We are searching for and confirming results for the term "mobile"
    HeaderPage.Input Search Text and Click Search    mobile
    SearchResultsPage.Verify Search Results    mobile
    SearchResultsPage.Select Product Condition
    SearchResultsPage.Select Delivery Options
    SearchResultsPage.Verify Filter Results


Verify Advanced Search Functionality
    [Documentation]    This test case verifies the advanced search functionality for eBay
    [Tags]    functional

    HeaderPage.Click Advanced Search Link