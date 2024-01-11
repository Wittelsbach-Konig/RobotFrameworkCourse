*** Variables ***
${host}    localhost
${port}    ${9888}
${url}    https://${host}:${port}
${pi}    ${3.14}
${Check url}    ${True}
${Check host}    ${False}
${var}    ${None}

@{list_value}    1    2    ${3}    4    5
&{dict_value}    key1=val1    key2=val2

*** Test Cases ***
Log Var
    Log    ${host}
    Log    тестовый урл для урока ${url}
    Log    ${dict_value}[key1]
    Log Many    @{list_value}
    Log Many    &{dict_value}
    ${dict}    Create Dictionary    key=tre    key2=${url}
    ${var}    Evaluate    ${5} + ${6} % ${7}
    Create List 2    1 2 3 4
    Key1    123
*** Keywords ***
Create list 2
    [Arguments]    @{list}
    ${list}    Create List    @{list}
    log    ${list}
    RETURN    ${list}
key1
    [Arguments]    ${var1}
    log    ${var1}