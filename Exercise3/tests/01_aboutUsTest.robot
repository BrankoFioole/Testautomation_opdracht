*** Settings ***
Resource  ../pageObjects/basePage.robot
Resource  ../pageObjects/homePage.robot

Suite Setup  Open My Website
Suite Teardown  Close browser

*** Variables ***

*** Test Cases ***

Test About Us Page Contains Expected Text
    Go To Home
    ${text}=  Get Smartphones text
    Should Contain  ${text}  Beste smartphones


Test About Us Page Testimonials Contains Expected Header
    Go To About Us
    ${text}=  Get About Us Testimonial Header Text
    Should Contain  ${text}  TESTIMONIALS

