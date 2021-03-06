nq = 2;

dT_ht = reshape(1:4*3*nq,3*nq,4);
dT_std_ref = [  1   2; ...
                3   4; ...
                5   6; ...
                0   0; ...
                7   8; ...
                9   10; ...
                11  12; ...
                0   0; ...
                13  14; ...
                15  16; ...
                17  18; ...
                0   0; ...
                19  20; ...
                21  22; ...
                23  24; ...
                0   0 ];
                

dT_std = jacHt2Std(dT_ht);

assert(all(all(dT_std == dT_std_ref)));
assert(all(all(dT_ht == jacStd2ht(dT_std))));
