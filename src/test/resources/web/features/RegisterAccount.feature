Feature: El usuario registra una cuenta a la web

  Background:
    Given El usuario ingresa a la web Automation Practice
    When El usuario hace click en el botón "My Account" del menú

  @Test_success @Test_Register #Funciona
  Scenario Outline: El usuario se crea exitosamente una cuenta con credenciales validas
    And El usuario ingresa su correo en el campo de Register "<correo>"
    And El usuario ingresa su contraseña en el campo de Register "<clave>"
    And El usuario clickea el botón "Register"
    Then El usuario verifica que ingreso correctamente a la web

    Examples:
      | correo            | clave                |
      | prueba@abar.comer | ambar*/*/2022!       |
      | mario@test.com    | Mario*/*/Papetti2022 |

    #Revisar en el clickeo del botón ya que lo inhabilita por falta de
    # párametros en el e-mail y también por tener clave muy debíl
  @Test_fail_invalid_email_id @Test_Register #Funciona
  Scenario Outline: El usuario no logra crease la cuenta por correo no valido
    And El usuario ingresa su correo en el campo de Register "<correo>"
    And El usuario ingresa su contraseña en el campo de Register "<clave>"
    And El usuario clickea el botón "Register"
    And El usuario visualiza el error " Please provide a valid email address."
    Then El usuario verifica que no pudo registrarse a la web

    #primer ejemplo no lo pasa por no tener @ (es decir no habilita el botón de registro)
    #segundo ejemplo no pasa por tener contraseña debil (ídem ejemplo 1)
    #tercer ejemplo no lo pasa por tener otros @ luego de si mismo (ídem ejemplo 1)
    # Variables que arrojan errores:
      #| 4512_otro.com | TestingCrowdar2022! |
      #| mario@papetti | mariopapetti        |
      #| @@@@@.com     | test_20             |
    #cuarto ejemplo arroja erro de email invalido
    Examples:
      | correo       | clave         |
      | teclado@algo | COntrase?¡a34 |

    # OK
  @Test_fail_empty_email_id @Test_Register #Funciona
  Scenario Outline: El usuario no logra crease la cuenta por no ingresar correo
    And El usuario ingresa su correo en el campo de Register "<correo>"
    And El usuario ingresa su contraseña en el campo de Register "<clave>"
    And El usuario clickea el botón "Register"
    And El usuario visualiza el error " Please provide a valid email address."
    Then El usuario verifica que no pudo registrarse a la web

    ####!!  Tener en cuenta que claves debiles no habilitarán el botón de registro
    Examples:
      | correo | clave               |
      |        | TestingCrowñar2022! |

    # No está tomando el XPATH con la variable de "Leyenda"
  @Test_fail_empty_password @Test_Register #Funciona
  Scenario Outline: El usuario no logra crease la cuenta por no ingresar clave
    And El usuario ingresa su correo en el campo de Register "<correo>"
    And El usuario ingresa su contraseña en el campo de Register "<clave>"
    And El usuario clickea el botón "Register"
    And El usuario visualiza el error " Please enter an account password."
    Then El usuario verifica que no pudo registrarse a la web

    ####!!  Tener en cuenta que sin @ entre otras restricciones de casilla
      # no habilitarán el botón de registro
    Examples:
      | correo          | clave |
      | musica@hora.com |       |
      | siga@codea.ndo  |       |

    # No está tomando el XPATH con la variable de "Leyenda"
  @Test_fail_empty_password_and_email @Test_Register #Funciona
  Scenario Outline: El usuario no logra crease la cuenta por no ingresar correo ni clave
    And El usuario ingresa su correo en el campo de Register "<correo>"
    And El usuario ingresa su contraseña en el campo de Register "<clave>"
    And El usuario clickea el botón "Register"
    And El usuario visualiza el error " Please provide a valid email address."
    Then El usuario verifica que no pudo registrarse a la web

    Examples:
      | correo | clave |
      |        |       |

