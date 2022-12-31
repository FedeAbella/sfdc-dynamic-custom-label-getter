/*
* ─────────────────────────────────────────────────────────────────────────────────────────────────┐
* CurrencyLabelSelector: Selector class for dynamically getting implementations of IGetDynamicLabel
*    at runtime that represent currency nouns.
*
*   It is needed at times to dynamically determine at runtime a given currency ISO code, and 
*   whether we need the singular or plural noun that represents that currency. This class allows 
*   dynamically calling different implementations of IGetDynamicLabel dependent on context, by 
*   relating that context to the implementing classes via a CMDT. Class follows singleton design
*   pattern, and allows only a single instance to exist during runtime.
*
* Constructor:
*   - No public constructor
*
* Methods:
*   - public static IDynamicLabelSelector getInstance(): Returns the singleton instance of the class
*   - public Map<String, IGetDynamicLabel> getAvailableContextFromMetadata(): Returns a map of 
*       CMDT DeveloperNames to implementations of IGetDynamicLabel from where the getLabel() 
*       method can be called on each.
* ──────────────────────────────────────────────────────────────────────────────────────────────────
* @author         Federico Abella   <fede.abellam@gmail.com>
* @modifiedBy     Federico Abella   <fede.abellam@gmail.com>
* @maintainedBy   Federico Abella   <fede.abellam@gmail.com>
* @version        1.0
* @created        2022-12-31
* @modified       2022-12-31
* @systemLayer    Utility
* ──────────────────────────────────────────────────────────────────────────────────────────────────
* @changes
* ─────────────────────────────────────────────────────────────────────────────────────────────────┘
*/
public class CurrencyLabelSelector implements IDynamicLabelSelector {

    /*
    * STATIC VARIABLES AND METHODS
    */
    
    @TestVisible
    private static IDynamicLabelSelector theInstance; //  The singleton instance of this class

    /*
    * Returns the singleton instance of this class. Instantiates one if it doesn't exist yet, or 
    * returns the existing one.
    */
    public static IDynamicLabelSelector getInstance() {
        if (theInstance == null) {
            theInstance = new CurrencyLabelSelector();
            return theInstance;
        } else {
            return theInstance;
        }
    }

    /*
    * Clears the currently running instance so a new one can be instanced if required
    */
    public static void clearInstance() {
        theInstance = null;
    }

    /*
    * INSTANCE VARIABLES AND METHODS
    */

    //  The map of CMDT to IGetDynamicLabel implementations
    private Map<String, IGetDynamicLabel> selectorMap; 

    /*
    * Private Constructor, makes the class only be able to be instantiated from the getInstance()
    * method. Builds the selector map at init time.
    */
    private CurrencyLabelSelector() {
        this.selectorMap = buildSelectorMap(); //  Build the CMDT/Implementation map when instanced
    }

    /*
    * Returns the Map of CMDT DeveloperNames to implementations of IGetDynamicLabel from where 
    * the required Custom Label can be retrieved by calling the getLabel() method on the required 
    * implementation.
    */
    public Map<String, IGetDynamicLabel> getAvailableContextFromMetadata() {
        return this.selectorMap;
    }

    /*
    * Retrieves CMDTs when class is instantiated, and builds the map between DeveloperNames and 
    * Apex classes
    */
    private Map<String, IGetDynamicLabel> buildSelectorMap(){
        Map<String, IGetDynamicLabel> selectorMap = new Map<String, IGetDynamicLabel>();
        for (Currency_Label__mdt cmdt : Currency_Label__mdt.getAll()
                                                           .values()
        ) {
            selectorMap.put(
                cmdt.DeveloperName, 
                (IGetDynamicLabel) Type.forName(cmdt.Apex_Class_Name__c).newInstance()
            );
        }

        return selectorMap;
    }
}
