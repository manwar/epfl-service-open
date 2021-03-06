# Original work (c) ECOLE POLYTECHNIQUE FEDERALE DE LAUSANNE, Switzerland, VPSI, 2018.
# Modified work (c) William Belle, 2018.
# See the LICENSE file for more details.

use strict;
use warnings;

use EPFL::Service::Open qw( getService );

use Test::More tests => 4;

is( getService(undef), undef, 'undef getService' );
is( getService(''),    undef, 'empty string getService' );
is(
  getService('git@github.com:epfl-devrun/polywiki.git'),
  'https://wiki.epfl.ch',
  'resolve getService'
);
is( getService('git@github.com:taylor-swift.git'),
  undef, 'doesn\'t getService' );
