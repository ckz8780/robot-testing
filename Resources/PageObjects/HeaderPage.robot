*** Settings ***
Library     SeleniumLibrary


*** Variables ***
# Scalar variables (use ${UPPER_CASE} for global vars)
# ${search_text}          mobile

# List variables use @{var_name}[index] to access each item
# @{search_text_list}     books    travel    robot    gifts

# Dict variables use ${var_name.key} to access each item
# &{search_text_dict}     search1=books    search2=travel    search3=robot    search4=gifts

${search_box}    id:gh-ac
${search_button}    id:gh-btn
${advanced_search_link}    //*[@id="gh-as-a"]


*** Keywords ***
Input Search Text and Click Search
    # Make the search text an argument for more flexibility
    [Arguments]    ${search_text}
    Input Text    ${search_box}    ${search_text}
    Click Button    ${search_button}

Click Advanced Search Link
    Click Element    ${advanced_search_link}
