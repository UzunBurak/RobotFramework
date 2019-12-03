*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${URL}          https://sts-dev.slmndr.be

*** Keywords ***
START ${BROWSER} AND MAXIMIZE
    OPEN BROWSER      ${URL}      ${BROWSER}
    MAXIMIZE BROWSER WINDOW
    SLEEP   3