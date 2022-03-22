*** Settings ***
Library  OperatingSystem
Library  SeleniumLibrary

*** Keywords ***
Open Springer Link
    Open Browser   https://link.springer.com/    headlesschrome

Check The Availability of Search Bar
    Element Should Be Visible   xpath://*[@id="query"]

Click on Springer Link Search Button
    Click Button    xpath://*[@id="search"]

Run Check Points for EmptySearch
    Page Should Contain    ${ButtonText}
    Page Should Contain    ${FilterHeader}

*** Variables ***

${ButtonText}    New Search
${FilterHeader}     Refine Your Search