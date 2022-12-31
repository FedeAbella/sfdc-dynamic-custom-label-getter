/*
* ─────────────────────────────────────────────────────────────────────────────────────────────────┐
* CurrencyLabelSelectorTest: Test methods for CurrencyLabelSelector class
*
* ──────────────────────────────────────────────────────────────────────────────────────────────────
* @author         Federico Abella   <fede.abellam@gmail.com>
* @modifiedBy     Federico Abella   <fede.abellam@gmail.com>
* @maintainedBy   Federico Abella   <fede.abellam@gmail.com>
* @version        1.0
* @created        2022-12-31
* @modified       2022-12-31
* @systemLayer    Test
* ──────────────────────────────────────────────────────────────────────────────────────────────────
* @changes
* ─────────────────────────────────────────────────────────────────────────────────────────────────┘
*/
@isTest
public class CurrencyLabelSelectorTest {
    
    /*
    * Test creating a singleton instance
    */
    @IsTest
    static void testGetInstance(){
        System.assertEquals(null, CurrencyLabelSelector.theInstance);
        IDynamicLabelSelector instance = CurrencyLabelSelector.getInstance();
        System.assertEquals(CurrencyLabelSelector.theInstance, instance);
        System.assertEquals(instance, CurrencyLabelSelector.getInstance());
    }

    /*
    * Test clearing the singleton instance and re-instantiating.
    */
    @IsTest
    static void testClearInstance(){
        IDynamicLabelSelector instance = CurrencyLabelSelector.getInstance();
        System.assertEquals(CurrencyLabelSelector.theInstance, instance);
        CurrencyLabelSelector.clearInstance();
        System.assertEquals(null, CurrencyLabelSelector.theInstance);
        IDynamicLabelSelector newInstance = CurrencyLabelSelector.getInstance();
        System.assertNotEquals(instance, newInstance);
    }

    /*
    * Test retrieving the context map, and that class names are correct
    */
    @IsTest
    static void testContextMetadataMap(){
        Map<String, IGetDynamicLabel> selectorMap = CurrencyLabelSelector.getInstance()
                                                    .getAvailableContextFromMetadata();
        for (Currency_Label__mdt cmdt : Currency_Label__mdt.getAll().values()) {
            System.assert(selectorMap.containsKey(cmdt.DeveloperName));
            System.assertEquals(
                cmdt.Apex_Class_Name__c, 
                String.valueOf(
                    selectorMap.get(cmdt.DeveloperName)
                ).split(':').get(0)
            );
        }
    }
}
