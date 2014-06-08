#!perl
use Test::More;

BEGIN {
    use_ok 'Musical::Interval::Barycentric';
}

my $obj = eval { Musical::Interval::Barycentric->new };
isa_ok $obj, 'Musical::Interval::Barycentric';
ok !$@, 'created with no arguments';
my $x = $obj->{foo};
is $x, 'bar', "foo: $x";

$obj = Musical::Interval::Barycentric->new(
    foo => 'Zap!',
);
$x = $obj->{foo};
like $x, qr/zap/i, "foo: $x";

done_testing();
