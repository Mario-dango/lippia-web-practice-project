package lippia.web.steps;

        import com.crowdar.core.PageSteps;
        import io.cucumber.java.en.And;
        import io.cucumber.java.en.Given;
        import io.cucumber.java.en.Then;
        import io.cucumber.java.en.When;
        import lippia.web.constants.PracticeAutomationTestingContants;
        import lippia.web.services.LoginPAT_Service;

public class LoginPAT_Steps extends PageSteps {

        @And("^El usuario ingresa su username \"(.*)\"$")
        public void ingresarCorreo(String username) {
                LoginPAT_Service.competarUsername(username);
        }

        @And("^El usuario ingresa su pasword \"(.*)\"$")
        public void ingresarClave(String password) {
                LoginPAT_Service.competarPassword(password);
        }

        @And("El usuario hace click en el botón \"Login\"")
        public void clickEnBoton() {
                LoginPAT_Service.clickLoginBtn();
        }

        @Then("El usuario verifica que ha ingreso correctamente a la web")
        public void verificarIngresoWeb() {
                LoginPAT_Service.verificarLogin(PracticeAutomationTestingContants.BTN_LOGOUT_XPATH);
        }

        @And("^El usuario visualiza el error \"(.*)\"$")
        public void elUsuarioVisualizaError(String error_label) {
                LoginPAT_Service.verificarErrorEnPantalla(error_label);
        }

        @Then("El usuario verifica que no pudo ingresar a la web")
        public void elUsuarioVerificaNotificacionDeError() {
                LoginPAT_Service.verificarNoLogin();
        }

}