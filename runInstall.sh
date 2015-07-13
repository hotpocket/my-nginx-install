#!/bin/sh

#bundle
#librarian-chef install
chef-solo -c solo.rb -j solo.json
