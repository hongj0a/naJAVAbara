drop user dotori cascade;
create user dotori identified by java;
grant connect, resource to dotori;
conn dotori/java;

show user;