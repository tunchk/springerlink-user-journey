*** Settings ***
Library  OperatingSystem
Library  SeleniumLibrary
Library    Telnet

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

Type In The Search Bar PhraseMatchWord Parameter
    Input Text    xpath://*[@id="query"]    ${PhraseMatchWord}

Check The Search List Against The Phrase Match
    Page Should Contain  text  ${PhraseMatchWord}
    Page Should Contain Element    xpath://*[@id="results-list"]
    Comment    The Phrase Match Search Returned a List!

Type In The Search Bar for Stem 
    Input Text    xpath://*[@id="query"]    ${StemSearchWord}

Check The Search List Against The Stem Search
    Page Should Contain  text  ${StemSearchWord}
    Page Should Contain  text  ${StemSearchWord2}
    Page Should Contain  text  ${StemSearchWord3}
    Page Should Contain Element    xpath://*[@id="results-list"]
    Comment    The Stem Search Returned a List!

*** Variables ***

${ButtonText}    New Search
${FilterHeader}     Refine Your Search
${PhraseMatchWord}    Global Warming
${StemSearchWord}    Running
${StemSearchWord2}    Run
${StemSearchWord3}    Ran