*** Test Cases ***
Verify formula
    ${cel_value}=    Set Variable    10
    ${far_value}=    Set Variable    50
    ${expected_far_value}=    Calc Farenheit    ${cel_value}
    Should Be Equal As Numbers    ${expected_far_value}    ${far_value}


*** Keywords ***
Calc Farenheit
    [Arguments]    ${t_cel}
    ${t_far}=    Evaluate    (${t_cel} * 9/5) + 32
    RETURN    ${t_far}
