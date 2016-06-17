Query-based features are [well-behaving](https://wiki.eclipse.org/EMFIncQuery/UserDocumentation/Query_Based_Features#Well-behaving_structural_features) derived features that are computed incrementally based on EMF-IncQuery patterns evaluated over the model and provide proper change notifications.

In the CPS model, the following features are query-based:

* `CyberPhysicalSystem.appInstances` contains the list of the instances of all `ApplicationTypes`.
* `CyberPhysicalSystem.hostInstances` contains the list of the instances of all `HostTypes`.

To see these query-based features in action, you can do the following:
1. Open the example.cps or any CPS domain model in the generated tree editor in the Runtime Eclipse.
2. Open the Properties view, if it is not open yet (right click in the editor and select `Show Properties view`).
3. Select the root CyberPhysicalSystem element to see its properties.
4. Right click on an Application or Host type and select `New child -> Application/Host Instance`
5. The appInstances and hostInstances properties are updated incrementally.

Another possibility is to load some patterns that reference the derived features into the Query Explorer and check how model modifications cause query result updates.