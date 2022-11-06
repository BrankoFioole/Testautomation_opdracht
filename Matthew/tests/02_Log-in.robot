*** Settings ***
Resource  ../pageObjects/basePage.robot
Resource  ../pageObjects/homePage.robot
Resource  ../pageObjects/loginPage.robot

Suite Setup  Open My Website
Suite Teardown  Close browser

*** Variables ***

*** Test Cases ***

Test Can Log In
   Go To Home
   Click Signin Button
   Login Profile



