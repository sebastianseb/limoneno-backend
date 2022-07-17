#!/bin/bash
rake db:create
rake db:migrate
rake db:seed

foreman start