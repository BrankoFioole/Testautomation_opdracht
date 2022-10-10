*** Settings ***
Resource  basePage.robot

*** Variables ***
${LOGO}=             id:Logo
${FACEBOOK_LINK}=    xpath://*[@id="root"]/div/div[2]/footer/div/a[1]

*** Keywords ***

Go To Home
    Log  go to home
    Go To  ${BASE_URL}
    Wait Until Element Is Visible  ${LOGO}  10
    Log  home page is visible

Click On Facebook Link
    Log  click on Facebook
    Wait Until Element Is Visible  ${FACEBOOK_LINK}  10
    Click Element  ${FACEBOOK_LINK}

Should Arrive On Facebook
    Log  should arrive on facebook
    Switch Window  NEW
    Page Should Contain  Brightest NV
