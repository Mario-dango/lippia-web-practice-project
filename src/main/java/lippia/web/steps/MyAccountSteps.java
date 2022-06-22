package lippia.web.steps;

import io.cucumber.java.en.Then;
import io.cucumber.java.en.And;
import lippia.web.services.MyAccountPAT_Service;
import lippia.web.services.RegisterPAT_Service;

public class MyAccountSteps {

    @Then("El usuario verifica que se encuentra en su DashBoard")
    public void elUsuarioVerificaQueIngresoCorrectamenteALaWeb() {
        RegisterPAT_Service.verificarLogin();
    }

    @Then("^El usuario verifica que se encuentra en su lista de (.*)$")
    public void elUsuarioVerificaEstarDentroDeOrders(String referencia) {
        MyAccountPAT_Service.verificarEstarEnPagina(referencia);
    }

    @Then("^El usuario verifica que se encuentran los (.*) de su cuenta$")
    public void elUsuarioVerificaEstarDentroDeDetalles(String referencia) {
        MyAccountPAT_Service.verificarEstarEnPagina(referencia);
    }

    @And("El usuario vuelve a la pagina de login")
    @Then("El usuario verifica que su sesión se ha cerrado exitosamente")
    public void elUsuarioVerificaEstarEnElLogin() {
        MyAccountPAT_Service.paginaLogin();
    }

}
