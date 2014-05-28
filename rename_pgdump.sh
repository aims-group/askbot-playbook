#!/bin/sh
#
# This script will transform an SQL dump of an askbot database so that the database owner is changed.
# We need to do this when moving from single-instance to multi-instance askbot databases
#
# usage: <prog> old_owner new_owner <old_db.sql >new_db.sql
#

old_owner=$1
new_owner=$2

sed -e "s/^--\(.*\)Owner: ${old_owner}/--\1Owner: ${new_owner}/" -e "s/OWNER TO ${old_owner}/OWNER TO ${new_owner}/"
