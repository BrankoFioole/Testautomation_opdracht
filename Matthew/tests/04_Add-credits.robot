*** Settings ***
Resource  ../pageObjects/basePage.robot
Resource  ../pageObjects/homePage.robot
Resource  ../pageObjects/loginPage.robot
Resource  ../pageObjects/profilePage.robot

Suite Setup  Open My Website
Suite Teardown  Close browser

*** Variables ***

*** Test Cases ***

Test Can Add Credits
  Go To Home
  Click Signin Button
  Login Profile
  Go To ProfilePage
  Add Credits



