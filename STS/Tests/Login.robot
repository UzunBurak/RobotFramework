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

    Open Browser      https://sts-dev.slmndr.be    headlesschrome
    Maximize Browser Window


    WAIT UNTIL ELEMENT IS VISIBLE   xpath=//a[@href="/register"]
    CLICK ELEMENT                    //*[contains(text(), 'Registrer')]
    LOCATION SHOULD BE              https://sts-dev.slmndr.be/register
    close browser