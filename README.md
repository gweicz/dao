# Gwei.cz DAO

Jedná se o [autonomní decentralizovanou organizaci](https://en.wikipedia.org/wiki/Decentralized_autonomous_organization) (DAO), jejiž hlavní cíle jsou:
1. Správa a rozvoj [Gwei.cz](https://gwei.cz) komunity
2. Správa příspěvkového fondu (donates) a jeho přerozdělování


## Implementace

V současnou chvíli je DAO implementováno pomocí smart-kontraktů projektu [Aragon](https://aragon.org/) provozovaných na síti [Ethereum](https://ethereum.org/).

Adresa hlavního DAO smart-kontraktu:
* [`0x5967Ef9D887BebF21B184A4107E139645528B091`](https://etherscan.io/address/dao.gweicz.eth)
* ENS: `gweicz.aragonid.eth`, `dao.gweicz.eth`

Webový interface:
* https://mainnet.aragon.org/#/gweicz


## Pravidla

### Organizace
1. Organizaci tvoří její *členové* (Viz. Člen).
1. Rozhodování v rámci organizace probíhá pomocí *hlasování* (viz. Hlasování).
1. Činnost organizace se dělí na jednotlivé *projekty* (viz. Projekt).

### Člen
1. Osoba nebo jiná organizace, která vlastní *Membership token*.
1. Je identifikován pomocí ETH adresy, případně pomocí nickname.

### Membership token (GWEIMT)
1. *Člen* má přesně 1 GWEIMT.
1. Token je nepřeveditelný.
1. Odebrání tokenu, nebo přidání nového je nutné schválit pomocí *hlasování* (viz. Hlasování).

### Hlasování
1. Hlasování může vyvolat kterýkoliv *člen*.
1. Každý *člen* má právo hlasovat o každém návrhu.
1. Hlasování trvá 24 hodin (1 den).
1. Pro schválení návrhu musí být splněno následující:
    1. Počet kladných odpovědí musí být minimálně 51% (tzv. Support).
    1. Počet hlasujících musí být minimálně 15% ze všech *členů* (tzv. Minimal Approval).
    
### Žádost o členství
1. "Žádost o členství" (*žádost*) znamená vyvolání hlasování o přidělení *Membership tokenu* nečlenovi.
1. *Žádost* může podat každá osoba nebo organizace, která splní následující podmínky:
    1. Byl/a pozván současným *členem*.
    1. Je plně seznámen/a s pravidly *organizace*, případně s pravidly jednotlivých *projektů*, na kterých se chce podílet a je ochotný/á tyto pravidla respektovat. 
    1. Ověřil/a svojí identitu (ETH adresa a nickname) tím, že vytvořil/a digitální podpis následujícího textu pomocí svého privátího klíče a tento podpis přiložil/a k žádosti:
        * `Jsem seznámen s pravidly Gwei.cz DAO a chci se stát jejím členem: <<NICKNAME>>`
    1. Zaplatil/a vstupní poplatek 10 DAI.
1. Každá *žádost* bude posouzena současnými *členy* pomocí *hlasování*.

### Povinnosti člena
1. *Člen* by měl dbát na zachování dobrého jména *organizace* a měl by jednat čestně ve vztahu k ní a obzvláště pokud jedná v jejím jménu.
1. Každý *člen* má povinnost platit každých 12 měsíců *členský poplatek*.
1. "Členský poplatek":
    1. Výše členského poplatku je 10 DAI.
    1. Poplatek se hradí pomocí depozitu dané čásky do Vault kontraktu (v rozhraní jako "Finance").
    1. Členský poplatek je nevratný.

### Projekt
1. Projekt je záměr nějaké činnosti a/nebo její realizace.
1. Má svého vedoucího (*Vedoucí projektu*).
1. "Vedoucí projektu":
    1. Vedoucí projektu musí být člen *organizace*.
    1. Řídí samotný projekt a předkládá zásadní otázky k *hlasování*.
    1. Má právo podat *Žádost o finanční podporu*.
1. "Žádost o finanční podporu":
    1. Podává se pomocí vyvolání převodu financí (v rozhraní jako "Finance" → "New Transfer").
    1. Musí být doplněna detailní informací na co konkrétně se peníze použijí.
1. Má vlastní pravidla, které určují základní procesy v rámci projektu.
