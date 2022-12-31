/*
* ─────────────────────────────────────────────────────────────────────────────────────────────────┐
* GetUYUSingularLabel: Implementation of IGetDynamicLabel to get the label for UYU Currency singular
*
* Methods:
*   - public String getLabel(): Returns the Custom Label corresponding to the singular noun for 
*       UYU Currency.
* ──────────────────────────────────────────────────────────────────────────────────────────────────
* @author         Federico Abella   <fede.abellam@gmail.com>
* @modifiedBy     Federico Abella   <fede.abellam@gmail.com>
* @maintainedBy   Federico Abella   <fede.abellam@gmail.com>
* @version        1.0
* @created        2022-11-20
* @modified       2022-11-20
* @systemLayer    UI
* ──────────────────────────────────────────────────────────────────────────────────────────────────
* @changes
* ─────────────────────────────────────────────────────────────────────────────────────────────────┘
*/
public class GetUYUSingularLabel implements IGetDynamicLabel {
    
    /*
    * Returns the custom label identifying the singular noun for UYU Currency
    */
    public String getLabel() {
        return System.Label.UYU_Singular;
    }
}
