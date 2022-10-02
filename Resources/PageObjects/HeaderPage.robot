*** Settings ***
Library    SeleniumLibrary


*** Variables ***
# Scalar variables (use ${UPPER_CASE} for global vars)
${search_text}    mobile

*** Keywords ***
Input Search Text and Click Search
    Input Text    id:gh-ac    ${search_text}
    Click Button    id:gh-btn

Click Advanced Search Link
    Click Element    //*[@id="gh-as-a"]