#!/bin/bash

S_DIR=`dirname $0`
/usr/bin/ruby "${S_DIR}/access.rb" &
/usr/bin/ruby "${S_DIR}/error.rb" 
