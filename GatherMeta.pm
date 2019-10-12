package GatherMeta;

use strict;
use warnings;
no warnings qw(experimental::signatures);

use feature 'signatures';

use File::Slurp qw(read_dir);

use Data::Dumper;

use Class::Struct;

struct MetaGroup => {
  file => '$',
  query => '$',
  files_matching => '@'
};

use Exporter 'import';
our @EXPORT_OK = qw(gather);

sub gather($path) {
  my @dirs = grep { -d "$path/$_" } read_dir($path);

  my @terms = (
    ['status', 'approve'],
    ['status', 'disapprove'],
    ['status', 'refer_to_mentor'],
    ['comments', 'elixir.general.file_not_found'],
    ['comments', 'elixir.general.parsing_error'],
    ['comments', 'elixir.solution.use_module_doc'],
    ['comments', 'elixir.solution.raise_fn_clause_error'],
    ['comments', 'elixir.solution.use_specification'],
    ['comments', 'elixir.two-fer.use_guards'],
    ['comments', 'elixir.two-fer.use_default_param'],
    ['comments', 'elixir.two-fer.use_string_interpolation']
  );

  my @records = ();
  foreach my $term (@terms) {
    my $record = {
      file => $term->[0],
      query => $term->[1],
      matches => []
    };

    look_for_term($record, $path, \@dirs);

    push @records, $record;
  }

  return \@records;
}

sub look_for_term($record, $path, $dirs) {
  my $file = $record->{file};
  my $query = $record->{query};

  foreach my $dir (@$dirs) {
    my $fullpath = $path . '/' . $dir . '/' . $file;

    open my $handle, '<', $fullpath;
    chomp(my @lines = <$handle>);
    close $fullpath;

    my %search_lines = map { $_ => 1 } @lines;

    if(exists($search_lines{$query})) { push(@{$record->{matches}}, $dir) };
  }
}

1;