package lippia.web.steps;

import io.cucumber.java.en.Then;
import lippia.web.services.BackgroundService;
import lippia.web.services.RegisterPAT_Service;

public class MyAccountSteps {

    @Then("El usuario verifica que se encuentra en su DashBoard")
    public void elUsuarioVerificaQueIngresoCorrectamenteALaWeb() {
        RegisterPAT_Service.verificarLogin();
    }

    @Then("^El usuario verifica que se encuentra en su lista de (.*)$")
    public void elUsuarioVerificaEstarDentroDeOrders(String referencia) {
        BackgroundService.verificarEstarEnPagina(referencia);
    }
}
