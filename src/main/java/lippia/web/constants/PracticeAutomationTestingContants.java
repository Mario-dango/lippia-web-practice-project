package lippia.web.constants;

public class PracticeAutomationTestingContants {

    //Contants to Login Side

    public static final String BTN_MYACCOUNT_ID = "id:menu-item-50";
    public static final String INPUT_USERNAME_ID = "id:username";
    public static final String INPUT_PASSWORD_ID = "id:password";
    public static final String BTN_LOGIN_XPATH = "xpath://input[@value='Login']";
    public static final String BTN_LOGOUT_XPATH = "xpath://a[text()='Logout']";
    public static final String ERROR_BOX_XPATH = "xpath://ul[@class='woocommerce-error']";
    public static final String ERROR_TEXT_XPATH = "xpath://li[text()='%s']"; // antes no funcionaba, ahora si (?

    //Constants to Register Side

    public static final String INPUT_REG_EMAIL_ID = "id:reg_email";
    public static final String INPUT_REG_PASSWORD_ID = "id:reg_password";
    public static final String BTN_REGISTER_XPATH = "xpath://input[@value='Register']";
    public static final String BTN_REGISTER_DISABLE = "xpath://input[@disable='disable']";


    public static final String BTN_ORDERS_XPATH = "xpath://a[text()='Orders']";
    public static final String BTN_GO_TO_ORDER_XPATH = "xpath://*[@id=\"page-36\"]/div/div[1]/div/div/a";
}