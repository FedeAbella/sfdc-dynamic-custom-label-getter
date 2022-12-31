/*
* ─────────────────────────────────────────────────────────────────────────────────────────────────┐
* IDynamicLabelSelector: Interface for implementing a Selector class that returns instances of 
*   IGetDynamicLabels depending on some Custom Metadata Type.
*
*   Classes implementing this interface should have a IGetDynamicLabelSelector getInstance() method
*   to enforce a Singleton design pattern. A 
*   Map<String, IGetDynamicLabel> getAvailableContextFromMetadata() method should return the map of
*   desired CMDTs to implementations of IGetDynamicLabel.
*
* Methods:
*   - IDynamicLabelSelector getInstance()
*   - Map<String, IGetDynamicLabel> getAvailableContextFromMetadata()
*   - void clearInstance()
* ──────────────────────────────────────────────────────────────────────────────────────────────────
* @author         Federico Abella   <fede.abellam@gmail.com>
* @modifiedBy     Federico Abella   <fede.abellam@gmail.com>
* @maintainedBy   Federico Abella   <fede.abellam@gmail.com>
* @version        1.0
* @created        2022-12-31
* @modified       2022-12-31
* @systemLayer    Interface
* ──────────────────────────────────────────────────────────────────────────────────────────────────
* @changes
* ─────────────────────────────────────────────────────────────────────────────────────────────────┘
*/
public virtual interface IDynamicLabelSelector {

    /*
    * getInstance() method should return the existing instance of the class, thus enforcing a 
    * singleton Pattern, and avoiding repeated instances of implementation classes being created.
    */
    IDynamicLabelSelector getInstance();

    /*
    * getAvailableContextFromMetadata() should retrieve the corresponding CMDTs, and map the keys
    * to the correct implementations of IGetDynamicLabel
    */
    Map<String, IGetDynamicLabel> getAvailableContextFromMetadata();

    /*
    * Forces the singleton class to clear its instance, therefore allowing a new one to be 
    * instanced if necessary.
    */
    void clearInstance();
}
