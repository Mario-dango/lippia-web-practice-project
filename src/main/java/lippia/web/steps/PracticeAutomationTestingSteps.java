package lippia.web.steps;

        import com.crowdar.core.PageSteps;
        import io.cucumber.java.en.*;
        import lippia.web.services.PracticeAutomationTestingService;

public class PracticeAutomationTestingSteps extends PageSteps {

    @Given("El usuario se encuentra en la web Automation Practice")
    public void elUsuarioSeEncuentraEnLaWebAutomationPractice() {
        PracticeAutomationTestingService.navegarWeb();
    }

    @When("^El usuario clickea el botón \"(.*)\" del menú$")
    public void elUsuarioClickeaElBotónDelMenú(String myAccountButton) {
        PracticeAutomationTestingService.clickMyAccount();
    }

    @And("^El usuario ingresa su username \"(.*)\"$")
    public void elUsuarioIngresaSuUsername(String username) {
        PracticeAutomationTestingService.competarUsername(username);
    }

    @And("^El usuario ingresa su pasword \"(.*)\"$")
    public void elUsuarioIngresaSuPasword(String password) {
        PracticeAutomationTestingService.competarPassword(password);
    }

    @And("^El usuario clickea el botón \"(.*)\"$")
    public void elUsuarioClickeaElBotón(String loginButton) {
        PracticeAutomationTestingService.clickLoginBtn();
    }

    @Then("El usuario verifica que ingreso correctamente a la web")
    public void elUsuarioVerificaQueIngresoCorrectamenteALaWeb() {
        PracticeAutomationTestingService.verificarLogin();
    }
}