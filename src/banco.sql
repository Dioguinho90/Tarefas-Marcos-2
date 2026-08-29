CREATE DATABASE IF NOT EXISTS aula_crud; I

USE aula_crud;






CREATE TABLE IF NOT EXISTS produtos (
    id INT AUTO INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    preco DECIMAL(10,2) NOT NULL
);






INSERT INTO produtos (nome,preco)
VALUES
('Teclado', 150.00)
('Mouse',80.00)






DROP PROCEDURE IF EXISTS sp_listar_produtos;
DROP PROCEDURE IF EXISTS sp_cadastrar_produto;
DROP PROCEDURE IF EXISTS sp_atualizar_produto;
DROP PROCEDURE IF EXISTS sp_excluir_produto;





DELIMITER //

CREATE PROCEDURE sp_listar_produtos()
BEGIN

   SELECT
      id,
      nome,
      preco
FROM produtos
ORDER BY id;


END //

DELIMITER; 




DELIMITER//

CREATE PROCEDURE sp_cadastrar_produto(
    IN p_nome VARCHAR(100),
    IN p_preco DECIMAL(10,2)
)
BEGIN

  INSERT INTO produtos (
    nome,
    preco
)

VALUES (
    p_nome
    p_preco
);

END//
DELIMITER ;