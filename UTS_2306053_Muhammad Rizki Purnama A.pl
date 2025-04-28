% Fakta: gejala, hama, dan saran pengobatan
hama(daun_menguning, tungau).
hama(bercak_hitam,jamur_cercospora).
hama(daun_berlubang, kumbang_daun).
hama(tanaman_layu, rhizoctonia).

% Aturan: jika suatu gejala ada, tentukan hama
deteksi_hama :-
    write('Masukkan gejala tanaman yang dialami (gunakan huruf kecil dan underscore, akhiri dengan titik.)'), nl,
    write('Contoh input: [daun_menguning, daun_berlubang].'), nl,
    read(GejalaList),
    nl, process_gejala(GejalaList).

process_gejala([]).
process_gejala([Head|Tail]) :-
    ( hama(Head, Hama) ->
        format('Gejala ~w mengindikasikan kemungkinan terkena ~w.~n', [Head, Hama])     ;
        format('Gejala ~w tidak dikenali dalam sistem.~n', [Head])
    ),
    process_gejala(Tail).
