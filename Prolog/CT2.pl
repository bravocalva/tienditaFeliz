/* Sistema experto para identificar artistas del regional mexicano */

:- dynamic si/1, no/1.

/* Punto de entrada principal */
go :- hypothesize(Artista),
      write('Mi suposición es que el artista es: '),
      write(Artista),
      nl,
      undo.

/* Hipótesis a ser probadas */
hypothesize('Vicente Fernandez')   :- vicente_fernandez, !.
hypothesize('Pepe Aguilar')        :- pepe_aguilar, !.
hypothesize('Jenni Rivera')        :- jenni_rivera, !.
hypothesize('Ana Gabriel')         :- ana_gabriel, !.
hypothesize('Los Tigres del Norte'):- los_tigres_del_norte, !.
hypothesize('Intocable')           :- intocable, !.
hypothesize('Paquita la del Barrio'):- paquita_la_del_barrio, !.
hypothesize('El Komander')         :- el_komander, !.
hypothesize('Julion Alvarez')      :- julion_alvarez, !.
hypothesize('Banda MS')            :- banda_ms, !.
hypothesize('Gerardo Ortiz')       :- gerardo_ortiz, !.
hypothesize('Los Invasores de Nuevo Leon'):- los_invasores, !.
hypothesize('Calibre 50')          :- calibre_50, !.
hypothesize('La Arrolladora Banda el Limon'):- la_arrolladora, !.
hypothesize('El Fantasma')         :- el_fantasma, !.
hypothesize('Christian Nodal')     :- christian_nodal, !.
hypothesize('Larry Hernandez')     :- larry_hernandez, !.
hypothesize('Los Huracanes del Norte'):- los_huracanes, !.
hypothesize('Ariel Camacho')       :- ariel_camacho, !.
hypothesize('La Adictiva')         :- la_adictiva, !.
hypothesize('Desconocido').             /* Si no se puede identificar */

/* Reglas de identificación de artistas */
vicente_fernandez :- masculino,
                     cantante,
                     rancheras,
                     verificar(tiene_apodo),
                     verificar(tiene_bebida_alcoholica),
                     verificar(tiene_muchos_albums),
                     verificar(tiene_tour).
pepe_aguilar      :- masculino,
                     cantante,
                     rancheras,
                     verificar(tiene_heredado_talento),
                     verificar(tiene_guitarra),
                     verificar(tiene_videos),
                     verificar(tiene_tour).
jenni_rivera      :- femenino,
                     cantante,
                     banda,
                     verificar(tiene_programa_tv),
                     verificar(tiene_bateria),
                     verificar(tiene_ritmo_lento),
                     verificar(tiene_millones_views).
ana_gabriel       :- femenino,
                     cantante,
                     rancheras,
                     verificar(tiene_voz_potente),
                     verificar(tiene_ritmo_lento),
                     verificar(tiene_lema),
                     verificar(tiene_bebida_alcoholica).
los_tigres_del_norte:- grupo,
                       nortenas,
                       verificar(tiene_tematicas_sociales),
                       verificar(tiene_acordeon),
                       verificar(tiene_muchos_anos),
                       verificar(tiene_videos).
intocable         :- grupo,
                     grupero,
                     verificar(tiene_trompeta),
                     verificar(tiene_tubas),
                     verificar(tiene_acordeon),
                     verificar(tiene_integrantes).
paquita_la_del_barrio:- femenino,
                        cantante,
                        rancheras,
                        verificar(tiene_lema),
                        verificar(tiene_ritmo_lento),
                        verificar(tiene_muchos_albums),
                        verificar(tiene_programa_tv).
el_komander       :- masculino,
                     cantante,
                     banda,
                     verificar(tiene_apodo),
                     verificar(tiene_tubas),
                     verificar(tiene_tematicas_sociales),
                     verificar(tiene_bebida_alcoholica).
julion_alvarez    :- masculino,
                     cantante,
                     banda,
                     verificar(tiene_caballo),
                     verificar(tiene_millones_views),
                     verificar(tiene_bateria),
                     verificar(tiene_programa_tv).
