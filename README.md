# 🏁 Entrega - Banco de Dados de Livraria

## Introdução

Nesta entrega, colocaremos em prática nossos conhecimentos, criando o banco de dados representado no diagrama abaixo:

![](https://media.graphassets.com/cSpJqTFQii4EqdOtht8g)

Além da criação do banco de dados e suas respectivas tabelas, será necessário também trabalharmos todos os tipos diferentes de consulta: inserção, leitura, atualização e exclusão.

## Passo a passo

### Criação do Banco de Dados e Tabelas

Crie uma pasta nomeada "sql" em seu projeto, dentro desta pasta crie um arquivo chamado "database.sql". Em seguida, escreva o comando de criação de cada uma das tabelas, seguindo as orientações abaixo:
- Certifique-se de que todos os relacionamentos entre tabelas tenham a referência de chave estrangeira.

- Na relação entre "books" e "categories," a cláusula "ON DELETE" para ambas as chaves estrangeiras deve ser definida como "CASCADE". Isso permitirá que, caso um livro ou categoria seja excluído, o relacionamento seja excluído automaticamente.

- Na relação entre "authors" e "books", a cláusula "ON DELETE" deve ser definida como "SET NULL". Isso garantirá que, caso um autor seja excluído, o valor da chave de relacionamento seja alterado para null.

- Na relação entre "authors" e "contact_infos", a cláusula "ON DELETE" deve ser definida como "CASCADE". Assim, se um autor for excluído, as informações de contato relacionadas a ele também serão excluídas.

Após escrever todos os comandos de criação de tabela, teste cada um deles no terminal para garantir que não há erros sintáticos e que as relações estejam configuradas corretamente.

### Inserindo dados

Crie um arquivo chamado "insertData.sql" e escreva um comando SQL para cada inserção de dados mencionada abaixo.

Cada comando de inserção deve ser escrito com a cláusula "RETURNING".

### Autores

Insira os seguintes autores na tabela "authors":

|name              |bio                                                                                                                                       |
|---               |---                                                                                                                                       |
|Eiichiro Oda      |Eiichiro Oda em um mangaká conhecido pela criação do mangá One Piece.                                                                     |
|J.K. Rowling      |J. K. Rowling é uma escritora, roteirista e produtora cinematográfica britânica, notória por escrever a série de livros Harry Potter.     |
|Osvaldo Silva     |Autor e compositor brasileiro.                                                                                                            |

### Livros

Insira os seguintes livros na tabela "books":

|name                    |pages    |createdAt         |updatedAt          |authorId         |
|---                     |---      |---               |---                |---              |
|Harry Potter            |325     |data atual         |data atual         |2 (J.K. Rowling) |
|Jogos Vorazes           |276     |data atual         |data atual         |null             |
|One Piece - Volume 1    |120     |data atual         |data atual         |null             |
|One Piece - Volume 2    |137     |data atual         |data atual         |null             |

### Categorias

Insira as seguintes categorias na tabela "categories":

| name     | createdAt   | updatedAt |
|---       |---          |---        |
| Mangá    | data atual | data atual |
| Aventura | data atual | data atual |
| Fantasia | data atual | data atual |

## Relacionamentos entre livros e categorias

Registre os seguintes relacionamentos na tabela "books_categories":

Na categoria "Aventura", deverão estar os livros:

- Harry Potter
- Jogos Vorazes
- One Piece - Volume 1
- One Piece - Volume 2

Na categoria "Fantasia", deverão os livros:

- Harry Potter
- One Piece - Volume 1
- One Piece - Volume 2

Na categoria "Mangá", deverá estar o livro:

- One Piece - Volume 1
- One Piece - Volume 2

### Relacionamento entre autores e dados de contato

Na tabela "contact_infos," insira as seguintes informações:

| phone          | email                       | authorId          |
|---             |---                          |---                |
| (44)99123-4567 | osvaldo@osvaldocompany.com  | 3 (Osvaldo Silva) |

## Lendo dados

Em um arquivo chamado "selectData.sql", escreva os comandos SQL das consultas solicitadas abaixo:

- Leitura de todos os livros.
- Leitura de todos os livros da categoria "Fantasia".
- Leitura de todos os livros com suas respectivas categorias, renomeando colunas para evitar conflito entre chaves.
- Leitura do livro "Harry Potter" com as informações do autor, renomeando colunas para evitar conflito entre chaves.

## Atualizando dados

Em um arquivo chamado "updateData.sql", escreva os comandos das atualizações solicitadas abaixo:

- Atualização do nome do livro "Harry Potter" para "Harry Potter e o Prisioneiro de Azkaban".
- Atualização de ambos os volumes de One Piece, relacionando o autor Eiichiro Oda com ambos.

## Excluindo de dados

Em um arquivo chamado "deleteData.sql", escreva o comando de exclusão abaixo:

- Exclusão do livro "Jogos Vorazes".
- Exclusão da autora "J. K. Rowling".
- Exclusão do autor "Osvaldo Silva".

## Finalização

Por fim, execute todos os comandos na ordem especificada. Se tudo for feito corretamente e não houver erros sintáticos, isso indicará que a entrega foi realizada com êxito. 