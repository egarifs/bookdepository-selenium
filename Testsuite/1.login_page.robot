*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${Browser}      chrome
${url}          https://www.bookdepository.com
${email}        ap_email
${passwd}       ap_password
${email_data}   ega.rifs@gmail.com
${pass_data}    @Bookdepository123

*** Test Cases ***
TC001
    Valid login
    element should contain              //li[contains(@class, 'desktop-only')]    Hello ega firdaus
    close browser

*** Keywords ***
Valid login
    Open Browser                        ${url}    ${Browser}
    maximize browser window
    click link                          //a[@href="/account/login/to/account"]
    sleep                               2s
    Wait Until Element Is Visible       tag:iframe
    Select Frame                        tag:iframe
    input text                          ${email}    ${email_data}
    input text                          ${passwd}    ${pass_data}
    click element                       signInSubmit

