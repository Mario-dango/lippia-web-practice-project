package lippia.web.steps;

import com.crowdar.core.PageSteps;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Then;
import lippia.web.services.RegisterPAT_Service;

public class RegisterPAT_Steps extends PageSteps {

    @And("^El usuario ingresa su correo en el campo de Register \"(.*)\"$")
    public void elUsuarioIngresaSuCorreo(String username) {
        RegisterPAT_Service.completarCorreo(username);
    }

    @And("^El usuario ingresa su contraseña en el campo de Register \"(.*)\"$")
    public void elUsuarioIngresaSuClave(String password) {
        RegisterPAT_Service.completarClave(password);
    }

    @And("El usuario clickea el botón \"Register\"")
    public void elUsuarioClickeaElBotón() {
        RegisterPAT_Service.clickRegisterBtn();
    }

    @Then("El usuario verifica que ingreso correctamente a la web")
    public void elUsuarioVerificaQueIngresoCorrectamenteALaWeb() {
        RegisterPAT_Service.verificarLogin();
    }

    @Then("El usuario verifica que no pudo registrarse a la web")
    public void elUsuarioVerificaQueNoIngresoCorrectamenteALaWeb() {
        RegisterPAT_Service.verificarRegister();
    }

    @Then("El usuario verifica que no se habilita el botón para concretar el registro")
    public void botonDeRegistroDeshabilitado() {
        RegisterPAT_Service.verificarBotonRegistro();
    }

}