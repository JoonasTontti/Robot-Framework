
***Settings****
Resource        ../Resources/Testi.resource
Suite Setup     Test Suite Setup
Suite Teardown  CloseAllBrowsers

***Test Cases***
Verkkokaupan etusivu ja kirjautuminen
    Siirrytään verkkokaupan etusivulle
    Kirjautuminen
    

valitaan ostettavat tuotteet
    Valitaan tuotteet
    Maksetaan tuotteet

Palataan tuotesivulle
    Palataan tuotesivulle
