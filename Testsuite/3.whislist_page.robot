*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/commons.robot


*** Test Cases ***
TC005
    Valid login
    sleep                               2s
    input text                          searchTerm    Atomic Habbit
    Press Keys                          name:searchTerm    ENTER
    click link                          link:Atomic Habits (EXP)
    sleep                               2s
    click element                       //a[contains(@class, 'btn btn-grey add-to-wishlist')]
    sleep                               2s
    click button                        //button[contains(@class, 'btn btn-primary btn-add pull-right')]
    sleep                               3s
    click element                       //a[@href="/account/wishlist?wishlistId=3986737"]
    sleep                               2s
    element should contain              //h2[contains(@class, 'item-title')]     Atomic Habits (EXP)
    close browser






