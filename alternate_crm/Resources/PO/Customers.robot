*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${CUSTOMERS_VERIFY_PAGE_LOADED} =           Our Happy Customers
${CUSTOMERS_CLICK_NEW_CUSTOMER_BUTTON} =    xpath=//*[@id="new-customer"]
${CUSTOMERS_VERIFY_CUSTOMER_ADDED} =        Success! New customer added.
*** Keywords ***
Verify Page Contains
    wait until page contains    ${CUSTOMERS_VERIFY_PAGE_LOADED}

Click "New Customer" button
    click link                  ${CUSTOMERS_CLICK_NEW_CUSTOMER_BUTTON}

Verify Customer Added
    wait until page contains    ${CUSTOMERS_VERIFY_CUSTOMER_ADDED}