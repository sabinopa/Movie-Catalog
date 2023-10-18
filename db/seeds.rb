Genre.destroy_all
Director.destroy_all
Movie.destroy_all

animation = Genre.create(name: "Animação")
drama = Genre.create(name: "Drama")
horror = Genre.create(name: "Terror")
romance = Genre.create(name: "Romance")

p "Created #{Genre.count} genres"

john_l = Director.create(name: "John Lasseter", nationality: "Americano", birth_date: "12/01/1957", genre_id: animation.id)
james_c = Director.create(name: "James Cameron", nationality: "Americano", birth_date: "16/08/1954", genre_id: drama.id)
jaume = Director.create(name: "Jaume Collet-Serra", nationality: "Americano", birth_date: "23/03/1974", genre_id: horror.id)
roger_m = Director.create(name: "Roger Michell", nationality: "Americano", birth_date: "05/06/1956", genre_id: romance.id)
kelsey = Director.create(name: "Kelsey Mann", nationality: "Americano", birth_date: "01/01/1970", genre_id: animation.id)

p "Created #{Director.count} directors"

Movie.create([
    {
        title: "Toy Story 1", 
        year: 1995, 
        summary: "O aniversário de Andy está chegando e os brinquedos estão nervosos. Afinal de contas, eles temem que um novo brinquedo possa substituí-los. Liderados por Woody, um caubói que é também o brinquedo predileto de Andy, eles montam uma escuta que lhes permite saber dos presentes ganhos. Entre eles está Buzz Lightyear, o boneco de um patrulheiro espacial, que logo passa a receber mais atenção do garoto. Isto aos poucos gera ciúmes em Woody, que tenta fazer com que ele caia atrás da cama. Só que o plano dá errado  e Buzz cai pela janela. É o início da aventura de Woody, que precisa resgatar Buzz também para limpar sua barra com os outros brinquedos.", 
        country: "EUA", 
        time: 81, 
        genre_id: animation.id, 
        director_id: john_l.id, 
        image: "https://br.web.img3.acsta.net/medias/nmedia/18/91/05/36/20127436.jpg", 
        status: 'published', 
        release: 'released'
    }, 
    {
        title: "Toy Story 2", 
        year: 1999, 
        summary: "Em Toy Story 2, Woody (Tom Hanks) tenta salvar um brinquedo que acaba indo parar num bazar de usados e termina por ser sequestrado por um colecionador de brinquedos, que pretende vendê-lo a um museu japonês. Na casa do sequestrador, descobre que foi o protagonista de um famoso seriado da TV de décadas atrás e conhece os demais integrantes de sua coleção. Enquanto isso, os demais brinquedos, liderador por Buzz Lightyear (Tim Allen), partem numa atrapalhada operação de resgate.", 
        country: "EUA", 
        time: 92, 
        genre_id: animation.id, 
        director_id: john_l.id, 
        image: "https://br.web.img2.acsta.net/medias/nmedia/18/91/05/37/20127443.jpg", 
        status: 'published', 
        release: 'released'
    },
    {
        title:"Titanic", 
        year: 1997,
        summary: "Jack Dawson (Leonardo DiCaprio) é um jovem aventureiro que, na mesa de jogo, ganha uma passagem para a primeira viagem do transatlântico Titanic. Trata-se de um luxuoso e imponente navio, anunciado na época como inafundável, que parte para os Estados Unidos. Nele está também Rose DeWitt Bukater (Kate Winslet), a jovem noiva de Caledon Hockley (Billy Zane). Rose está descontente com sua vida, já que sente-se sufocada pelos costumes da elite e não ama Caledon. Entretanto, ela precisa se casar com ele para manter o bom nome da família, que está falida. Um dia, desesperada, Rose ameaça se atirar do Titanic, mas Jack consegue demovê-la da ideia. Pelo ato ele é convidado a jantar na primeira classe, onde começa a se tornar mais próximo de Rose. Logo eles se apaixonam, despertando a fúria de Caledon. A situação fica ainda mais complicada quando o Titanic se choca com um iceberg, provocando algo que ninguém imaginava ser possível: o naufrágio do navio.",
        country: "EUA", 
        time: 254, 
        genre_id: drama.id, 
        director_id: james_c.id, 
        image: "https://br.web.img3.acsta.net/c_310_420/medias/nmedia/18/89/56/94/20055685.jpg", 
        status: 'published', 
        release: 'released'
    },
    {
        title: "A Casa de Cera", 
        year: 2005, 
        summary: "Carly (Elisha Cuthbert), Paige (Paris Hilton), Wade (Jared Padalecki), Nick (Chad Michael Murray) e mais dois amigos decidem viajar de carro para o maior campeonato universitário de futebol americano a ser realizado no ano. Durante a viagem eles decidem acampar à noite, planejando seguir adiante pela manhã. Um acidente com um motorista de caminhão assusta o grupo, que no dia seguinte descobre que o carro em que estavam foi danificado. Sem saída, eles aceitam uma carona até Ambrose, a cidade mais perto do local. Ao chegar chama a atenção do grupo a Casa de Cera de Trudy, a principal atração de Ambrose, que possui várias estátuas de cera bastante parecidas com pessoas de verdade. Porém o que eles não sabem é o motivo pelo qual as estátuas parecem tão reais.",
        country: "Australia", 
        time: 113, 
        genre_id: horror.id, 
        director_id: jaume.id, 
        image: "https://br.web.img2.acsta.net/c_310_420/medias/nmedia/18/92/64/78/20210636.jpg", 
        status: 'published', 
        release: 'released'
    },
    {
        title: "Um Lugar Chamado Notting Hill", 
        year: 1999, 
        summary: "Will (Hugh Grant), pacato dono de livraria especializada em guias de viagem, recebe a inesperada 
        visita de uma cliente muito especial: a estrela de cinema americana Anna Scott (Julia Roberts). Dois ou três encontros fortuitos mais tarde, Will e Anna iniciam um relacionamento 
        tenro, engraçado e cheio de idas e vindas.", 
        country: "EUA", 
        time: 124, 
        genre_id: romance.id,
        director_id: roger_m.id,
        image: "https://br.web.img3.acsta.net/c_310_420/medias/nmedia/18/91/21/99/20135051.jpg",
        status: 'draft', 
        release: 'released'
    },
    {
        title: "Divertida Mente 2", 
        year: 2024, 
        summary: "Sequência de Divertidamente em que o tempo passou e Riley cresceu, agora já tem corpo e mente de adolescente. Alegria, Raiva, Medo, Nojo e Tristeza são mais uma vez os protagonistas da história.", 
        country: "EUA", 
        genre_id: animation.id, 
        director_id: kelsey.id, 
        image: "https://br.web.img3.acsta.net/c_310_420/pictures/22/09/12/16/08/0836497.jpg",
        status: 'published', 
        release: 'not_released'
    },
    {
        title: "Um Lugar Chamado Notting Hill", 
        year: 1999, 
        summary: "Will (Hugh Grant), pacato dono de livraria especializada em guias de viagem, recebe a inesperada 
        visita de uma cliente muito especial: a estrela de cinema americana Anna Scott (Julia Roberts). Dois ou três encontros fortuitos mais tarde, Will e Anna iniciam um relacionamento 
        tenro, engraçado e cheio de idas e vindas.", 
        country: "EUA", 
        time: 124, 
        genre_id: romance.id,
        director_id: roger_m.id,
        image: "https://br.web.img3.acsta.net/c_310_420/medias/nmedia/18/91/21/99/20135051.jpg",
        status: 'draft', 
        release: 'released'
    },
    {
        title: "Divertida Mente 2", 
        year: 2024, 
        summary: "Sequência de Divertidamente em que o tempo passou e Riley cresceu, agora já tem corpo e mente de adolescente. Alegria, Raiva, Medo, Nojo e Tristeza são mais uma vez os protagonistas da história.", 
        country: "EUA", 
        genre_id: animation.id, 
        director_id: kelsey.id, 
        image: "https://br.web.img3.acsta.net/c_310_420/pictures/22/09/12/16/08/0836497.jpg",
        status: 'draft', 
        release: 'not_released'
    },
    {
        title: "Alma Rebelde", 
        year: 2025, 
        summary: "Em um futuro distópico, a última geração de jovens rebeldes luta contra um governo opressivo que controla seus pensamentos e emoções. Quando um misterioso líder emerge, eles embarcam em uma jornada épica para restaurar a liberdade da mente e do espírito.", 
        country: "Brasil", 
        genre_id: animation.id, 
        director_id: kelsey.id, 
        image: "https://i.pinimg.com/564x/b2/31/1c/b2311c57e657a6e3af32c93c17f871c1.jpg",
        status: 'published', 
        release: 'not_released'
    },
    {
        title: "As Estrelas que Choram", 
        year: 2026, 
        summary: "Sinopse: Em um planeta distante, as estrelas do céu noturno começam a emitir sons misteriosos, levando uma jovem astrofísica a uma jornada intergaláctica para desvendar o enigma por trás dessa sinfonia cósmica. No caminho, ela descobre segredos antigos que podem mudar o destino de sua civilização.", 
        country: "México", 
        genre_id: animation.id, 
        director_id: kelsey.id, 
        image: "https://i.pinimg.com/564x/e9/79/0f/e9790f150a623137274a547218d7f46c.jpg",
        status: 'published', 
        release: 'not_released'
    }
])


p "Created #{Movie.count} movies"
p "All done! :)"