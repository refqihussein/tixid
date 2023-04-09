*** Settings *** 
Documentation       Global Hooks 
... 
...                 Hooks used before and after each test case present in a test suite.
Resource            ../../../config/env.robot 
Resource            ../common/common.robot 
Library    AppiumLibrary

*** Keywords ***  
Start Test
    Set Appium Timeout          ${TIMEOUT_MAX}
    Open Application            ${APPIUM_SERVER}
    ...                         apps=${APP}
    ...                         deviceName=${DEVICE_NAME}
    ...                         automationName=${AUTOMATION_NAME}
    ...                         platformName=${PLATFORM_NAME}
    ...                         platformVersion=${PLATFORM_VERSION}

Finish Test 
    Capture Page Screenshot 
    Close Application
