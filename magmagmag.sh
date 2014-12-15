#!/bin/bash
source /etc/profile.d/rvm.sh
export rvmsudo_secure_path=1
rvm use ruby-2.1.5
/usr/local/rvm/rubies/ruby-2.1.5/bin/ruby /home/yusuke/bin/magmagmag/magmagmag.rb

