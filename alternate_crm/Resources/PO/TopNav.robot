*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${TOP_NAV_SIGN_IN} =                xpath=//*[@id="SignIn"]
${TOP_NAV_CLICK_SIGN_OUT_BUTTON} =  xpath=/html/body/nav/ul/li/a

*** Keywords ***
Click "Sign In" link
    click link             ${TOP_NAV_SIGN_IN}

Click "Sign Out" button
    click link             ${TOP_NAV_CLICK_SIGN_OUT_BUTTON}