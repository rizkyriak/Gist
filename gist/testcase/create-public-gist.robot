***setting***

Library     Selenium2Library
Resource        ../service/setting.robot
Resource        ../service/resource.robot
Test Setup      Setup Browser
# Test Teardown   Close browser

***Keyword***
Go To Gist
    Go To                   https://gist.github.com/
Create Gist
    Input Text              xpath=//input[@name='gist[description]']                Gist For Shopee
    Input Text              xpath=//input[@name='gist[contents][][name]']           Automation Test
    Set Focus To Element    xpath=//pre[@class=' CodeMirror-line ']
    Input Text              xpath=//div[@class='CodeMirror-code']/div/pre/span      Hello Word
    SLEEP                   ${SLEEP}
    Click Element           xpath=//button[@name='gist[public]']

Edit Gist
    Click Element           xpath=//a[@aria-label='Edit this Gist']
    Set Focus To Element    xpath=//pre[@class=' CodeMirror-line ']
    Input Text              xpath=//div[@class='CodeMirror-code']/div/pre/span      Hello Word, see you
    Click Element           xpath=//button[@class='btn btn-primary']

Delete Gist
    Click Element           xpath=//a[@aria-label='Delete this Gist']
    Press Key               None        ENTER
Show Gist List
    Page Should Contain      Automation Test   

***Test case***
Gist
    Login
    Go To Gist
    Create Gist
    Edit Gist
    Delete Gist
    Show Gist List


        



