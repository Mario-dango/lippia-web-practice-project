package lippia.web.services;

import com.crowdar.core.actions.ActionManager;
import org.testng.Assert;

import static lippia.web.constants.PracticeAutomationTestingContants.*;

public class RegisterPAT_Service extends ActionManager {

    public static void completarCorreo(String username){

        setInput(INPUT_REG_EMAIL_ID, username);
    }

    public static void completarClave(String pass){
        setInput(INPUT_REG_PASSWORD_ID, pass);
    }

    public static void clickLoginBtn(){
        click(BTN_REGISTER_XPATH);
    }

    public static void verificarLogin(){Assert.assertTrue(isVisible(BTN_LOGOUT_XPATH));
    }
    public static void verificarRegister(){Assert.assertTrue(isVisible(ERROR_BOX_XPATH));
    }

    public static void verificarBotonRegistro(){Assert.assertTrue(isVisible(BTN_REGISTER_DISABLE));
    }
}