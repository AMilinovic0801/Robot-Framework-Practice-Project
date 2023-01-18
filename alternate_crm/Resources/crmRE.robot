*** Settings ***
Resource    ../Resources/PO/Home.robot
Resource    ../Resources/PO/AddCustomer.robot
Resource    ../Resources/PO/Customers.robot
Resource    ../Resources/PO/LogedOut.robot
Resource    ../Resources/PO/SignIn.robot
Resource    ../Resources/PO/TopNav.robot
*** Variables ***



*** Keywords ***
crmRE.Go to "Home" page
    Home.Navigate to
    Home.Verify Page Contains

Log in with valid credentials
    [Arguments]    ${valid_credentials}
    TopNav.Click "Sign In" link
    SignIn.Verify Page Contains
    SignIn.Login with valid credentials     ${valid_credentials}
    Customers.Verify Page Contains

Add "New Customer"
    [Arguments]    ${valid_new_user}
    Customers.Click "New Customer" button
    AddCustomer.Verify Page Contains
    AddCustomer.Add "New User" information      ${valid_new_user}
    Customers.Verify Customer Added

Sign Out
    TopNav.Click "Sign Out" button
    LogedOut.Verify Page Contains

