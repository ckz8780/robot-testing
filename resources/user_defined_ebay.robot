*** Settings ***
Library     SeleniumLibrary


*** Keywords ***

# Verify we got results for the search "mobile"
Verify Search Results
    Input Text    id:gh-ac    mobile
    Click Button    id:gh-btn
    Page Should Contain    results for mobileeee

# Filter to new items only
Filter Results
    Click Element    xpath: /html/body/div[5]/div[4]/div[1]/div/div[1]/div[2]/div[2]/span[1]/button/span/span  # Condition dropdown
    Click Element    xpath: /html/body/div[5]/div[4]/div[1]/div/div[1]/div[2]/div[2]/span[1]/span/div/div[2]/span[2]  # Select "New"

# Verify that we now see new items only
Verify Filter Results
    Element Should Contain    xpath: /html/body/div[5]/div[4]/div[2]/div[1]/div[2]/ul/li[1]/div/div/div/div/div/ul/li[1]/div/a/div    New
    Element Text Should Be    xpath: /html/body/div[5]/div[4]/div[2]/div[1]/div[2]/ul/li[1]/div/div/div/div/div/ul/li[1]/div/a/div/span    Remove filter
