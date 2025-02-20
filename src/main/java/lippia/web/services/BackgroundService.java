package lippia.web.services;

import com.crowdar.core.PropertyManager;
import com.crowdar.core.actions.ActionManager;

import static com.crowdar.core.actions.WebActionManager.navigateTo;
import static lippia.web.constants.PracticeAutomationTestingContants.*;

public class BackgroundService extends ActionManager {

    public static void navegarWeb(){
        navigateTo(PropertyManager.getProperty("web.base.url"));
    }

    public static void clickEnBoton(String String_button_name){
        if (String_button_name.equals("Login")){
            click(BTN_LOGIN_XPATH);
        }
        if (String_button_name.equals("My Account")){
            click(BTN_MYACCOUNT_ID);
        }
        if (String_button_name.equals("Orders")){
            click(BTN_ORDERS_XPATH);
        }
        if (String_button_name.equals("Account Details")){
            click(BTN_ACCOUNT_DETAILS_XPATH);
        }
        if (String_button_name.equals("Logout")){
            click(BTN_LOGOUT_XPATH);
        }

    }


}
