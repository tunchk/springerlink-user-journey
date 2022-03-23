*** Settings ***
Library  OperatingSystem
Library  SeleniumLibrary

Resource  springerlink-keywords.robot

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


*** Variables ***
#The variables are in the keywords file. The above file is to see how would the user behave. The parameters can be datadriven too.