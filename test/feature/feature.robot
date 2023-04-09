*** Settings ***
Documentation   Example Feature Tests
Resource        ../base.robot

Test Setup      Start Test
Test Teardown   Finish Test
*** Test Cases ***
Buka Aplikasi
    Open Application    ${APPIUM_SERVER}
    Wait Until Element Is Visible    10s    
