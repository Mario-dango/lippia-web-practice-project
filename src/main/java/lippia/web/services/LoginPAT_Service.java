package lippia.web.services;

        import com.crowdar.core.actions.ActionManager;
        import org.testng.Assert;

        import static lippia.web.constants.PracticeAutomationTestingContants.*;

public class LoginPAT_Service extends ActionManager {
    public static void competarUsername(String username){
        setInput(INPUT_USERNAME_ID, username);
    }

    public static void competarPassword(String pass){
        setInput(INPUT_PASSWORD_ID, pass);
    }

    public static void clickLoginBtn(){
        click(BTN_LOGIN_XPATH);
    }

    public static void verificarErrorEnPantalla(String string_error){
        Assert.assertTrue(isVisible(ERROR_TEXT_XPATH, string_error));
    }

    public static void verificarNoLogin(){
        Assert.assertTrue(isVisible(ERROR_BOX_XPATH));
    }

    public static void verificarLogin(String contant){
        Assert.assertTrue(isVisible(contant));
    }
}