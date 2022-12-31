/*
* ─────────────────────────────────────────────────────────────────────────────────────────────────┐
* GetUSDPluralLabel: Implementation of IGetDynamicLabel to get the label for USD Currency plural
*
* Methods:
*   - public String getLabel(): Returns the Custom Label corresponding to the plural noun for 
*       USD Currency.
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
public class GetUSDPluralLabel implements IGetDynamicLabel{
    /*
    * Returns the custom label identifying the plural noun for USD Currency
    */
    public String getLabel() {
        return System.Label.USD_Plural;
    }
}
