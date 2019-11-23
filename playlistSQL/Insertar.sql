--Inserta usuarios
insert into user(username, password) values("dani","123");
insert into user(username, password) values("oscoche","123");
insert into user(username, password) values("ivan","123");
insert into user(username, password) values("oscar","123");
insert into user(username, password) values("steven","123");
insert into user(username, password) values("mariete","123");
insert into user(username, password) values("alejandro","123");
insert into user(username, password) values("carmena","123");
insert into user(username, password) values("helmuth","123");

--Inserta pivit
insert into pivit(username, lugarvista) values("alicia","vallecas");
insert into pivit(username, lugarvista) values("ana","villaverde");
insert into pivit(username, lugarvista) values("pepa","vallecas");
insert into pivit(username, lugarvista) values("tata","vallecas");
insert into pivit(username, lugarvista) values("irene","gran via");
insert into pivit(username, lugarvista) values("noelia","retiro");

--Inserta playlist
insert into playlist(numpivits, user_iduser) values (0,1);
insert into playlist(numpivits, user_iduser) values (0,2);
insert into playlist(numpivits, user_iduser) values (0,3);
insert into playlist(numpivits, user_iduser) values (0,4);
insert into playlist(numpivits, user_iduser) values (0,5);
insert into playlist(numpivits, user_iduser) values (0,6);
insert into playlist(numpivits, user_iduser) values (0,7);
insert into playlist(numpivits, user_iduser) values (0,8);
insert into playlist(numpivits, user_iduser) values (0,9);

--Inserta playlist_has_pivit
-- En esta prueba hay 6 pivits
insert into playlist_has_pivit(playlist_idplaylist, pivit_idpivit) values (1,1);
insert into playlist_has_pivit(playlist_idplaylist, pivit_idpivit) values (1,2);
insert into playlist_has_pivit(playlist_idplaylist, pivit_idpivit) values (1,3);
insert into playlist_has_pivit(playlist_idplaylist, pivit_idpivit) values (1,4);
insert into playlist_has_pivit(playlist_idplaylist, pivit_idpivit) values (1,5);
insert into playlist_has_pivit(playlist_idplaylist, pivit_idpivit) values (1,6);
insert into playlist_has_pivit(playlist_idplaylist, pivit_idpivit) values (2,3);
insert into playlist_has_pivit(playlist_idplaylist, pivit_idpivit) values (2,4);
insert into playlist_has_pivit(playlist_idplaylist, pivit_idpivit) values (3,1);
insert into playlist_has_pivit(playlist_idplaylist, pivit_idpivit) values (4,2);
insert into playlist_has_pivit(playlist_idplaylist, pivit_idpivit) values (4,5);
insert into playlist_has_pivit(playlist_idplaylist, pivit_idpivit) values (4,6);