@Test_Register
Feature: El usuario registra una cuenta a la web

  Background:
    Given El usuario ingresa a la web Automation Practice
    When El usuario hace click en el botón "My Account" del menú

  @Test_success
  Scenario Outline: El usuario se crea exitosamente una cuenta con credenciales validas
    And El usuario ingresa su correo en el campo de Register "<correo>"
    And El usuario ingresa su contraseña en el campo de Register "<clave>"
    And El usuario clickea el botón "Register"
    Then El usuario verifica que ingreso correctamente a la web

    Examples:
      | correo            | clave                |
      | prueba@abar.comer | ambar*/*/2022!       |
      | mario@test.com    | Mario*/*/Papetti2022 |


  @Test_fail_invalid_email_id
  Scenario Outline: El usuario no logra crease la cuenta por correo no valido
    And El usuario ingresa su correo en el campo de Register "<correo>"
    And El usuario ingresa su contraseña en el campo de Register "<clave>"
    And El usuario clickea el botón "Register"
    And El usuario visualiza el error " Please provide a valid email address."
    Then El usuario verifica que no pudo registrarse a la web

    Examples:
      | correo       | clave         |
      | teclado@algo | COntrase?¡a34 |

  @Test_fail_empty_email_id
  Scenario Outline: El usuario no logra crease la cuenta por no ingresar correo
    And El usuario ingresa su correo en el campo de Register "<correo>"
    And El usuario ingresa su contraseña en el campo de Register "<clave>"
    And El usuario clickea el botón "Register"
    And El usuario visualiza el error " Please provide a valid email address."
    Then El usuario verifica que no pudo registrarse a la web

    Examples:
      | correo | clave               |
      |        | TestingCrowñar2022! |

  @Test_fail_empty_password
  Scenario Outline: El usuario no logra crease la cuenta por no ingresar clave
    And El usuario ingresa su correo en el campo de Register "<correo>"
    And El usuario ingresa su contraseña en el campo de Register "<clave>"
    And El usuario clickea el botón "Register"
    And El usuario visualiza el error " Please enter an account password."
    Then El usuario verifica que no pudo registrarse a la web

    Examples:
      | correo          | clave |
      | musica@hora.com |       |
      | siga@codea.ndo  |       |

  @Test_fail_empty_password_and_email
  Scenario Outline: El usuario no logra crease la cuenta por no ingresar correo ni clave
    And El usuario ingresa su correo en el campo de Register "<correo>"
    And El usuario ingresa su contraseña en el campo de Register "<clave>"
    And El usuario clickea el botón "Register"
    And El usuario visualiza el error " Please provide a valid email address."
    Then El usuario verifica que no pudo registrarse a la web

    Examples:
      | correo | clave |
      |        |       |

