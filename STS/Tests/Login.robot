*** Settings ***
Library             SeleniumLibrary
Resource            ../Resources/Resources.robot

*** Variables ***
@{BROWSERS}     chrome      firefox        safari

*** Test Cases ***
Wachtwoord vergeten link href
    :FOR  ${browser}  IN   @{BROWSERS}
    \    START ${browser} AND MAXIMIZE
    \    CLICK LINK                  xpath=//a[@href="/register"]
    \    SLEEP  5
    \    LOCATION SHOULD BE          https://sts-dev.slmndr.be/register
    \    close browser

#Registreer link href
#    :FOR  ${browser}  IN   @{BROWSERS}
#        \   START ${BROWSER} AND MAXIMIZE
#        \   CLICK LINK                  xpath=//a[@href="/register"]
#        \   LOCATION SHOULD BE          https://sts-dev.slmndr.be/register
#        \   close browser

#    \    CLICK ELEMENT               //*[contains(text(), 'Vergeten')]
#    \    SLEEP 2
#    \    LOCATION SHOULD BE          https://sts-dev.slmndr.be/password/forgot