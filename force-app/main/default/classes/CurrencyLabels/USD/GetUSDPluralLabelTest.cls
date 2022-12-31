/*
* ─────────────────────────────────────────────────────────────────────────────────────────────────┐
* GetUSDPluralLabelTest: Tests for GetUSDPluralLabel class
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
public class GetUSDPluralLabelTest {
    
    @IsTest
    static void testGetLabel(){
        
        System.assertEquals(
            System.Label.USD_Plural, 
            new GetUSDPluralLabel().getLabel()
        );
    }
}
