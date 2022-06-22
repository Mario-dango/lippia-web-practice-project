@Test_MyAccount
Feature: El usuario accede a la web

  Background:
    Given El usuario ingresa a la web Automation Practice
    When El usuario hace click en el botón "My Account" del menú
    And El usuario ingresa su username "mario.papetti"
    And El usuario ingresa su pasword "MarioPapetti2022"
    And El usuario hace click en el botón "Login"
    And El usuario verifica que ha ingreso correctamente a la web

  @Test_view_account
  Scenario: El usuario visualiza exitosamente su Dashboard
    And El usuario hace click en el botón "My Account" del menú
    Then El usuario verifica que se encuentra en su DashBoard

  @Test_view_account&orders
  Scenario: El usuario visualiza exitosamente sus ordenes de compras
    And El usuario hace click en el botón "My Account" del menú
    And El usuario hace click en el botón "Orders" del menú
    Then El usuario verifica que se encuentra en su lista de ordenes


  @Test_view_accountDetails
  Scenario: El usuario visualiza exitosamente los detalles de su cuenta
    And El usuario hace click en el botón "My Account" del menú
    And El usuario hace click en el botón "Account Details" del menú
    Then El usuario verifica que se encuentran los detalles de su cuenta


  @Test_Login_AfterThat_Logout
  Scenario: El usuarios ingresa exitosamente a su cuenta y cierra sesión exitosamente
    And El usuario hace click en el botón "Logout" del menú
    And El usuario vuelve a la pagina de login
    And El usuario hace click en el botón "My Account" del menú
    Then El usuario verifica que su sesión se ha cerrado exitosamente

