#!perl -T
use 5.010001;
use strict;
use warnings;
use Test::More;

plan tests => 3;

BEGIN {
    use_ok( 'Mojolicious::ServiceManage' ) || print "Bail out!\n";
    use_ok( 'Mojolicious::Plugin::Service' ) || print "Bail out!\n";
    use_ok( 'Mojolicious::Service' ) || print "Bail out!\n";
}

diag( "Testing Mojolicious::ServiceManage $Mojolicious::ServiceManage::VERSION, Perl $], $^X" );
