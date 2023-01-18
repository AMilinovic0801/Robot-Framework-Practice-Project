*** Settings ***
Documentation   Training project using a mock website.
Resource        ../Resources/Common.robot
Resource        ../Resources/crmRE.robot
Test Setup      Common.Begin web test
Test Teardown   Common.End web test

*** Variables ***
${BROWSER} =                    chrome
${BASE_URL} =                   https://automationplayground.com/crm
&{VALID_LOGIN_CREDENTIALS}      Email=admin@example.com     Password=test
&{CREATE_NEW_VALID_USER}        Email=mile@example.com      Name=Mile       LastName=Milic      City=Split      State=NY        Gender=male


*** Test Cases ***
User should be able to load the home page
    [Documentation]     Testing Login feature.
    [Tags]              1001    Smoke       HomePage

    crmRE.Go to "Home" page

User should be able to Log in with valid credentials
    [Documentation]     Testing Login feature.
    [Tags]              1002    Smoke       Login

    crmRE.Go to "Home" page
    crmRE.Log in with valid credentials     ${VALID_LOGIN_CREDENTIALS}

User should be able to Sign out
    [Documentation]     Testing Logout feature.
    [Tags]              1003    Smoke       Login

    crmRE.Go to "Home" page
    crmRE.Log in with valid credentials     ${VALID_LOGIN_CREDENTIALS}
    crmRE.Sign Out

User should be able to Add a new customer
    [Documentation]     Adding a new customer.
    [Tags]              1004    Smoke       AddCustomer

    crmRE.Go to "Home" page
    crmRE.Log in with valid credentials     ${VALID_LOGIN_CREDENTIALS}
    crmRE.Add "New Customer"                ${CREATE_NEW_VALID_USER}
    crmRE.Sign Out






