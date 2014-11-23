# Lets Make

$@, $<, @, $*, $^, phony targets, .PHONY clean or $(phony clean), phony can be used to run tests or to push to github etc. variables (macros), pattern rules, DAG, timestamping, patsubst, comments, all is phony, TAB, \, makedepend

$(function arg1 arg2 arg3 ...), patsubst, := vs =

listing all files in a folder (recursive)

For sometime, just forget that make is used for compiling C/C++ projects. Instead, let us look at make as a generic tool which can help us define dependencies between certain jobs.

## DAG

The underlying principle behind Make is a DAG (Directed Acyclic Graph). The DAG represents the set of dependencies between all pieces.

task_a: task_b task_c
    @echo "running task A"

task_b: task_


## Pattern rules