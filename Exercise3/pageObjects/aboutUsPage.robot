*** Settings ***
Resource  basePage.robot

*** Variables ***
${ABOUTUS}=           css:ul[class='bulletSeparatedList'] li:nth-child(4) a:nth-child(1)
${ABOUTUS_TXT}=       xpath://p[contains(text(),'onafhankelijke expert')]

*** Keywords ***

Go To About Us
    Click Element  ${ABOUTUS}

Get About Us Text
    Wait Until Element Is Visible  ${ABOUTUS_TXT}
    ${text}=  Get Text  ${ABOUTUS_TXT}
    [Return]  ${text}
