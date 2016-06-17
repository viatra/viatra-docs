The EMF-IncQuery [Validation Framework](https://wiki.eclipse.org/EMFIncQuery/UserDocumentation/Validation) offers a declarative approach for defining complex constraints on instance models that are evaluated incrementally during model editing.

In the CPS demonstrator we defined a set of constraints for [[Cyber Physical System|Domains#cyber-physical-system]] instance models in the `model/validation/rules.eiq` file in the `cps.queries` project. The constraints include the following examples:
* Host instances must have unique IP addresses
* The initial state of a state machine must be among the states of the same state machine
* Transitions must have target states, which must be in the same state machine as the source state
* Actions of outgoing transitions from a given state must be unique

### Definition of constraints

Each constraint is defined using `@Constraint` annotations on patterns. The annotation has three required parameters:
* The **location** identifies which element is the focus of the violation
* The **message** is a format string that specifies what will be displayed for each violation
* The **severity** specifies the type of the created marker (error or warning)

```
@Constraint(
	location = state,
	message = "Multiple outgoing transitions of $state.id$ define the same action ($action$)",
	severity = "error"
)
pattern multipleTransitionsWithSameAction(state, action) {
	State.outgoingTransitions(state, transition);
	State.outgoingTransitions(state, otherTransition);
	find actionOfTransition(transition, action);
	find actionOfTransition(otherTransition, action);
	transition != otherTransition;
}

private pattern actionOfTransition(transition, action) {
	Transition.action(transition, action);
}
```

The EMF-IncQuery generator fragment generates the required source code and other artefacts automatically when the builder is invoked by saving the query definition file. The code is placed in the `cps.queries.validation` project.

### Usage of live validation

The live validation can be demonstrated in the generated editor for CPS models:
  1. Start a Runtime Eclipse
  1. Open a CPS instance model (e.g. by importing the `cps.instances` project) in the generated editor
    * Right click on a `.cyberphysicalsystem` file in the _Package explorer_, `Open with -> CyberPhysicalSystem Model Editor`
  1. Initialize the validation
    * Right click in the tree editor, `EMF-IncQuery Validation -> Initialize EMF-IncQuery Validators on Editor`
  1. Violations of constraints are displayed in the _Problems_ view
    * Double clicking the violation will set the selection of the editor to the location element
    * Changes in the model will update problem markers immediately