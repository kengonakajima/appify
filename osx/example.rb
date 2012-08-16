#! /usr/bin/ruby

wd =File.dirname(__FILE__)

require "#{wd}/rumino.rb"

print "Hello world!\n"
system( "open /" )


writeFile("/tmp/appify_test_out1",`pwd` )
writeFile("/tmp/appify_test_out2",`ls ~` )
writeFile("/tmp/appify_test_out3",`ls ~/Library` )
writeFile("/tmp/appify_test_out4",__FILE__)


