/*
* ─────────────────────────────────────────────────────────────────────────────────────────────────┐
* CurrencyLabelSelectorTest: Test methods for CurrencyLabelSelector class
*
* ──────────────────────────────────────────────────────────────────────────────────────────────────
* @author         Federico Abella   <fede.abellam@gmail.com>
* @modifiedBy     Federico Abella   <fede.abellam@gmail.com>
* @maintainedBy   Federico Abella   <fede.abellam@gmail.com>
* @version        1.0
* @created        2022-11-20
* @modified       2022-11-20
* @systemLayer    Test
* ──────────────────────────────────────────────────────────────────────────────────────────────────
* @changes
* ─────────────────────────────────────────────────────────────────────────────────────────────────┘
*/
@isTest
public class CurrencyLabelSelectorTest {
    
    @IsTest
    static void testSingleInstance(){
        
        System.assertEquals(null, CurrencyLabelSelector.theInstance);

        IDynamicLabelSelector selector = CurrencyLabelSelector.getInstance();

        System.assertNotEquals(null, CurrencyLabelSelector.theInstance);
        System.assert(selector instanceOf CurrencyLabelSelector);
        System.assertEquals(selector, CurrencyLabelSelector.getInstance());

        selector.clearInstance();
        System.assertNotEquals(selector, CurrencyLabelSelector.getInstance());
    }

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
