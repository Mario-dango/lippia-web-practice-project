@Test_MyAccount
Feature: El usuario accede a la web

  Background:
    Given El usuario ingresa a la web Automation Practice
    When El usuario hace click en el botón "My Account" del menú
    And El usuario ingresa su username "mario.papetti"
    And El usuario ingresa su pasword "MarioPapetti2022"
    And El usuario hace click en el botón "Login"

  @Test_view_account
  Scenario: El usuario visualiza exitosamente su Dashboard
    And El usuario hace click en el botón "My Account" del menú
    Then El usuario verifica que se encuentra en su DashBoard

  @Test_view_account&orders
  Scenario: El usuario visualiza exitosamente sus ordenes de compras
    And El usuario hace click en el botón "My Account" del menú
    And El usuario hace click en el botón "Orders" del menú
    Then El usuario verifica que se encuentra en su lista de ordenes

