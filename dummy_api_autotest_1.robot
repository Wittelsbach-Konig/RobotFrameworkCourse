*** Settings ***
Library    RequestsLibrary
Library    Collections

*** Test Cases ***
Test Update Salary
    Create Session    alias    http://dummy.restapiexample.com/
    ${response}    GET On Session    alias    api/v1/employees
    Log    ${response.json()}
    ${employers}    Set Variable    ${response.json()}[data]
    ${older_empls}    Create List
    FOR    ${empl}    IN    @{employers}
        Log    ${empl}
        IF    ${empl}[employee_age] > 41
            ${empl}[employee_salary]    Evaluate    ${empl}[employee_salary] + ${1000}
            Append To List    ${older_empls}    ${empl}
        END
    END
    Log    ${older_empls}
    
    FOR    ${empl}    IN    @{older_empls}
        # /update/{id}
        &{data}    Create Dictionary    name=${empl}[employee_name]    salary=${empl}[employee_salary]
        ...    age=${empl}[employee_age]
        ${response}    PUT On Session    alias    /v1/update/${empl}[id]    data=${data}    expected_status=406

    END