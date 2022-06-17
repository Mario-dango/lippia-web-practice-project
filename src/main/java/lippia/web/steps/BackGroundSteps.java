package lippia.web.steps;

import io.cucumber.java.en.Given;
import io.cucumber.java.en.When;
import lippia.web.services.BackgroundService;

public class BackGroundSteps {

    @Given("El usuario ingresa a la web Automation Practice")
    public void elUsuarioSeEncuentraEnLaWebAutomationPractice() {
        BackgroundService.navegarWeb();
    }

    @When("^El usuario hace click en el botón \"(.*)\" del menú$")
    public void elUsuarioClickeaElBotónDelMenú(String myAccountButton) {
        BackgroundService.clickEnBoton(myAccountButton);
    }
}
