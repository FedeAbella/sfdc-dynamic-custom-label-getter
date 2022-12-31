/*
* ─────────────────────────────────────────────────────────────────────────────────────────────────┐
* GetGBPLabelsTest: Tests for classes that dynamically get GBP labels
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
public class GetGBPLabelsTest {
    
    /*
    * Test getting the plural label
    */
    @IsTest
    static void testGetPluralLabel(){
        System.assertEquals(
            System.Label.GBP_Plural, 
            new GetGBPPluralLabel().getLabel()
        );
    }

    /*
    * Test getting the singular label
    */
    @IsTest
    static void testGetSingularLabel(){
        System.assertEquals(
            System.Label.GBP_Singular, 
            new GetGBPSingularLabel().getLabel()
        );
    }
}
