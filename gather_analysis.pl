#!/usr/bin/env perl
use strict;
use warnings;

use File::Basename;
use lib dirname (__FILE__);

use GatherMeta;

use Data::Dumper;

use JSON::PP qw(decode_json encode_json);

my $records = GatherMeta::gather("./results");

print encode_json($records) . "\n";

exit;