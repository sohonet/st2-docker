#!/bin/bash

# Configure Garbage Collector Service
# periodically remove old data (action executions, live action, action execution output, and trigger instance database objects)

crudini --set /etc/st2/st2.conf garbagecollector action_executions_ttl 7
crudini --set /etc/st2/st2.conf garbagecollector action_executions_output_ttl 7
crudini --set /etc/st2/st2.conf garbagecollector trigger_instances_ttl 7
