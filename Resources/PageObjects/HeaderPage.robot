*** Settings ***
Library     SeleniumLibrary


*** Variables ***
# Scalar variables (use ${UPPER_CASE} for global vars)
${search_text}          mobile

# List variables use @{var_name}[index] to access each item
@{search_text_list}     books    travel    robot    gifts

# Dict variables use ${var_name.key} to access each item
&{search_text_dict}     search1=books    search2=travel    search3=robot    search4=gifts


*** Keywords ***
Input Search Text and Click Search
    Input Text    id:gh-ac    ${search_text}
    Click Button    id:gh-btn

Click Advanced Search Link
    Click Element    //*[@id="gh-as-a"]
