*** Settings ***
Resource  basePage.robot

*** Variables ***
${EMAIL_LOGIN_TXT}=       id:email
${PASSWORD_LOGIN_TXT}=    id:passwd
${LOGIN_BTN}=            id:SubmitLogin
${LOGIN_ERROR}=          css:.alert.alert-danger

*** Keywords ***
Log In With Account
    [Arguments]  ${emailaddress}=${EMPTY}  ${password}=${EMPTY}
    Wait Until Element Is Visible  ${EMAIL_LOGIN_TXT}
    Input Text  ${EMAIL_LOGIN_TXT}  ${emailaddress}
    Input Text  ${PASSWORD_LOGIN_TXT}  ${password}
    Click Element  ${LOGIN_BTN}

Get Login Error Message
    Wait Until Element Is Visible  ${LOGIN_ERROR}
    ${text}=  Get Text  ${LOGIN_ERROR}
    [Return]  ${text}
