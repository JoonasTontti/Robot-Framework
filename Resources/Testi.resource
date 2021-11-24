
***Settings****
Library        QWeb

***Variables***
${verkkokauppa_url}     https://www.saucedemo.com/
${BROWSER}              Chrome 
${DELAY}                1s


***Keywords***
Test Suite Setup
    OpenBrowser         about:blank     ${BROWSER} 
    SetConfig           SearchMode      draw
    SetConfig           Delay           ${DELAY}

Siirrytään Verkkokaupan etusivulle
    GoTo                ${verkkokauppa_url}
    VerifyText          performance

Kirjautuminen
    TypeText          Username    standard_user
    TypeText          Password    secret_sauce
    ClickItem         Login


Valitaan tuotteet
    ClickElement       xpath\=//*[@id\="add-to-cart-sauce-labs-bolt-t-shirt"]
    ClickElement       xpath\=//*[@id\="add-to-cart-sauce-labs-backpack"]
    ClickElement       xpath\=//*[@id\="shopping_cart_container"]

Maksetaan tuotteet
    ClickElement       xpath\=//*[@id\="checkout"]
    TypeText            firstName           Firstname
    TypeText            lastName            Lastname
    TypeText            postalCode          124551
    ClickElement       xpath\=//*[@id\="continue"]
    ClickElement       xpath\=//*[@id\="finish"]

Palataan tuotesivulle
    ClickElement       xpath\=//*[@id\="back-to-products"]
