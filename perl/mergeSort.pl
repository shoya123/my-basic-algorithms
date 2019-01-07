# マージソート
use POSIX qw(floor);

my @arr = (148, 651, 124, 638, 567, 435, 185, 413, 841, 35);
print join(",", &margeSort(@arr));

sub margeSort {
    my ($arr) = @_;
    my $m;
    $m = sub {
        my ($arr, $head, $tail) = @_;
        if ($head < $tail) {
            my $mid = floor(($head + $tail) / 2);
            $m->(\@arr, $head, $mid);
            $m->(\@arr, $mid + 1, $tail);

            my @l = @arr[$head .. ($mid+1)];
            my @r = @arr[($mid+1) .. ($tail+1)];
            my $i = $head;
            while ($#l > 0 && $#r > 0) {
                if ($l[0] <= $r[0]) {
                    @arr[$i++] = shift(@l);
                } else {
                    @arr[$i++] = shift(@r);
                }
            }
            while ($#l > 0) {
                @arr[$i++] = shift(@l);
            }
        }
        return @arr;
    };
    return $m->(\@arr, 0, $#arr, $m);
}
