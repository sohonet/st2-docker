#!/bin/bash
crudini --set /etc/st2/st2.conf auth backend ldap
crudini --set /etc/st2/st2.conf auth backend_kwargs '{ "ldap_uri": "ldaps://ldap-uk.identity.sohonet.com", "bind_dn": "uid={username},ou=People,dc=sohonet,dc=internal", "bind_pw": "{password}", "user": { "search_filter": "(uid={username})", "base_dn": "ou=People,dc=sohonet,dc=internal", "scope": "subtree" }, "group": { "search_filter": "(&(|(cn=engineers)(cn=dev))(uniqueMember=uid={username},ou=People,dc=sohonet,dc=internal))", "base_dn": "ou=Groups,dc=sohonet,dc=internal", "scope": "subtree" } }'
