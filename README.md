# nomad-health-checks
Sample health checks for Nomad node problem detector (NNPD)<br/>
**NOTE** These are not **real** health checks and only serve as a reference to how your actual
health checks should be defined.

## Nomad-node-problem-detector (NNPD)

Nomad-node-problem-detector (NNPD) is a system which scans through the problems<br/>
on nomad client nodes, and take the bad nodes out of the scheduling pool so that<br/>
nomad doesn't schedule any new jobs on these bad nodes. 

If the problem is transient and fixes itself in sometime, NNPD will put the node back<br/>
in the scheduling pool, in the next scanning cycle.

NNPD is composed of two main components
- Detector
- Aggregator

### Detector

- Detector runs on every nomad client node and scans through some pre-defined health checks<br/>
- This repo (nomad-health-checks) is just a sample repo on how these health checks should be defined.<br/>
- This repo is mostly used by Nomad-node-problem-detector (NNPD) repo for it's integration tests.<br/>
- These are not **real** health checks and only serve as a reference to how your actual health checks should be defined.

### Aggregator

Aggregator is the central component (mastership) to which every detector (node) reports it's problems to.<br/>
Based on those results, aggregator will either be taking the node out of the scheduling pool (bad node)<br/>
or put the node back to the scheduling pool (good node) or do nothing in case of no state change.
