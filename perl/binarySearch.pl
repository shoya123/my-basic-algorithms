# 二分探索
use POSIX qw(floor);

my @arr = (104, 150, 165, 304, 354, 413, 541, 865);
my $result = &binarySearch(\@arr, 304);
print $result;
sub binarySearch {
    my ($arr, $target) = @_;
    my $head = 0;
    my $mid;
    my $tail = $#arr;
    
    while ($head <= $tail) {
        $mid = floor(($head + $tail) / 2);
        if ($arr[$mid] == $target) {
            return $mid;
        } elsif ($arr[$mid] < $target) {
            $head = $mid + 1;
        } else {
            $tail = $mid - 1;
        }
    }
    return -1;
}
