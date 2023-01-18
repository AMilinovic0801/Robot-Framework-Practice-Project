*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${ADD_CUSTOMER_PAGE_LOADED} =                   Add Customer
${ADD_CUSTOMER_FILL_EMAIL_FIELD} =              id=EmailAddress
${ADD_CUSTOMER_FILL_FIRST_NAME_FIELD} =         id=FirstName
${ADD_CUSTOMER_FILL_LAST_NAME_FIELD} =          id=LastName
${ADD_CUSTOMER_FILL_CITY_FIELD} =               id=City
${ADD_CUSTOMER_DROPDOWN_PICK_STATE} =           id=StateOrRegion
${ADD_NEW_CUSTOMER_SELECT_GENDER} =             gender
${ADD_NEW_CUSTOMER_SELECT_PROMO_CHECKBOX} =     name=promos-name
${ADD_NEW_CUSTOMER_CLICK_SUBMIT_BUTTON} =       Submit

*** Keywords ***
Verify Page Contains
    wait until page contains        ${ADD_CUSTOMER_PAGE_LOADED}

Add "New User" information
    [Arguments]    ${valid_new_user}
    Fill "Email"            ${valid_new_user.Email}
    Fill "First Name"       ${valid_new_user.Name}
    Fill "Last Name"        ${valid_new_user.LastName}
    Fill "City"             ${valid_new_user.City}
    Pick "State"            ${valid_new_user.State}
    Select "Gender"         ${valid_new_user.Gender}
    Select "Promotion check-box"
    Click "Submit" button

Fill "Email"
    [Arguments]                     ${email}
    input text                      ${ADD_CUSTOMER_FILL_EMAIL_FIELD}            ${email}

Fill "First Name"
    [Arguments]                     ${name}
    input text                      ${ADD_CUSTOMER_FILL_FIRST_NAME_FIELD}       ${name}

Fill "Last Name"
    [Arguments]                     ${surename}
    input text                      ${ADD_CUSTOMER_FILL_LAST_NAME_FIELD}        ${surename}

Fill "City"
    [Arguments]                     ${city}
    input text                      ${ADD_CUSTOMER_FILL_CITY_FIELD}             ${city}

Pick "State"
    [Arguments]                     ${state}
    select from list by value       ${ADD_CUSTOMER_DROPDOWN_PICK_STATE}         ${state}

Select "Gender"
    [Arguments]                     ${gender}
    select radio button             ${ADD_NEW_CUSTOMER_SELECT_GENDER}           ${gender}

Select "Promotion check-box"
    select checkbox                 ${ADD_NEW_CUSTOMER_SELECT_PROMO_CHECKBOX}

Click "Submit" button
    click button                    ${ADD_NEW_CUSTOMER_CLICK_SUBMIT_BUTTON}
