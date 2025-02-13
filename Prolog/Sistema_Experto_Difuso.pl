:- dynamic conocimiento/2.

% Hechos sobre artistas del regional mexicano
artista(natanael_cano).
artista(los_tigres_del_norte).
artista(chalino_sanchez).
artista(banda_ms).
artista(carim_leon).
artista(el_de_la_guitarra).

% Preguntas y manejo de respuestas
pregunta(genero_corridos_tumbados, '�El artista se dedica a los corridos tumbados?').
pregunta(genero_nortena, '�El artista se dedica a la m�sica norte�a?').
pregunta(genero_banda, '�El artista se dedica a la m�sica de banda?').
pregunta(genero_corridos, '�El artista se dedica a los corridos?').
pregunta(canta, '�El artista canta rancheras o corridos?').
pregunta(tiene_fama, '�El artista tiene fama?').
pregunta(origen_mexicano, '�El artista es de origen mexicano?').

respuesta(si, 1).
respuesta(ps, 1). % Aumentamos la puntuaci�n de "Probablemente s�"
respuesta(ns, 0).
respuesta(pn, -0.5). % Reducimos la penalizaci�n de "Probablemente no"
respuesta(no, -1).

preguntar_y_registrar(Atributo) :-
    pregunta(Atributo, Pregunta),
    write(Pregunta), nl,
    read(RespuestaUsuario),
    assertz(conocimiento(Atributo, RespuestaUsuario)).

% Suposici�n del artista
suposicion_artista(Artista) :-
    findall(Puntuacion, (
        conocimiento(Atributo, RespuestaUsuario),
        respuesta(RespuestaUsuario, PuntuacionUsuario),
        caracteristica_artista(Artista, Atributo, RespuestaArtista),
        respuesta(RespuestaArtista, PuntuacionArtista),
        Puntuacion is PuntuacionUsuario + PuntuacionArtista
    ), Puntuaciones),
    sum_list(Puntuaciones, Suma),
    Suma >= 0,
    write('El artista probablemente es: '), write(Artista), nl,
    retractall(conocimiento(_, _)).
suposicion_artista(_) :-
    write('No se puede determinar el artista con la informaci�n proporcionada.'), nl,
    retractall(conocimiento(_, _)).

% Hechos sobre caracter�sticas de los artistas
caracteristica_artista(natanael_cano, canta, si).
caracteristica_artista(natanael_cano, tiene_fama, si).
caracteristica_artista(natanael_cano, origen_mexicano, si).
caracteristica_artista(natanael_cano, genero_corridos_tumbados, si).

caracteristica_artista(los_tigres_del_norte, canta, si).
caracteristica_artista(los_tigres_del_norte, tiene_fama, si).
caracteristica_artista(los_tigres_del_norte, origen_mexicano, si).
caracteristica_artista(los_tigres_del_norte, genero_nortena, si).

caracteristica_artista(chalino_sanchez, canta, si).
caracteristica_artista(chalino_sanchez, tiene_fama, si).
caracteristica_artista(chalino_sanchez, origen_mexicano, si).
caracteristica_artista(chalino_sanchez, genero_corridos, si).

caracteristica_artista(banda_ms, canta, si).
caracteristica_artista(banda_ms, tiene_fama, si).
caracteristica_artista(banda_ms, origen_mexicano, si).
caracteristica_artista(banda_ms, genero_banda, si).

caracteristica_artista(carim_leon, canta, ps).
caracteristica_artista(carim_leon, tiene_fama, si).
caracteristica_artista(carim_leon, genero_nortena,si).
caracteristica_artista(carim_leon, origen_mexicano, si).

caracteristica_artista(el_de_la_guitarra, canta, si).
caracteristica_artista(el_de_la_guitarra, tiene_fama,ps).
caracteristica_artista(el_de_la_guitarra, origen_mexicano, si).
caracteristica_artista(el_de_la_guitarra, genero_corridos, si).

% Indicaciones para el usuario
instrucciones :-
    write('Bienvenido al sistema experto sobre artistas del regional mexicano.'), nl,
    write('Por favor, conteste las siguientes preguntas con una de las siguientes respuestas:'), nl,
    write('si, no, PS (Probablemente si), PN (Probablemente no), NS (No lo se)'), nl, nl.

% Flujo principal
inicio :-
    instrucciones,
    preguntar_y_registrar(genero_corridos_tumbados),
    preguntar_y_registrar(genero_nortena),
    preguntar_y_registrar(genero_banda),
    preguntar_y_registrar(genero_corridos),
    preguntar_y_registrar(canta),
    preguntar_y_registrar(tiene_fama),
    preguntar_y_registrar(origen_mexicano),
    artista(Artista),
    suposicion_artista(Artista).

:- inicio.
