# Pravidla Gwei.cz DAO

## Organizace
1. Organizaci tvoří její *členové* (Viz. [Člen](#člen)).
1. Rozhodování v rámci organizace probíhá pomocí *hlasování* (viz. [Hlasování](#hlasování)).
1. Činnost organizace se dělí na jednotlivé *projekty* (viz. [Projekt](#projekt)).
1. Jakkákoliv změna pravidel organizace musí být odsouhlasená pomocí *hlasování*.

## Člen
1. Osoba nebo jiná organizace, která vlastní *Membership token* (viz. [Membership Token](#membership-token-gweimt)).
1. Je identifikován pomocí ETH adresy a nickname.
1. Seznam členů je publikovaný v separátním dokumentu [Seznam členů](Seznam-clenu.md).

## Membership token (GWEIMT)
1. *Člen* má přesně 1 GWEIMT.
1. Token je nepřeveditelný.
1. Odebrání tokenu, nebo přidání nového je nutné schválit pomocí *hlasování* (viz. [Hlasování](#hlasování)).

## Hlasování
1. Hlasování může vyvolat kterýkoliv *člen*.
1. Každý *člen* má právo hlasovat o každém návrhu.
1. Hlasování trvá 24 hodin (1 den).
1. Pro schválení návrhu musí být splněno následující:
    1. Počet kladných odpovědí musí být minimálně 51% (tzv. Support).
    1. Počet hlasujících musí být minimálně 15% ze všech *členů* (tzv. Minimal Approval).
    
## Žádost o členství
1. "Žádost o členství" (*žádost*) znamená vyvolání hlasování o přidělení *Membership tokenu* nečlenovi.
1. *Žádost* může podat každá osoba nebo organizace, která splní následující podmínky:
    1. Byl/a pozván současným *členem*.
    1. Je plně seznámen/a s pravidly *organizace*, případně s pravidly jednotlivých *projektů*, na kterých se chce podílet a je ochotný/á tyto pravidla respektovat. 
    1. Ověřil/a svojí identitu (ETH adresa a nickname) tím, že vytvořil/a digitální podpis následujícího textu pomocí svého privátího klíče a tento podpis přiložil/a k žádosti:
        * `Jsem seznámen s pravidly Gwei.cz DAO, zavazuji se tyto pravidla respektovat a chci se stát členem, <<NICKNAME>>`
    1. Zaplatil/a vstupní poplatek 10 DAI.
1. Každá *žádost* bude posouzena současnými *členy* pomocí *hlasování* (viz. [Hlasování](#hlasování)).

## Povinnosti člena
1. Musí dbát na zachování dobrého jména *organizace* a měl by jednat čestně ve vztahu k ní a obzvláště pokud jedná v jejím jménu.
1. Má povinnost platit každých 12 měsíců *členský poplatek*.
1. "Členský poplatek":
    1. Výše členského poplatku je 10 DAI.
    1. Poplatek se hradí pomocí depozitu dané čásky do Vault kontraktu (v rozhraní jako "Finance").
    1. Členský poplatek je nevratný.
1. Musí být seznámen se základními bezpečnostními pravidly a musí ochraňovat privátní klíč k jeho členské ETH adrese, nejlépe pomocí HW peněženky.

## Projekt
1. Projekt je záměr nějaké činnosti a/nebo její realizace.
1. Musí mít minimálně 1 *zůčastněného člena*, ale může jich být i více.
1. "Zúčastněný člen":
    1. Musí být *člen* *organizace*.
    1. Řídí samotný projekt a předkládá zásadní otázky k *hlasování*.
    1. Má právo podat *Žádost o finanční podporu*.
1. "Žádost o finanční podporu":
    1. Podává se pomocí vyvolání převodu financí (v rozhraní jako "Finance" → "New Transfer").
    1. Musí být doplněna detailní informací na co konkrétně se peníze použijí.
1. Má vlastní pravidla, které určují základní procesy v rámci projektu.
1. Jednotlivé projekty jsou sepsané v dokumentu [Projekty](Projekty.md).
