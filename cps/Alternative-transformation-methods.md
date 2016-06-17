We provide multiple implementations for the [[CPS-to-Deployment M2M transformation|CPS-to-Deployment-Transformation]]. The variants differ from each other in at least one characteristics to support comparison and evaluation. Characteristics include:
* execution mode (batch or incremental)
* used technologies (Xtend, EMF-IncQuery, VIATRA, other transformation tools)
* model traversal vs. event-driven transformation
* execution on partially transformed model

The detailed description of each variant can be found on their corresponding wiki page.

### Variants

These implementations will be created under the [transformations](https://github.com/IncQueryLabs/incquery-examples-cps/tree/master/transformations) folder in the repository and under the `org.eclipse.incquery.examples.cps.xfrom.m2m.<id>` namespace.

#### Batch 

1. Xtend (`id = batch.simple`)
  * Details at [[Simple-and-optimized-Xtend-batch-M2M-transformation]]
1. Xtend + EMF-IncQuery (`id = batch.eiq`)
  * Details at [[Simple-Xtend-and-IncQuery-M2M-transformation]]
1. VIATRA Batch API (`id = batch.viatra`)
  * Details at [[VIATRA-transformation-API-based-batch-M2M-transformation]]

#### Incremental

For the incremental alternatives, a differentiating factor is the method to identify changes in the source model which must be synchronized to the target ("dirty flag")

1. Direct notification (`id = incr.direct`)
 * dirty: EMF adapter/IQBase
1. Explicit traceability (`id = incr.expl`)
 * dirty: traceability model state
 * Details at [[Explicit-traceability-M2M-transformation]]
1. Query result traceability (`id = incr.qrt`)
 * dirty: query result bookmarking, traceability saved in deltamonitor
 * Details at [[Query-result-traceability-M2M-transformation]]
1. Partial batch transformation (`id = incr.aggr`)
 * dirty: consider query results as notifications/events, low level change aggregation (transform bigger parts)
 * advanced: notifications independent of source model, transformation may run in background
 * Details at [[Partial-batch-M2M-transformation]]
1. Change-driven transformations  (`id = incr.cdt`)
 * dirty: EVM activation life-cycle
1. VIATRA EMF-based [transformation API](http://wiki.eclipse.org/VIATRA/Transformation_API)  (`id = incr.viatra`)
 * Details at [[VIATRA-transformation-API-based-QRT-MTM-transformation]]

### Summary

We currently implemented the above mentioned different variants (if you know EMF-IncQuery well you may argue that the LS based should be considered as a separate one :-) ) for this transformation and in the future might add some additional ones built on our technology stack. However, we would like to invite variants using other transformation tools. Since the demonstrator is open source, this may involve users of other tools or even submitted as a case to the [Transformation Tool Contest](http://www.transformation-tool-contest.eu/).