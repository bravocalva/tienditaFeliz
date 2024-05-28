:- dynamic yes/1, no/1.

/* Inicia el sistema experto */
go :-
    write('Bienvenido al sistema experto de artistas de regional Mexicano'), nl,
    write('Responde las siguientes preguntas con "si" o "no".'), nl,
    hypothesize(Artista),
    write('Mi suposicion es que el artista es: '),
    write(Artista),
    nl,
    undo.

/* Hipotesis a ser probadas */

hypothesize('Fuerza Regida')         :- fuerza_regida, !.
hypothesize('Vicente Fernandez')     :- vicente_fernandez, !.
hypothesize('Eslabon Armado')        :- eslabon_armado, !.
hypothesize('Ariel Camacho')         :- ariel_camacho, !.
hypothesize('DannyLux')              :- dannylux, !.
hypothesize('Hijos de Garcia')       :- hijos_de_garcia, !.
hypothesize('Natanael Cano')         :- natanael_cano, !.
hypothesize('Ovi')                   :- ovi, !.
hypothesize('Junior H')              :- junior_h, !.
hypothesize('Herencia de Patrones')  :- herencia_de_patrones, !.
hypothesize('El Komander')           :- el_komander, !.
hypothesize('Grupo Frontera')        :- grupo_frontera, !.
hypothesize('T3r Elemento')          :- t3r_elemento, !.
hypothesize('Xavi')                  :- xavi, !.
hypothesize('Oscar Cortez')          :- oscar_cortez, !.
hypothesize('Peso Pluma')            :- peso_pluma, !.
hypothesize('El de la Guitarra')     :- el_de_la_guitarra, !.
hypothesize('Enigma Norteno')        :- enigma_norteno, !.
hypothesize('Carin Leon')            :- carin_leon, !.
hypothesize('Los Tigres Del Norte')  :- los_tigres_del_norte, !.
hypothesize('Desconocido').             /* Si no se puede identificar */



/* Reglas para identificar artistas */

fuerza_regida :-
    grupo,
    verify(canta),
    verify(radica_en_EEUU),
    verify(influye_rap),
    verify(influye_trap),
    verify(colaboracion_con_MarshMellow).

vicente_fernandez :-
    solista,
    verify(canta),
    verify(ya_fallecio),
    verify(tiene_Apodo),
    verify(es_conocido_como_chente),
    verify(tiene_muchos_albums).


eslabon_armado :-
    grupo,
    verify(canta),
    verify(canta_ella_baila_sola),
    verify(radica_en_EEUU),
    verify(letras_de_amor_y_desamor),
    verify(canta_sierreño),
    verify(sonido_moderno).

ariel_camacho :-
    solista,
    solista,
    verify(canta),
    verify(ya_fallecio),
    verify(canta_sierreño),
    verify(muy_influyente_para_mas_artistas).

dannylux :-
    solista,
    verify(canta),
    verify(radica_en_EEUU),
    verify(influye_house),
    verify(presencia_en_redes).

hijos_de_garcia :-
    grupo,
    verify(canta),
    verify(enfoque_fresco),
    verify(estilo_moderno),
    verify(presencia_en_plataformas_digitales).

natanael_cano :-
    solista,
    verify(canta),
    verify(influye_trap),
    verify(es_el_num1_de_Mexico),
    verify(padre_de_corrido_tumbado).

ovi :-
    solista,
    verify(canta),
    verify(es_cubano),
    verify(versatil),
    verify(influye_trap),
    verify(estuvo_preso).

junior_h :-
    solista,
    verify(canta),
    verify(canta_sierreño),
    verify(influye_trap),
    verify(letras_melancolicas),
    verify(presencia_en_redes).

herencia_de_patrones :-
    grupo,
    verify(canta),
    verify(influye_rap),
    verify(influye_trap),
    verify(radica_en_EEUU),
    verify(estilo_unico).


 el_komander  :-
    solista,
    verify(canta),
    verify(tiene_Apodo),
    verify(tiene_tubas),
    verify(movimiento_alterado),
    verify(gusta_Choco_Krispis).

grupo_frontera :-
    grupo,
    verify(canta),
    verify(radica_en_EEUU),
    verify(originarios_de_Texas),
    verify(ritmo_bailable),
    verify(ritmo_norteño),
    verify(su_vocalista_usa_lentes).

t3r_elemento :-
    grupo,
    verify(canta),
    verify(enfoque_fresco),
    verify(estilo_moderno),
    verify(vocalista_con_bigotito).

xavi :-
    solista,
    verify(canta),
    verify(muy_joven),
    verify(nuevo_en_la_industria),
    verify(tiene_pocos_singles).

oscar_cortez :-
    solista,
    verify(canta),
    verify(versatilidad_musical),
    verify(letras_sentimentales),
    verify(potencial_de_colaboracion).

peso_pluma :-
    solista,
    verify(canta),
     verify(canta_ella_baila_sola),
    verify(presencia_en_redes),
    verify(reconocimiento_global),
    verify(salvo_el_Tecate_Pal_Norte),
    verify(compuso_La_People).

el_de_la_guitarra :-
    solista,
    verify(canta),
    verify(melodias_pegajosas),
    verify(ritmo_bailable),
    verify(presencia_en_eventos).

enigma_norteno :-
    grupo,
    verify(canta),
    verify(letras_nortenas),
    verify(sonido_tradicional),
    verify(empezo_en_2004).

carin_leon :-
    solista,
    verify(canta),
    verify(letras_romanticas),
    verify(ritmo_banda),
    verify(tiene_gran_barba).


los_tigres_del_norte :-
    grupo,
    verify(canta),
    verify(letras_nortenas),
    verify(tiene_tematicas_sociales),
    verify(letras_impactantes),
    verify(originarios_de_Sinaloa),
    verify(sonido_tradicional).



/* Reglas de clasificación */

grupo   :-   verify(tiene_integrantes), !.
solista :-   verify(es_solista), !.


/* Preguntar sobre características */
ask(Question) :-
    write('¿El artista tiene la siguiente caracteristica: '),
    write(Question),
    write('? '),
    read(Response),
    nl,
    ( (Response == si ; Response == s)
      ->
       assert(yes(Question)) ;
       assert(no(Question)), fail).

/* Verificar algo */
verify(S) :-
   (yes(S)
    ->
    true ;
    (no(S)
     ->
     fail ;
     ask(S))).

/* Deshacer todas las afirmaciones */
undo :- retract(yes(_)),fail.
undo :- retract(no(_)),fail.
undo.
