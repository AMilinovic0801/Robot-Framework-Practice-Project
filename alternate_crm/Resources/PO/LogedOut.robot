*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${LOGEDOUT_VERIFY_LOG_OUT} =    Signed Out

*** Keywords ***
Verify Page Contains
    wait until page contains    ${LOGEDOUT_VERIFY_LOG_OUT}