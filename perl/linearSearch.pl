# 線形探索
use strict;
use warnings;

my @arr = (104, 865, 413, 541, 304, 354, 165, 150);
my $result = &linearSearch(\@arr, 304);
if ($result) {
    print($result);
} else {
    print('見つかりませんでした');
}
sub linearSearch {
    my ($arr, $target) = @_;
    for (my $i = 0; $i < @arr; $i++) {
        if ($arr[$i] == $target) {
            return $i;
        }
    }
    return -1;
}