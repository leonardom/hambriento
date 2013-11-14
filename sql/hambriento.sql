SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

CREATE SCHEMA IF NOT EXISTS `hambriento` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ;
USE `hambriento` ;

-- -----------------------------------------------------
-- Table `hambriento`.`Estabelecimentos`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `hambriento`.`Estabelecimentos` (
  `id` INT NOT NULL AUTO_INCREMENT ,
  `nome` VARCHAR(45) NOT NULL ,
  `cnpj` VARCHAR(20) NOT NULL ,
  `nomeFantasia` VARCHAR(45) NOT NULL ,
  `email` VARCHAR(45) NOT NULL ,
  PRIMARY KEY (`id`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `hambriento`.`Clientes`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `hambriento`.`Clientes` (
  `id` INT NOT NULL AUTO_INCREMENT ,
  `nomeCompleto` VARCHAR(45) NOT NULL ,
  `dataNascimento` DATE NOT NULL ,
  `rg` VARCHAR(10) NOT NULL ,
  `cpf` VARCHAR(12) NOT NULL ,
  `email` VARCHAR(45) NOT NULL ,
  PRIMARY KEY (`id`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `hambriento`.`Telefones`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `hambriento`.`Telefones` (
  `id` INT NOT NULL AUTO_INCREMENT ,
  `ddd` VARCHAR(3) NOT NULL ,
  `numero` VARCHAR(10) NOT NULL ,
  `Estabelecimentos_id` INT NOT NULL ,
  `Clientes_id` INT NOT NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_Telefones_Estabelecimentos_idx` (`Estabelecimentos_id` ASC) ,
  INDEX `fk_Telefones_Clientes1_idx` (`Clientes_id` ASC) ,
  CONSTRAINT `fk_Telefones_Estabelecimentos`
    FOREIGN KEY (`Estabelecimentos_id` )
    REFERENCES `hambriento`.`Estabelecimentos` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Telefones_Clientes1`
    FOREIGN KEY (`Clientes_id` )
    REFERENCES `hambriento`.`Clientes` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `hambriento`.`Enderecos`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `hambriento`.`Enderecos` (
  `id` INT NOT NULL AUTO_INCREMENT ,
  `logradouro` VARCHAR(50) NOT NULL ,
  `numero` VARCHAR(10) NOT NULL ,
  `complemento` VARCHAR(30) NOT NULL ,
  `bairro` VARCHAR(30) NOT NULL ,
  `cep` VARCHAR(9) NOT NULL ,
  `cidade` VARCHAR(45) NOT NULL ,
  `estado` VARCHAR(2) NOT NULL ,
  `latitude` FLOAT NOT NULL ,
  `longitude` FLOAT NOT NULL ,
  `Estabelecimentos_id` INT NOT NULL ,
  `Clientes_id` INT NOT NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_Enderecos_Estabelecimentos1_idx` (`Estabelecimentos_id` ASC) ,
  INDEX `fk_Enderecos_Clientes1_idx` (`Clientes_id` ASC) ,
  CONSTRAINT `fk_Enderecos_Estabelecimentos1`
    FOREIGN KEY (`Estabelecimentos_id` )
    REFERENCES `hambriento`.`Estabelecimentos` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Enderecos_Clientes1`
    FOREIGN KEY (`Clientes_id` )
    REFERENCES `hambriento`.`Clientes` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `hambriento`.`Cardapio`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `hambriento`.`Cardapio` (
  `id` INT NOT NULL AUTO_INCREMENT ,
  PRIMARY KEY (`id`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `hambriento`.`Produto`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `hambriento`.`Produto` (
  `id` INT NOT NULL AUTO_INCREMENT ,
  PRIMARY KEY (`id`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `hambriento`.`itemsCardapio`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `hambriento`.`itemsCardapio` (
  `Cardapio_id` INT NOT NULL ,
  `Produto_id` INT NOT NULL ,
  PRIMARY KEY (`Cardapio_id`, `Produto_id`) ,
  INDEX `fk_Cardapio_has_Produto_Produto1_idx` (`Produto_id` ASC) ,
  INDEX `fk_Cardapio_has_Produto_Cardapio1_idx` (`Cardapio_id` ASC) ,
  CONSTRAINT `fk_Cardapio_has_Produto_Cardapio1`
    FOREIGN KEY (`Cardapio_id` )
    REFERENCES `hambriento`.`Cardapio` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Cardapio_has_Produto_Produto1`
    FOREIGN KEY (`Produto_id` )
    REFERENCES `hambriento`.`Produto` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `hambriento`.`Pedido`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `hambriento`.`Pedido` (
  `id` INT NOT NULL AUTO_INCREMENT ,
  `Clientes_id` INT NOT NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_Pedido_Clientes1_idx` (`Clientes_id` ASC) ,
  CONSTRAINT `fk_Pedido_Clientes1`
    FOREIGN KEY (`Clientes_id` )
    REFERENCES `hambriento`.`Clientes` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `hambriento`.`Pedido_has_itemsCardapio`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `hambriento`.`Pedido_has_itemsCardapio` (
  `Pedido_id` INT NOT NULL ,
  `itemsCardapio_Cardapio_id` INT NOT NULL ,
  `itemsCardapio_Produto_id` INT NOT NULL ,
  PRIMARY KEY (`Pedido_id`, `itemsCardapio_Cardapio_id`, `itemsCardapio_Produto_id`) ,
  INDEX `fk_Pedido_has_itemsCardapio_itemsCardapio1_idx` (`itemsCardapio_Cardapio_id` ASC, `itemsCardapio_Produto_id` ASC) ,
  INDEX `fk_Pedido_has_itemsCardapio_Pedido1_idx` (`Pedido_id` ASC) ,
  CONSTRAINT `fk_Pedido_has_itemsCardapio_Pedido1`
    FOREIGN KEY (`Pedido_id` )
    REFERENCES `hambriento`.`Pedido` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Pedido_has_itemsCardapio_itemsCardapio1`
    FOREIGN KEY (`itemsCardapio_Cardapio_id` , `itemsCardapio_Produto_id` )
    REFERENCES `hambriento`.`itemsCardapio` (`Cardapio_id` , `Produto_id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;



SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
