*** Settings ***
Resource  ../pageObjects/basePage.robot
Resource  ../pageObjects/homePage.robot
Resource  ../pageObjects/aboutUsPage.robot

Suite Setup  Open My Website
Suite Teardown  Close browser

*** Variables ***

*** Test Cases ***

Test About Us Page Contains Expected Text
    Click Element  css:[title="Ja, ik accepteer cookies"]
    ${text}=  Get Text  xpath://a[@class='smartphones']
    Should Contain  ${text}  smartphones
