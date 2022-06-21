@Test_Login
Feature: El usuario accede a la web


  Background:
    Given El usuario ingresa a la web Automation Practice
    When El usuario hace click en el botón "My Account" del menú

  @Test_login_success
  Scenario Outline: El usuario se logea correctamente con credenciales validas
    And El usuario ingresa su username "<Usuario>"
    And El usuario ingresa su pasword "<Clave>"
    And El usuario hace click en el botón "Login"
    Then El usuario verifica que ha ingreso correctamente a la web

    Examples:
      | Usuario                      | Clave               |
      | joel_prueba@test.com         | TestingCrowdar2022! |
      | mario.papetti@etec.um.edu.ar | MarioPapetti2022    |


  @Test_login_fail
  Scenario Outline:El usuario se logea con credenciales invalidas
    And El usuario ingresa su username "<Usuario>"
    And El usuario ingresa su pasword "<Clave>"
    And El usuario hace click en el botón "Login"
    And El usuario visualiza el error " A user could not be found with this email address."
    Then El usuario verifica que no pudo ingresar a la web

    Examples:
      | Usuario             | Clave               |
      | jodadadeba@test.com | TestingCrowdar2022! |


  @Test_login_fail_WEmpty_passw
  Scenario Outline:El usuario se logea con credenciales invalidas
    And El usuario ingresa su username "<Usuario>"
    And El usuario ingresa su pasword "<Clave>"
    And El usuario hace click en el botón "Login"
    And El usuario visualiza el error " Password is required."
    Then El usuario verifica que no pudo ingresar a la web

    Examples:
      | Usuario         | Clave |
      | lalala@test.com |       |


  @Test_login_fail_WEmpty_email
  Scenario Outline:El usuario se logea con credenciales invalidas
    And El usuario ingresa su username "<Usuario>"
    And El usuario ingresa su pasword "<Clave>"
    And El usuario hace click en el botón "Login"
    And El usuario visualiza el error " Username is required."
    Then El usuario verifica que no pudo ingresar a la web

    Examples:
      | Usuario | Clave           |
      |         | lalala@test.com |


  @Test_login_fail_WEmpty_email_n_passw
  Scenario Outline:El usuario se logea con credenciales invalidas
    And El usuario ingresa su username "<Usuario>"
    And El usuario ingresa su pasword "<Clave>"
    And El usuario hace click en el botón "Login"
    And El usuario visualiza el error " Username is required."
    Then El usuario verifica que no pudo ingresar a la web

    Examples:
      | Usuario | Clave |
      |         |       |
