*** Settings ***
Resource  basePage.robot

*** Variables ***
${ABOUTUS_TXT}=       xpath://a[@class='smartphones']

*** Keywords ***
Get About Us Text
    Wait Until Element Is Visible  ${ABOUTUS_TXT}
    ${text}=  Get Text  ${ABOUTUS_TXT}
    [Return]  ${text}