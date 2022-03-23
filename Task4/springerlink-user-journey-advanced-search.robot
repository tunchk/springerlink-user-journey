*** Settings ***
Library  OperatingSystem
Library  SeleniumLibrary

Resource  springerlink-keywords.robot

Suite Setup    Run Keywords    Open Springer Link Advanced Search    Check The Image
Suite Teardown    Close All Browsers

*** Test Cases ***

Advanced Search with All of The Words
    Open Springer Link Advanced Search
    Type In The Search Bar for AS- all the words
    Check The Search List for All The words

