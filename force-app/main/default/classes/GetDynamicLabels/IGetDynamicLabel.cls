/*
* ─────────────────────────────────────────────────────────────────────────────────────────────────┐
* IGetDinamicLabel: Interface for Dynamically getting Custom Labels.
*
*   Salesforce doesn't currently support dynamically getting custom labels. Classes implementing 
*   this class should implement the String getLabel() method and return the desired label. A 
*   Selector class can then be used to map CMDT to implementing classes at runtime and instance
*   those classes.
*
* Methods:
*   - String getLabel();
* ──────────────────────────────────────────────────────────────────────────────────────────────────
* @author         Federico Abella   <fede.abellam@gmail.com>
* @modifiedBy     Federico Abella   <fede.abellam@gmail.com>
* @maintainedBy   Federico Abella   <fede.abellam@gmail.com>
* @version        1.0
* @created        2022-11-20
* @modified       2022-11-20
* @systemLayer    Interface
* ──────────────────────────────────────────────────────────────────────────────────────────────────
* @changes
* ─────────────────────────────────────────────────────────────────────────────────────────────────┘
*/
public interface IGetDynamicLabel {

    /*
    * getLabel() method. Returns the desired custom label.
    */
    String getLabel();
}
