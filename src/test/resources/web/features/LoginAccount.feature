Feature: El usuario accede a la web


  Background:
    Given El usuario se encuentra en la web Automation Practice
    When El usuario clickea el botón "My Account" del menú

  #@Test_success
  Scenario Outline: El usuario se logea correctamente con credenciales validas
    And El usuario ingresa su username "<Usuario>"
    And El usuario ingresa su pasword "<Clave>"
    And El usuario clickea el botón "Login"
    Then El usuario verifica que ingreso correctamente a la web

    Examples:
      | Usuario                      | Clave               |
      | joel_prueba@test.com         | TestingCrowdar2022! |
      | mario.papetti@etec.um.edu.ar | MarioPapetti2022    |

  #@Test_fail
  Scenario Outline:El usuario se logea con credenciales invalidas
    And El usuario ingresa su username "<Usuario>"
    And El usuario ingresa su pasword "<Clave>"
    And El usuario clickea el botón "Login"
    Then El usuario verifica que no pudo ingresar a la web

    Examples:
      | Usuario              | Clave               |
      | joel.prueba@test.com | TestingCrowdar2022! |
