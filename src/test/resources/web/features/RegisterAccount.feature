Feature: El usuario registra una cuenta a la web

  # que
  # como
  # para

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
      | correo                | clave            |
      | prueba@ambar.com      | ambar2022!       |
      | mario.papetti@lol.com | MarioPapetti2022 |

    #Revisar en el clickeo del botón ya que lo inhabilita por falta de
    # párametros en el e-mail y también por tener clave muy debíl
  @Test_fail_invalid_email_id
  Scenario Outline: El usuario no logra crease la cuenta por correo no valido
    And El usuario ingresa su correo en el campo de Register "<correo>"
    And El usuario ingresa su contraseña en el campo de Register "<clave>"
    And El usuario clickea el botón "Register"
    Then El usuario verifica que no pudo registrarse a la web, apareciendo la leyenda " Please provide a valid email address."

    #primer ejemplo no lo pasa por no tener @ (es decir no habilita el botón de registro)
    #segundo ejemplo no pasa por tener contraseña debil (ídem ejemplo 1)
    #tercer ejemplo no lo pasa por tener otros @ luego de si mismo (ídem ejemplo 1)
    #cuarto ejemplo arroja erro de email invalido
    Examples:
      | correo        | clave               |
      | 4512_otro.com | TestingCrowdar2022! |
      | mario@papetti | mariopapetti        |
      | @@@@@.com     | test_20             |
      | teclado@algo  | COntrase?¡a34       |

    # OK
  @Test_fail_empty_email_id
  Scenario Outline: El usuario no logra crease la cuenta por no ingresar correo
    And El usuario ingresa su correo en el campo de Register "<correo>"
    And El usuario ingresa su contraseña en el campo de Register "<clave>"
    And El usuario clickea el botón "Register"
    Then El usuario verifica que no pudo registrarse a la web, apareciendo la leyenda " Please provide a valid email address."

    ####!!  Tener en cuenta que claves debiles no habilitarán el botón de registro
    Examples:
      | correo | clave               |
      |        | TestingCrowñar2022! |

    # No está tomando el XPATH con la variable de "Leyenda"
  @Test_fail_empty_password
  Scenario Outline: El usuario no logra crease la cuenta por no ingresar clave
    And El usuario ingresa su correo en el campo de Register "<correo>"
    And El usuario ingresa su contraseña en el campo de Register "<clave>"
    And El usuario clickea el botón "Register"
    Then El usuario verifica que no pudo registrarse a la web, apareciendo la leyenda " Please enter an account password."

    ####!!  Tener en cuenta que sin @ entre otras restricciones de casilla
      # no habilitarán el botón de registro
    Examples:
      | correo          | clave |
      | musica@hora.com |       |
      | siga@codea.ndo  |       |

    # No está tomando el XPATH con la variable de "Leyenda"
  @Test_fail_empty_password_and_email
  Scenario Outline: El usuario no logra crease la cuenta por no ingresar correo ni clave
    And El usuario ingresa su correo en el campo de Register "<correo>"
    And El usuario ingresa su contraseña en el campo de Register "<clave>"
    And El usuario clickea el botón "Register"
    Then El usuario verifica que no pudo registrarse a la web, apareciendo la leyenda " Please provide a valid email address."

    Examples:
      | correo | clave |
      |        |       |

