*** Settings ***
Library    SeleniumLibrary
Resource    ./HeaderPage.robot


*** Variables ***
${search_result_text}    results for

*** Keywords ***
# Note ${search_text} comes from the HeaderPage resource
Verify Search Results
    Page Should Contain    ${search_result_text} ${search_text}

# Select "New" items only from the condition dropdown
Select Product Condition
    Click Element    xpath: /html/body/div[5]/div[4]/div[1]/div/div[1]/div[2]/div[2]/span[1]/button/span/span
    Click Element    xpath: /html/body/div[5]/div[4]/div[1]/div/div[1]/div[2]/div[2]/span[1]/span/div/div[2]/span[2]

# Select "Free Shipping" items only from the shipping dropdown
Select Delivery Options
    Click Element    xpath: /html/body/div[5]/div[4]/div[1]/div/div[1]/div[2]/div[2]/span[2]/button/span/span
    Click Element    xpath: /html/body/div[5]/div[4]/div[1]/div/div[1]/div[2]/div[2]/span[2]/span/div/div/span[2]

# Click the "2 filters applied" button and verify the expected filters are applied
Verify Filter Results
    Click Element    xpath: /html/body/div[5]/div[4]/div[2]/div[1]/div[2]/ul/li[1]/div/div/div/div/div/ul/li[1]/div/div/button
    Element Should Contain    xpath: /html/body/div[5]/div[4]/div[2]/div[1]/div[2]/ul/li[1]/div/div/div/div/div/ul/li[1]/div/div/div/ul/li[1]/a    Free shipping
    Element Text Should Be    xpath: /html/body/div[5]/div[4]/div[2]/div[1]/div[2]/ul/li[1]/div/div/div/div/div/ul/li[1]/div/div/div/ul/li[1]/a/span    Remove filter
    Element Should Contain    xpath: /html/body/div[5]/div[4]/div[2]/div[1]/div[2]/ul/li[1]/div/div/div/div/div/ul/li[1]/div/div/div/ul/li[2]/a    New
    Element Text Should Be    xpath: /html/body/div[5]/div[4]/div[2]/div[1]/div[2]/ul/li[1]/div/div/div/div/div/ul/li[1]/div/div/div/ul/li[2]/a/span    Remove filter