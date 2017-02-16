%% Setup
P = [ 1 1 0 0 0; 1 0 1 0 0; 0 1 1 0 0; 1 0 0 1 0; 0 1 1 1 0];
%% Init
clc;
[m,n] = size(P);
Tm = T(m); % all subsets of {1,...,m} where {} = 0
%% Process
for i = 2 : length(Tm)
    Pi = Tm{i}(2:end);
    Paths = P( Pi, : );
    SI = sum(abs(null( Paths ))',1) < 1e-10;
    NoI = sum(SI); % number of identifiable links
    if( NoI > 0)
        Pi
        Paths
        ILi = find(SI == 1)
    end
end
