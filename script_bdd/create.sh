#!/bin/bash

dropdb -h 90.63.236.193 -U vmotte project_erp_5 
createdb -h 90.63.236.193 -U vmotte project_erp_5 
psql -h 90.63.236.193 -U vmotte -d project_erp_5 < ./table.sql
