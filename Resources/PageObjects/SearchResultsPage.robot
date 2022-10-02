*** Settings ***
Library    SeleniumLibrary
Resource    ./HeaderPage.robot
Variables    ../WebElements.py

*** Keywords ***
# Note ${search_text} comes from the HeaderPage resource
Verify Search Results
    # Make the search text to verify results for an argument
    [Arguments]    ${search_text}
    Page Should Contain    ${searchresultspage_results_for_text} ${search_text}

# Select "New" items only from the condition dropdown
Select Product Condition
    Click Element    ${searchresultspage_condition_dropdown_xpath}
    Click Element    ${searchresultspage_condition_new_xpath}

# Select "Free Shipping" items only from the shipping dropdown
Select Delivery Options
    Click Element    ${searchresultspage_shipping_dropdown_xpath}
    Click Element    ${searchresultspage_shipping_free_xpath}

# Click the "2 filters applied" button and verify the expected filters are applied
Verify Filter Results
    Click Element    ${searchresultspage_filters_applied_btn_xpath}
    Element Should Contain    ${searchresultspage_shipping_free_element_xpath}    ${searchresultspage_shipping_filter_expected_text}
    Element Text Should Be    ${searchresultspage_shipping_free_remove_element_xpath}    ${searchresultspage_remove_filter_expected_text}
    Element Should Contain    ${searchresultspage_condition_new_element_xpath}    ${searchresultspage_condition_filter_expected_text}
    Element Text Should Be    ${searchresultspage_condition_new_remove_element_xpath}    ${searchresultspage_remove_filter_expected_text}