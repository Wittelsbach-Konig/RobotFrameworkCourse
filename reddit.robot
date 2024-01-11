*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Test Main Page
    Open Browser    https://www.reddit.com/?rdt=60456    Chrome
    Maximize Browser Window
    Wait Until Page Contains Element    //*[@id="left-sidebar"]
    Click Element                                         //*[@id="TOPICS"]/faceplate-expandable-section-helper[3]/details/summary/left-nav-topic-tracker/li/div/span[1]/span[2]/span[1]/span
    Wait Until Page Contains Element    //*[@id="Business"]/ul/left-natopic-tracker[1]/li/a