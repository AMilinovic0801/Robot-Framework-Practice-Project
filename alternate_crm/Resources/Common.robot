*** Settings ***
Library    SeleniumLibrary

*** Variables ***


*** Keywords ***
Begin web test

    #Initialize Selenium
    #set selenium speed      0.2s
    set selenium timeout    10s

    #open the browser
    open browser                 about:blank        ${BROWSER}

End web test
    close all browsers

