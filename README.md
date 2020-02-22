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

### Membership token (GWEIMT)
1. Každý člen má přesně 1 GWEIMT, který slouží k hlasování.
1. Token je nepřeveditelný.
1. Odebrání tokenu, nebo přidání nového je nutné schválit pomocí hlasování (viz. Hlasování).

### Hlasování
1. Hlasování může vyvolat kterýkoliv člen.
1. Každý člen má právo hlasovat o každém návrhu.
1. Hlasování trvá 24 hodin.
1. Pro schválení návrhu musí být splněno následující:
    1. Počet kladných odpovědí musí být minimálně 51% (*Support*).
    1. Počet hlasujících musí být minimálně 15% všech držitelů GWEIMT (*Minimal Approval*).
    
### Žádost o členství
1. "Žádost o členství" znamená vyvolání hlasování o přidělení GWEIMT tokenu nečlenovi.
1. Žádost může podat každý, kdo splní následující podmínky:
    1. Byl pozván současným členem.
    1. Souhlasí a je seznámen s pravidly DAO.
    1. Zaplatil členský poplatek 10 DAI.
1. Každá žádost bude posouzena současnými členy pomocí hlasování.

### Povinnosti člena
1. Člen by měl dbát na zachování dobrého jména organizace a měl by jednat čestně ve vztahu k ní a obzvláště pokud jedná v jejím jménu.
1. Členský poplatek:
    1. Každý člen má povinnost platit každých 12 měsíců členský poplatek.
    1. Výše členského poplatku je 10 DAI.
    1. Poplatek se hradí pomocí depozitu dané čásky do Vault kontraktu (v rozhraní jako "Finance").
