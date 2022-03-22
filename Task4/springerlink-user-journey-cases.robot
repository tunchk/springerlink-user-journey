*** Settings ***
Library  OperatingSystem
Library  SeleniumLibrary

Resource  springerlink-keywords.robot

*** Test Cases ***

Empty Search User Journey
    Open Springer Link
    Click on Springer Link Search Button
    Run Check Points for EmptySearch
    Close Browser

*** Variables ***


*** Keywords ***