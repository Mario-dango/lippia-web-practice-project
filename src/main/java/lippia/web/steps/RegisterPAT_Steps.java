package lippia.web.steps;

import com.crowdar.core.PageSteps;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import lippia.web.constants.PracticeAutomationTestingContants;
import lippia.web.services.RegisterPAT_Service;

public class RegisterPAT_Steps extends PageSteps {

    @Given("El usuario se encuentra en la web Automation Practice")
    public void elUsuarioSeEncuentraEnLaWebAutomationPractice() {
        RegisterPAT_Service.navegarWeb();
    }

    @When("^El usuario clickea el botón \"(.*)\" del menú$")
    public void elUsuarioClickeaElBotónDelMenú(String myAccountButton) {
        RegisterPAT_Service.clickMyAccount();
    }

    @And("^El usuario ingresa su correo en el campo de Register \"(.*)\"$")
    public void elUsuarioIngresaSuCorreo(String username) {
        RegisterPAT_Service.completarCorreo(username);
    }

    @And("^El usuario ingresa su contraseña en el campo de Register \"(.*)\"$")
    public void elUsuarioIngresaSuClave(String password) {
        RegisterPAT_Service.completarClave(password);
    }

    @And("^El usuario clickea el botón \"(.*)\"$")
    public void elUsuarioClickeaElBotón(String registerButton) {
        RegisterPAT_Service.clickLoginBtn();
    }

    @Then("El usuario verifica que ingreso correctamente a la web")
    public void elUsuarioVerificaQueIngresoCorrectamenteALaWeb() {
        RegisterPAT_Service.verificarLogin();
    }

    @Then("^El usuario verifica que no pudo registrarse a la web, apareciendo la leyenda \"(.*)\"$")
    public void elUsuarioVerificaQueNoIngresoCorrectamenteALaWeb(String error_label) {
        //RegisterPAT_Service.verificarRegister(error_label);
        RegisterPAT_Service.verificarRegister_const();
    }

    @Then("El usuario verifica que no se habilita el botón para concretar el registro")
    public void botonDeRegistroDeshabilitado() {
        RegisterPAT_Service.verificarBotonRegistro();
    }

}