*** Settings ***

*** Test Cases ***
Arguments Demo Test 1
    # Here we call the keyword from below and pass arg1=Hello and arg2=World!
    Arguments Demo Keyword    Hello    World!

Arguments Demo Test 2
    # This time we call it with different arguments
    Arguments Demo Keyword    Goodbye    Cruel world!

*** Keywords ***
Arguments Demo Keyword
    # This keyword requires two arguments: arg1 and arg2
    [Arguments]    ${arg1}    ${arg2}
    Log    ${arg1}
    Log    ${arg2}