*** Settings ***
Resource  basePage.robot

*** Variables ***
${SIGNIN_LNK}=       css:.header_user_info > a
${ABOUTUS_LNK}=      css:[title='About us']

*** Keywords ***

Go To Home
    Click Element  css:[title="Ja, ik accepteer cookies"]
