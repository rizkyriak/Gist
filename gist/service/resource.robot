***setting***

Library     Selenium2Library

*** Variables ***

${SLEEP}                    3s
***Keyword***
Login
    Click Element       xpath=//a[@class='HeaderMenu-link no-underline mr-3']
    Input Text          xpath=//input[@name='login']        ${USERNAME}
    Input Password      xpath=//input[@name='password']     ${PASSWORD}
    Click Element       xpath=//input[@name='commit']
    
