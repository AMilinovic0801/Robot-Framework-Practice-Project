*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${HOME_HEADER_LABEL} =          Customers Are Priority One!

*** Keywords ***
Navigate to
    go to                       ${BASE_URL}

Verify Page Contains
    wait until page contains    ${HOME_HEADER_LABEL}