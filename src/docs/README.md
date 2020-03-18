# Gwei.cz DAO

Jedná se o [autonomní decentralizovanou organizaci](https://en.wikipedia.org/wiki/Decentralized_autonomous_organization) (DAO), jejiž hlavní cíle jsou:
1. Správa a rozvoj [Gwei.cz](https://gwei.cz) komunity
2. Správa příspěvkového fondu (donates) a jeho přerozdělování


## Implementace

V současnou chvíli je DAO implementováno pomocí smart-kontraktů projektu [Aragon](https://aragon.org/) provozovaných na síti [Ethereum](https://ethereum.org/).

Adresa hlavního DAO smart-kontraktu:
* [`<%= dao['aragon']['dao']['address'] %>`](https://etherscan.io/address/<%= dao['core']['ens'][0] %>)
* ENS:
<% for name in dao['core']['ens'] %>  * `<%= name %>`
<% end %>

Webový interface: <% for url in dao['core']['frontend'] %>
* <<%= url %>><% end %>
