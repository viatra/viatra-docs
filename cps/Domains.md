## Cyber Physical System

The CPS domain specifies application and host types and their instances, requests and requirements on applications and resource requirements of applications towards hosts. Application types have a state machine that describes their behavior through states and transitions. Finally, application instances can be allocated to host instances that can communicate with each other.

![Cyber Physical System model Ecore diagram](images/cps_ecore.png)

* Host instances have a unique node IP address.
* Application instances have a unique identifier.
* State machines can define an initial state.
* Transitions may specify an action for sending or waiting for a signal. A signal can be sent by providing an application type (with its ID) and a signal identifier, while waiting for a signal is done by specifying its identifier.

## Deployment

In the deployment model, host instances contain the applications that are running on them, while each application has a behavior with states and transitions. The behavior has a current state and transitions may trigger other transitions when the triggered transition is waiting for the signal they are sending and the application type is correct.

![Deployment model Ecore diagram](images/deployment_ecore.png)

## Traceability

The traceability model describes the correspondence between a CPS and a deployment model. The traceability is stored in a set of traces that refer to zero, one or multiple CPS and deployment elements.

![Traceability model Ecore diagram](images/traceability_ecore.png)