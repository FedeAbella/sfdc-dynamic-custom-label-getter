/*
* ─────────────────────────────────────────────────────────────────────────────────────────────────┐
* GetARSLabelsTest: Tests for classes that dynamically get ARS labels
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
public class GetARSLabelsTest {
    
    /*
    * Test getting the plural label
    */
    @IsTest
    static void testGetPluralLabel(){
        System.assertEquals(
            System.Label.ARS_Plural, 
            new GetARSPluralLabel().getLabel()
        );
    }

    /*
    * Test getting the singular label
    */
    @IsTest
    static void testGetSingularLabel(){
        System.assertEquals(
            System.Label.ARS_Singular, 
            new GetARSSingularLabel().getLabel()
        );
    }
}
