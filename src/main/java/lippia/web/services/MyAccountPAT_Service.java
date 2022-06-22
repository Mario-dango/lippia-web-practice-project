package lippia.web.services;

import org.testng.Assert;

import static lippia.web.constants.PracticeAutomationTestingContants.*;

import com.crowdar.core.actions.ActionManager;

public class MyAccountPAT_Service extends ActionManager {
    public static void verificarEstarEnPagina(String referencia_pagina){
        if (referencia_pagina.equals("ordenes")){
            Assert.assertTrue(isVisible(BTN_GO_TO_ORDER_XPATH));
        }
        if (referencia_pagina.equals("detalles")){
            //waitVisibility(BTN_SAVE_CHANGES_XPATH);
            Assert.assertTrue(isVisible(BTN_SAVE_CHANGES_XPATH));
        }
    }

    public static void paginaLogin (){
        //waitVisibility(BTN_LOGIN_XPATH);
        Assert.assertTrue(isVisible(BTN_LOGIN_XPATH));
    }
}
