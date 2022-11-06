*** Settings ***
Resource  basePage.robot

*** Variables ***
${ABOUTUS}=       xpath://*[@id="about"]/ul[1]/li[4]/a
${ABOUTUS_TXT}= xpath://*[@id="contentArea"]/div/div[2]/div/div[1]/p[2]/text()

*** Keywords ***

Go To Home
    Click Element  ${ABOUTUS}

Get Smartphones text
    Wait Until Element Is Visible  ${ABOUTUS_TXT}
    ${text}=  Get Text  ${ABOUTUS_TXT}
    [Return]  ${text}
