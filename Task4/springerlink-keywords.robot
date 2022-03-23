*** Settings ***
Library  OperatingSystem
Library  SeleniumLibrary
Library    Telnet

*** Keywords ***
Open Springer Link
    Open Browser   ${BaseUrlOfSystemUnderTest}    ${TestBrowser}

Check the Image
    Element Should Be Visible    ${ImageXpath}

Check The Availability of Search Bar
    Element Should Be Visible   ${SearchBarXpath}

Click on Springer Link Search Button
    Click Button    ${SearchBarButtonXpath}

Run Check Points for EmptySearch
    Page Should Contain    ${ButtonText}
    Page Should Contain    ${FilterHeader}

Type In The Search Bar PhraseMatchWord Parameter
    Input Text    ${SearchBarXpath}    ${PhraseMatchWord}

Check The Search List Against The Phrase Match
    Page Should Contain  text  ${PhraseMatchWord}
    Page Should Contain Element    ${SearchResultListXpath}
    Comment    The Phrase Match Search Returned a List!

Type In The Search Bar for Stem 
    Input Text    ${SearchBarXpath}    ${StemSearchWord}

Check The Search List Against The Stem Search
    Page Should Contain  text  ${StemSearchWord}
    Page Should Contain  text  ${StemSearchWord2}
    Page Should Contain  text  ${StemSearchWord3}
    Page Should Contain Element    ${SearchResultListXpath}
    Comment    The Stem Search Returned a List!

Type In The Search Bar for "OR" operator
    Input Text    ${SearchBarXpath}    ${OrOperatorWord}

Check The Search List Against the operator "OR" Search
    Page Should Contain  text  ${OrOperatorWordCheck1} and ${OrOperatorWordCheck2}
    Page Should Contain Element    ${SearchResultListXpath}

Type In The Search Bar for "NOT" operator 
    Input Text    ${SearchBarXpath}    ${NotOperatorWord}

Check The Search List Against the operator "NOT" Search
    Page Should Contain  text  ${NotOperatorWordCheck1}
    Element Should Not Contain    ${SearchResultListXpath}    text  ${NotOperatorWordCheck2}
    Page Should Contain Element    ${SearchResultListXpath}
    Comment    The Not Operator Search Returned a List!

Type In The Search Bar for "NEAR" operator 
    Input Text    ${SearchBarXpath}    ${NearOperatorWord}

Check The Search List Against the operator "NEAR" Search
    Page Should Contain    text  ${NearOperatorWordCheck1}
    Element Should Contain   ${SearchResultListXpath}    ${NearOperatorWordCheck2}
    Page Should Contain Element    ${SearchResultListXpath}
    Comment    The NEAR Operator Search Returned a List!
    Comment    The Near Operator Search Result contains a result which satisfies the need! "${NearOperatorWordCheck2}"

Type In The Search Bar for Wild * Card Search
    Input Text    ${SearchBarXpath}    ${WildCardWord}

Check The Search List Against the Wild * Card Search
    Page Should Contain    text  ${WildCardWord}
    Element Should Contain   ${SearchResultListXpath}    ${WildCardWord1}
    Element Should Contain   ${SearchResultListXpath}    ${WildCardWord2}
    Element Should Contain   ${SearchResultListXpath}    ${WildCardWord3}
    Element Should Contain   ${SearchResultListXpath}    ${WildCardWord4} 
    Page Should Contain Element    ${SearchResultListXpath}
    Comment    The NEAR Operator Search Returned a List!
    Comment    The Near Operator Search Result contains a result which satisfies the need! "${WildCardWord1} or ${WildCardWord2} or ${WildCardWord3} or ${WildCardWord4}"

### Advanced Search Keywords Begin Below

Open Springer Link Advanced Search
    Open Browser   ${AS-BaseURL}    ${TestBrowser}

Type In The Search Bar for AS- all the words
    Input Text    ${AS-AllTheWordsTextBarXpath}    ${AS-AllTheWords}
    Press Keys    ${AS-AllTheWordsTextBarXpath}    ENTER

Check The Search List for AS- All The words
    Page Should Contain    text    ${AS-AllTheWords}
    Page Should Contain Element    ${SearchResultListXpath}
    Element Should Contain    ${SearchResultListXpath}    ${AS-AllTheWords}
    Comment   List results contain text ${AS-AllTheWords}

Type In The Search Bar for AS- ExactPhrase
    Input Text    ${AS-ExactPhraseTextBarXpath}    ${AS-ExactPhrase}
    Press Keys    ${AS-ExactPhraseTextBarXpath}    ENTER


Check The Search List for AS- Exact Phrase
    Page Should Contain    text    ${AS-ExactPhrase}
    Page Should Contain Element    ${SearchResultListXpath}
    Element Should Contain    ${SearchResultListXpath}    ${AS-ExactPhrase}
    Comment   List results contain text ${AS-ExactPhrase}

Type In The Search Bar for AS- Author And Title
    Input Text    ${AS-TitleXpath}    ${AS-Title}
    Input Text    ${AS-AuthorXpath}    ${AS-Author}
    Press Keys    ${AS-AuthorXpath}    ENTER

Check The Search List for AS- Title and Author
    Page Should Contain    text    ${AS-Title}
    Page Should Contain    text    ${AS-Author}
    Page Should Contain Element    ${SearchResultListXpath}
    Element Should Contain    ${SearchResultListXpath}    ${AS-Title}
    Comment   List results contain text ${AS-Title} and ${AS-Author}

*** Variables ***

${TestBrowser}    headlesschrome
${ImageXpath}    //*[@id="logo"]/img
${BaseUrlOfSystemUnderTest}    https://link.springer.com/
${SearchBarXpath}    xpath://*[@id="query"]
${SearchBarButtonXpath}    xpath://*[@id="search"]
${SearchResultListXpath}    xpath://*[@id="results-list"]
${ButtonText}    New Search
${FilterHeader}     Refine Your Search
${PhraseMatchWord}    Global Warming
${StemSearchWord}    Running
${StemSearchWord2}    Run
${StemSearchWord3}    Ran
${OrOperatorWord}    Wheat or Maize
${OrOperatorWordCheck1}    Wheat
${OrOperatorWordCheck2}    Maize
${NotOperatorWord}    Wheat NOT  Maize
${NotOperatorWordCheck1}    Wheat
${NotOperatorWordCheck2}    Maize
${NearOperatorWord}    Artificial NEAR Intelligence
${NearOperatorWordCheck1}    Artificial Intelligence
${NearOperatorWordCheck2}    Understanding the Artificial: On the Future Shape of Artificial Intelligence
${WildCardWord*}    Pro*
${WildCardWord*1}    Problem
${WildCardWord*2}    Progress
${WildCardWord*3}    Probability
${WildCardWord*4}    Prospects
### Below Variables belongs to the Advanced Search

### AS stands for Advanced Search
${AS-BaseURL}    https://link.springer.com/advanced-search
${AS-SearchButtonXpath}    css:#submit-advanced-search
${AS-AllTheWordsTextBarXpath}    xpath://*[@id="all-words"]
${AS-ExactPhraseTextBarXpath}    xpath://*[@id="exact-phrase"]
${AS-TitleXpath}    xpath://*[@id="title-is"]
${AS-AuthorXpath}    xpath://*[@id="author-is"]
${AS-AllTheWords}   intermittent fasting
${AS-ExactPhrase}   Global Warming
${AS-Author}     Nina Szogs
${AS-Title}    Galatasaray