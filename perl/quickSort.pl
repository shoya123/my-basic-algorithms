# クイックソート
use POSIX qw(floor);

my @arr = (148, 651, 124, 638, 567, 435, 185, 413, 841, 353);
print join(",", &quickSort(@arr));

sub quickSort {
    my ($arr) = @_;
    my $q;
    $q = sub {
        my ($arr, $head, $tail) = @_;
        my $i = $head;
        my $j = $tail;
        my $pivot = @arr[floor(($head + $tail) / 2)];
        my $tmp;
        while (1) {
            while (@arr[$i] < $pivot) {
                $i++;
            }
            while ($pivot < @arr[$j]) {
                $j--;
            }
            if ($i >= $j) {
                last;
            }
            $tmp = @arr[$i];
            @arr[$i] = @arr[$j];
            @arr[$j] = $tmp;
            $i++;
            $j--;
        }
        
        if ($head < $i - 1) {
            $q->(\@arr, $head, $i-1);
        }
        if ($j + 1 < $tail) {
            $q->(\@arr, $j+1, $tail);
        }
        return @arr;
    };   
    return $q->(\@arr, 0, $#arr);
}
