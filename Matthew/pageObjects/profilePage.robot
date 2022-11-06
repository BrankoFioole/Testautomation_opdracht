*** Settings ***
Resource  basePage.robot

*** Variables ***

*** Keywords ***

Go To ProfilePage
  Click Element  ${PROFILEPAGE_BUTTON}
  Wait Until Element Is Visible  ${ADDCREDITS_BUTTON}

Add Credits