banda_ms          :- grupo,
                     banda,
                     verificar(tiene_versiones),
                     verificar(tiene_guitarra),
                     verificar(tiene_tematicas_sociales),
                     verificar(tiene_videos).
gerardo_ortiz     :- masculino,
                     cantante,
                     banda,
                     verificar(tiene_tatuajes),
                     verificar(tiene_ritmo_lento),
                     verificar(tiene_bebida_alcoholica),
                     verificar(tiene_millones_views).
los_invasores     :- grupo,
                     nortenas,
                     verificar(tiene_muchos_albums),
                     verificar(tiene_ritmo_lento),
                     verificar(tiene_guitarra),
                     verificar(tiene_trompeta).
calibre_50        :- grupo,
                     banda,
                     verificar(tiene_millones_views),
                     verificar(tiene_guitarra),
                     verificar(tiene_ritmo_rapido),
                     verificar(tiene_lema).
la_arrolladora    :- grupo,
                     banda,
                     verificar(tiene_espacio_en_el_corazon),
                     verificar(tiene_guitarra),
                     verificar(tiene_tematicas_sociales),
                     verificar(tiene_millones_views).
el_fantasma       :- masculino,
                     cantante,
                     nortenas,
                     verificar(tiene_capucha),
                     verificar(tiene_ritmo_rapido),
                     verificar(tiene_bebida_alcoholica),
                     verificar(tiene_tematicas_sociales).
christian_nodal   :- masculino,
                     cantante,
                     rancheras,
                     verificar(tiene_gorra),
                     verificar(tiene_guitarra),
                     verificar(tiene_videos),
                     verificar(tiene_tour).
larry_hernandez   :- masculino,
                     cantante,
                     banda,
                     verificar(tiene_pistola),
                     verificar(tiene_maquillaje),
                     verificar(tiene_millones_views),
                     verificar(tiene_ritmo_lento).
los_huracanes     :- grupo,
                     nortenas,
                     verificar(tiene_muchos_anos),
                     verificar(tiene_guitarra),
                     verificar(tiene_trompeta),
                     verificar(tiene_ritmo_rapido).
ariel_camacho     :- masculino,
                     cantante,
                     nortenas,
                     verificar(tiene_millon_views),
                     verificar(tiene_lema),
                     verificar(tiene_guitarra),
                     verificar(tiene_ritmo_rapido).
la_adictiva       :- grupo,
                     banda,
                     verificar(tiene_varias_voces),
                     verificar(tiene_guitarra),
                     verificar(tiene_millones_views),
                     verificar(tiene_ritmo_lento).

/* Reglas de clasificación */
masculino  :- verificar(tiene_voz_grave), !.
masculino  :- verificar(tiene_bigote).
femenino   :- verificar(tiene_voz_aguda), !.
femenino   :- verificar(tiene_maquillaje).
cantante   :- verificar(tiene_albums), !.
cantante   :- verificar(tiene_videos).
grupo      :- verificar(tiene_integrantes), !.
grupo      :- verificar(tiene_tour).
rancheras  :- verificar(tiene_ritmo_lento), !.
rancheras  :- verificar(tiene_guitarra).
banda      :- verificar(tiene_tubas), !.
banda      :- verificar(tiene_bateria).
nortenas   :- verificar(tiene_acordeon), !.
nortenas   :- verificar(tiene_bajo).
grupero    :- verificar(tiene_ritmo_rapido), !.
grupero    :- verificar(tiene_trompeta).

/* Predicado para hacer preguntas */
preguntar(Pregunta) :-
    write('¿El artista tiene la siguiente característica? '),
    write(Pregunta),
    write('? '),
    read(Respuesta),
    nl,
    ((Respuesta == si ; Respuesta == s)
      ->
       asserta(si(Pregunta)) ;
       asserta(no(Pregunta)), fail).

/* Predicado para verificar si una característica es verdadera */
verificar(Caracteristica) :-
   (si(Caracteristica)
    ->
    true ;
    (no(Caracteristica)
     ->
     fail ;
     preguntar(Caracteristica))).

/* Predicado para retractar (eliminar) todas las afirmaciones previas */
undo :- retract(si(_)),fail.
undo :- retract(no(_)),fail.
undo.
