# Projekty Gwei.cz DAO

<% for pn, p in dao['projects'] %>
## Gwei.cz Maintenance

* Git repozitář: <<%= p['repo'] %>>

Záměr:
* <%= p['purpose'] %>

### Součásti
<% for part in p['parts'] %>
* <%= part['name'] %> (su: <%= part['su'].join(', ') %>)<% if part['url'] %> ([link](<%= part['url'] %>))<% end %><% end %>

<% end %>
