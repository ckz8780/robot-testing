*** Settings ***
Library    SeleniumLibrary


*** Variables ***


*** Keywords ***
Input Search Text and Click Search
    Input Text    id:gh-ac    mobile
    Click Button    id:gh-btn

Click Advanced Search Link
    Click Element    //*[@id="gh-as-a"]