*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${SIGNIN_PAGE_LOADED} =         Login
${SIGNIN_EMAIL_FIELD} =         id=email-id
${SIGNIN_PASSWORD_FIELD} =      id=password
${SIGNIN_CLICK_SUBMIT} =        id=submit-id

*** Keywords ***
Verify Page Contains
    wait until page contains        ${SIGNIN_PAGE_LOADED}

Login with valid credentials
    [Arguments]    ${valid_credentials}
    Fill "Email" Field      ${valid_credentials.Email}
    Fill "Password" Field   ${valid_credentials.Password}
    Click "Submit" Button

Fill "Email" Field
    [Arguments]       ${email}
    input text        ${SIGNIN_EMAIL_FIELD}     ${email}

Fill "Password" Field
    [Arguments]       ${password}
    input text        ${SIGNIN_PASSWORD_FIELD}     ${password}

Click "Submit" Button
    click button       ${SIGNIN_CLICK_SUBMIT}