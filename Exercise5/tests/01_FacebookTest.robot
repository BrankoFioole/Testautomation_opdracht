*** Settings ***
Resource  ../pageObjects/basePage.robot
Resource  ../pageObjects/homePage.robot

Suite Setup  Open My Website
Suite Teardown  Close browser

*** Variables ***

*** Test Cases ***

Test Home Page Contains Facebook Link
    Go To Home
    Click On Facebook Link
    Should Arrive On Facebook

