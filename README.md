# 📚 SQL Livraria DB

## 📌 Descrição
Este projeto consiste na criação e manipulação de um banco de dados para uma livraria fictícia. Ele inclui três tabelas principais:

- **`autores`**: Contém informações sobre os autores.
- **`livros`**: Armazena dados dos livros disponíveis na livraria.
- **`vendas`**: Registra as vendas realizadas.

O projeto cobre conceitos fundamentais de SQL, como criação de tabelas, inserção de dados, consultas, joins e agregações.

## 🛠 Tecnologias Utilizadas
- **MySQL**

## 📂 Estrutura do Projeto
- `livraria.sql` → Contém toda a estrutura do banco de dados, desde a criação das tabelas até a inserção de dados e consultas SQL úteis.
- `README.md` → Arquivo explicativo sobre o projeto.

## 🚀 Como Utilizar

1. **Clone o repositório**
   ```sh
   git clone https://github.com/seu-usuario/SQL_Livraria_DB.git
   ```

2. **Acesse o diretório do projeto**
   ```sh
   cd SQL_Livraria_DB
   ```

3. **Abra o arquivo `livraria.sql` no seu SGBD (MySQL, MariaDB, etc.) e execute os comandos**

## 🔍 Consultas Úteis
### 📌 Selecionar todos os livros com seus respectivos autores
```sql
SELECT livros.titulo, autores.nome AS autor, livros.preco, livros.estoque
FROM livros
JOIN autores ON livros.id_autor = autores.id_autor;
```

### 📌 Consultar o total de vendas por livro
```sql
SELECT livros.titulo, SUM(vendas.quantidade) AS total_vendido
FROM vendas
JOIN livros ON vendas.id_livro = livros.id_livro
GROUP BY livros.titulo;
```

## 📄 Licença
Este projeto está sob a licença MIT.
