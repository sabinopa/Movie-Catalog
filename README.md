# Movie Catalog in Ruby on Rails
Este é um projeto de catálogo de filmes desenvolvido em Ruby on Rails, com foco no aprendizado dos conceitos fundamentais do MVC (Model-View-Controller) e na implementação de rotas. O objetivo principal deste projeto é uma aplicação web que permite cadastrar e exibir informações sobre filmes, gêneros de filmes e diretores.

### Funcionalidades
- [x] Criar novos gêneros de filmes e editá-los conforme necessário;
- [x] Adicionar novos diretores e fazer edições quando necessário;
- [x] Adicionar informações detalhadas sobre os filmes, incluindo título, ano de lançamento, tempo de duração, sinopse, além de poster;
- [x] Visualizar lista de todos os gêneros de filmes cadastrados;
- [x] Ao acessar a tela de detalhes de um gênero específico, você pode ver uma lista de todos os filmes associados a esse gênero;
- [x] Visualizar lista de todos os diretores cadastrados;
- [x] Visualizar lista de todos os filmes cadastrados;
- [x] Ao clicar em um filme na lista, visualizar informações detalhadas sobre esse filme, como título, ano de lançamento, tempo de duração, sinopse, além de poster.

### Como executar o projeto 

Para executar esse projeto, você deve instalar a linguagem Ruby v3.2.2 e o framework Rails v7.0.8 em seu computador.

Em seguida, siga os passos abaixo: 

- Clone este repostório
```
git clone https://github.com/sabinopa/Movie-Catalog.git
```

- Abra o diretório pelo terminal 
```
cd movie-catalog
```

- Instale o Bundle pelo terminal 
```
bundle install
```

- Crie e popule o banco de dados 
```
rails db:migrate
rails db:seed
```

- Execute a aplicação 
```
rails server
```

- Acesse a aplicação no link http://localhost:3000/

