use Test::More qw[no_plan];
use strict;
$^W = 1;

use lib qw[lib ../lib];

BEGIN {
  use_ok 'Devel::Caller::Perl', qw[called_with];
}

my @orig_args = qw[Hello there little red riding hood];

sub test_cw {
  my @args = called_with;
  my $args = called_with;
  ok eq_array( \@orig_args, \@args ), 'list context correct';
  ok eq_array( \@orig_args, $args ),  'scalar context correct';
}

sub foo {
  test_cw();
}

foo @orig_args;
