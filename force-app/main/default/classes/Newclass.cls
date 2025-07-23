public with sharing class ContactService {
    
    // Method to get all active contacts for a given Account Id
    public static List<Contact> getActiveContactsByAccount(Id accountId) {
        if (accountId == null) {
            throw new AuraHandledException('Account Id cannot be null');
        }

        List<Contact> contacts = [
            SELECT Id, FirstName, LastName, Email 
            FROM Contact 
            WHERE AccountId = :accountId AND IsActive__c = true
        ];

        return contacts;
    }
}