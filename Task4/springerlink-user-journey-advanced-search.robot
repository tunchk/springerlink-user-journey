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
    Check The Search List for AS- All The words
    Comment    The search returned a list with having these keywords: ${AS-AllTheWords}

Advanced Search with Exact Phrase
    Open Springer Link Advanced Search
    Type In The Search Bar for AS- ExactPhrase
    Check The Search List for AS- Exact Phrase
    Comment    The search returned a list with having these keywords: ${AS-ExactPhrase}

Advanced Search with Title and Author
    Open Springer Link Advanced Search
    Type In The Search Bar for AS- Author And Title
    Check The Search List for AS- Title and Author
    Comment    The search returned a list with having these keywords: ${AS-Title}     ${AS-Author}