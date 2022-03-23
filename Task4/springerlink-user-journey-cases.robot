*** Settings ***
Library  OperatingSystem
Library  SeleniumLibrary

Resource  springerlink-keywords.robot

Suite Setup    Run Keywords    Open Springer Link    Check The Image    Check The Availability of Search Bar
Suite Teardown    Close All Browsers

*** Test Cases ***

Empty Search User Journey
    Open Springer Link
    Click on Springer Link Search Button
    Run Check Points for EmptySearch
    
Phrase Match Search
    Open Springer Link
    Type In The Search Bar PhraseMatchWord Parameter
    Click on Springer Link Search Button
    Check The Search List Against The Phrase Match

Stem Run Search
    Open Springer Link
    Type In The Search Bar for Stem
    Click on Springer Link Search Button
    Check The Search List Against The Stem Search

Term1 or Term2 Search
    Open Springer Link
    Type In The Search Bar for "OR" operator 
    Click on Springer Link Search Button
    Check The Search List Against the operator "OR" Search

Search Term1 without Term2 Search
    Open Springer Link
    Type In The Search Bar for "NOT" operator 
    Click on Springer Link Search Button
    Check The Search List Against the operator "NOT" Search

Search Term1 NEAR Term2 Search
    Open Springer Link
    Type In The Search Bar for "NEAR" operator 
    Click on Springer Link Search Button
    Check The Search List Against the operator "NEAR" Search

Wildcard * Search
    Open Springer Link
    Type In The Search Bar for Wild * Card Search
    Click on Springer Link Search Button
    Check The Search List Against the Wild * Card Search
    
# Check The Search List Against the Wild ? Card Search
# I did not wrote this test since the product is not returning correct list currently
# Besides it is similar to * wildsearch I will just change the parameters


*** Variables ***
#The variables are in the keywords file. The above file is to see how would the user behave. The parameters can be datadriven too.