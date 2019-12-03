*** Settings ***
Library             SeleniumLibrary
Resource            ../Resources/Resources.robot

*** Variables ***
@{BROWSERS}     chrome      firefox        safari

*** Test Cases ***
#Wachtwoord vergeten link href
#    :FOR  ${browser}  IN   @{BROWSERS}
#    \       START ${browser} AND MAXIMIZE
#    \       WAIT UNTIL ELEMENT IS VISIBLE       //*[contains(text(), 'Vergeten')]
#    \       CLICK LINK                          //*[contains(text(), 'Vergeten')]
#    \       WAIT UNTIL LOCATION IS              https://sts-dev.slmndr.be/password/forgot
#    \       LOCATION SHOULD BE                  https://sts-dev.slmndr.be/password/forgot
#    \       close browser 

Registreer link href
    
    #Open Browser      https://sts-dev.slmndr.be    headlesschrome
    
    ${chrome_options} =     Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    Call Method    ${chrome_options}   add_argument    headless
    Call Method    ${chrome_options}   add_argument    disable-gpu
    Call Method    ${chrome_options}   add_argument    dump-down
    ${options}=     Call Method     ${chrome_options}    to_capabilities     

    Open Browser    https://sts-dev.slmndr.be    browser=chrome        desired_capabilities=${options}

    Maximize Browser Window


    WAIT UNTIL ELEMENT IS VISIBLE   xpath=//a[@href="/register"]
    CLICK ELEMENT                    //*[contains(text(), 'Registreer')]
    LOCATION SHOULD BE              https://sts-dev.slmndr.be/register
    close browser