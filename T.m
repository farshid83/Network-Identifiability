function out = T(N)

if( N <= 0 )
    out = {0};
    l = 0;
else
    out = T(N-1);
    l = 2 ^ (N-1);
end

for i = 1 : l %length(out)
    out = [out {[out{i} N]}];
end

end