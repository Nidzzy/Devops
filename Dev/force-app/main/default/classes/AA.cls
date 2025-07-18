public class AccountHandler {
    
    // Method to create an Account with basic validation
    public static String createAccount(String accName) {
        if (String.isBlank(accName)) {
            return 'Error: Account name cannot be blank.';
        }

        Account acc = new Account(Name = accName);
        
        try {
            insert acc;
            return 'Success: Account created with ID ' + acc.Id;
        } catch (DmlException e) {
            return 'Error: Failed to create Account. ' + e.getMessage();
        }
    }

}
