# バブルソート
use strict;
use warnings;

my @arr = (104, 865, 413, 541, 304, 354, 165, 150);
my @result = &bubbleSort(\@arr);
print join(",", @result);
sub bubbleSort {
    my ($arr) = @_;
    for (my $i = 0; $i < $#arr; $i++) {
        for(my $j = $#arr; $j > $i; $j--) {
            if ($arr[$j] < $arr[$j-1]) {
                my $tmp = $arr[$j];
                $arr[$j] = $arr[$j-1];
                $arr[$j-1] = $tmp;
            }
        }
    }
    return @arr;
}
