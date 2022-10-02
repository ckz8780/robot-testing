*** Variables ***
# Global variables are available anywhere in the entire project
${GLOBAL_VARIABLE}      This is a global variable

# Test suite variables are available anywhere in the suite in which they're defined


*** Test Cases ***
Demo Test 1
    # Test case variables are available in the test case and all user keywords the test case uses
    ${testcase_variable}    Set Variable    This is a testcase variable
    Log    ${GLOBAL_VARIABLE}
    Log    ${testcase_variable}

Demo Test 2
    Log    ${GLOBAL_VARIABLE}    # This is ok because globals can be accessed anywhere
    # Log    ${testcase_variable}    # This will not be available since it's defined in Demo Test 1

Demo Test 3
    Demo Keyword 1    # This will log the ${keyword_variable} via the actual keyword
    # Log    ${keyword_variable}    # However this will fail because ${keyword_variable} is not defined in this testcase


*** Keywords ***
Demo Keyword 1
    [Arguments]    ${keyword_variable}=This is a keyword variable    # This will be available anywhere the keyword is used (see Demo Test 3)
    # Keyword variables are only available in this specific keyword
    Log    ${GLOBAL_VARIABLE}
    Log    ${keyword_variable}
