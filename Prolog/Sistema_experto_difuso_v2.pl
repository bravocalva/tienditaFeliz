:- dynamic si/1, prob_si/1, no_lo_se/1, prob_no/1, no/1.

/* Inicia el sistema experto */
go :-
    write('Bienvenido al sistema experto de artistas de regional Mexicano'), nl,
    write('Responde las siguientes preguntas con "si", "no", "probablemente si", "probablemente no" o "no lo se".'), nl,
    hypothesize(Artista),
    write('Mi suposicion es que el artista es: '),
    write(Artista),
    nl,
    undo.

/* Hipotesis a ser probadas */
hypothesize('Fuerza Regida') :- fuerza_regida, !.
hypothesize('Vicente Fernandez') :- vicente_fernandez, !.
hypothesize('Eslabon Armado') :- eslabon_armado, !.
hypothesize('Ariel Camacho') :- ariel_camacho, !.
hypothesize('DannyLux') :- dannylux, !.
hypothesize('Desconocido'). /* Si no se puede identificar */

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

/* Reglas de clasificación */
grupo :- verify(tiene_integrantes), !.
solista :- verify(es_solista), !.

/* Preguntar sobre características */
ask(Question) :-
    write('¿El artista tiene la siguiente caracteristica: '),
    write(Question),
    write('? '),
    read(Response),
    nl,
    ( (Response == si ; Response == s)
      ->
       assert(si(Question)) ;
       (Response == probablemente_si ; Response == ps)
      ->
       assert(prob_si(Question)) ;
       (Response == no_lo_se ; Response == nls)
      ->
       assert(no_lo_se(Question)) ;
       (Response == probablemente_no ; Response == pn)
      ->
       assert(prob_no(Question)) ;
       assert(no(Question)), fail).

/* Verificar respuestas */
verify(S) :-
    (si(S)
     ->
     true ;
     (prob_si(S)
      ->
      true ;
      (no_lo_se(S)
       ->
       true ;
       (prob_no(S)
        ->
        fail ;
        (no(S)
         ->
         fail ;
         ask(S)))))).

/* Deshacer todas las afirmaciones */
undo :- retract(si(_)),fail.
undo :- retract(prob_si(_)),fail.
undo :- retract(no_lo_se(_)),fail.
undo :- retract(prob_no(_)),fail.
undo :- retract(no(_)),fail.
undo.
