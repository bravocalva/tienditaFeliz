/* Sistema experto para identificar artistas del regional mexicano */

:- dynamic si/1, no/1.

/* Punto de entrada principal */
go :- hypothesize(Artista),
      write('Mi suposición es que el artista es: '),
      write(Artista),
      nl,
      undo.

/* Hipótesis a ser probadas */

hypothesize('Intocable')           :- intocable, !.
hypothesize('Los Tigres del Norte'):- los_tigres_del_norte, !.
hypothesize('Vicente Fernandez')   :- vicente_fernandez, !.
hypothesize('Pepe Aguilar')        :- pepe_aguilar, !.
hypothesize('Jenni Rivera')        :- jenni_rivera, !.
hypothesize('Ana Gabriel')         :- ana_gabriel, !.
hypothesize('Paquita la del Barrio'):- paquita_la_del_barrio, !.
hypothesize('El Komander')         :- el_komander, !.
hypothesize('Julion Alvarez')      :- julion_alvarez, !.
hypothesize('Banda MS')            :- banda_ms, !.
hypothesize('Gerardo Ortiz')       :- gerardo_ortiz, !.
hypothesize('Los Invasores de Nuevo Leon'):- los_invasores, !.
hypothesize('Calibre 50')          :- calibre_50, !.
hypothesize('Eslabon Armado')      :- eslabon_armado, !.
hypothesize('Junior H')            :- junior_H, !.
hypothesize('Christian Nodal')     :- christian_nodal, !.
hypothesize('Larry Hernandez')     :- larry_hernandez, !.
hypothesize('Los Huracanes del Norte'):- los_huracanes, !.
hypothesize('Ariel Camacho')       :- ariel_camacho, !.
hypothesize('La Adictiva')         :- la_adictiva, !.
hypothesize('Desconocido').             /* Si no se puede identificar */

/* Reglas de identificación de artistas */


los_tigres_del_norte:- grupo,
                       nortenas,
                       verificar(tiene_tematicas_sociales),
                       verificar(tiene_corridos),
                       verificar(tiene_muchos_anios_en_la_industria).

vicente_fernandez :- masculino,
                     cantante,
                     rancheras,
                     verificar(tiene_apodo),
                     verificar(es_conocido_como_chente),
                     verificar(tiene_muchos_albums),
                     verificar(ya_fallecio).

pepe_aguilar      :- masculino,
                     cantante,
                     rancheras,
                     verificar(tiene_entradas_casi_pelon),
                     verificar(tiene_hija_cantante),
                     verificar(reside_en_EEUU).

jenni_rivera      :- femenino,
                     cantante,
                     banda,
                     verificar(fue_coach_en_la_Voz_Mexico),
                     verificar(compuso_la_gran_seniora),
                     verificar(hermana_de_Lupillo_Rivera),
                     verificar(ya_fallecio).

ana_gabriel       :- femenino,
                     cantante,
                     rancheras,
                     verificar(tiene_voz_potente),
                     verificar(tiene_ritmo_lento),
                     verificar(tiene_lema),
                     verificar(tiene_bebida_alcoholica).


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
                        verificar(desprecia_hombres).

el_komander       :- masculino,
                     cantante,
                     verificar(pertenece_movimiento_alterado),
                     verificar(tiene_tematicas_sociales),
                     verificar(tiene_su_propio_rancho),
                     verificar(gusta_de_choco_crispis).

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

eslabon_armado    :- grupo,
                     sierreno,
                     verificar(tiene_letras_desamor),
                     verificar(residen_en_EEUU),
                     verificar(tuvo_colaboracion_con_peso_pluma),
                     verificar(tiene_millones_views).

junior_H          :- masculino,
                     cantante,
                     sierreno,
                     verificar(residio_un_tiempo_en_EEUU),
                     verificar(tiene_letras_tristes),
                     verificar(es_joven).

christian_nodal   :- masculino,
                     cantante,
                     rancheras,
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

grupo      :- verificar(tiene_integrantes), !.
/* grupo      :- verificar(tiene_tour). */

masculino  :- verificar(tiene_voz_grave), !.
/* masculino  :- verificar(tiene_bigote). */
femenino   :- verificar(tiene_voz_aguda), !.
/* femenino   :- verificar(tiene_maquillaje). */
cantante   :- verificar(es_solista), !.
/* cantante   :- verificar(tiene_videos). */

rancheras  :- verificar(tiene_ritmo_lento), !.
/* rancheras  :- verificar(tiene_guitarra). */

sierreno   :- verificar(toca_sierreno), !.

banda      :- verificar(tiene_tubas), !.
/* banda      :- verificar(tiene_bateria). */
nortenas   :- verificar(tiene_acordeon), !.
/* nortenas   :- verificar(tiene_bajo). */
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
