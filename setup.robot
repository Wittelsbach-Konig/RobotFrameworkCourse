*** Settings ***
Test Setup    Test Setup
Suite Setup    Suite Setup
Test Teardown    Test Teardown
*** Test Cases ***
Test log setup
    [Setup]
    log    111

*** Keywords ***
Suite Setup
    log    Suite
Test Setup
    log    Test

Test Teardown
    log 12312
    Log    12312
