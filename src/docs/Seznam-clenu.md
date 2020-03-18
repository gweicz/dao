# Seznam členů Gwei.cz DAO

Nickname | ETH adresa | Discord | Pozván členem | Členem od
---      | ---        | ---     | ---           | ---
<% for mn, m in dao['members'] %>
**<%= mn %>** | `<%= m['address'] %>` | <%= m['discord'] %> | - | -
<% end %>

