select count(temp.foo) from ((select count(org) as foo from prenoms lateral view explode(prenoms.origin) origins as org group by prenoms.prenom) as temp) group by temp.foo;