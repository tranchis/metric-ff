# metric-ff
Dockerfile for creating an image for running the Metric-FF planner from https://fai.cs.uni-saarland.de/hoffmann/metric-ff.html

## Usage

Usage information:

```bash
$ docker run tranchis/metric-ff
```

Running pddl files from your local computer:

```bash
$ docker run -v `pwd`:/pddl tranchis/metric-ff -o domain.pddl -f problem.pddl
```
