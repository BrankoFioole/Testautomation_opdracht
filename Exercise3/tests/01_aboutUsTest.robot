*** Settings ***
Resource  ../pageObjects/basePage.robot
Resource  ../pageObjects/homePage.robot
Resource  ../pageObjects/aboutUsPage.robot

Suite Setup  Open My Website
Suite Teardown  Close browser

*** Variables ***

*** Test Cases ***

Test Home Page Contains Expected Text
    Go To Home
    ${text}=  Get Smartphones text
    Should Contain  ${text}  Beste smartphones
    Sleep  2s


Test About Us Page
    Go To About Us
    Sleep  2s
    ${text}=  Get About Us Text
    Should Contain  ${text}  Zo helpen we je om te kiezen en het maximale uit je aankoop te halen.

