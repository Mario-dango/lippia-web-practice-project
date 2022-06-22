@Test_Shop
Feature: El usuario accede a las opciones de compra de la web

  Background:
    Given El usuario ingresa a la web Automation Practice
    When El usuario hace click en el botón "My Account" del menú
    And El usuario ingresa su username "mario.papetti"
    And El usuario ingresa su pasword "MarioPapetti2022"
    And El usuario hace click en el botón "Login"
    And El usuario verifica que ha ingreso correctamente a la web
