clc;
clear;

g = [1 0 1 1 0 0 0 1];
f = 2;
l = max(size(g));
r = 1/2;
re = ceil(r);
val = re - r;
t = 0:(2 * %pi) / 99:2 * %pi;
cp = [];
sp = [];
mod = [];
mod1 = [];
bit = [];

for n = 1:2:max(size(g))
    if g(n) == 0 & g(n + 1) == 1
        die = (sqrt(2) / 2) * ones(1, 100);
        die1 = -(sqrt(2) / 2) * ones(1, 100);
        se = [zeros(1, 50), ones(1, 50)];
    elseif g(n) == 0 & g(n + 1) == 0
        die = -(sqrt(2) / 2) * ones(1, 100);
        die1 = -(sqrt(2) / 2) * ones(1, 100);
        se = [zeros(1, 50), zeros(1, 50)];
    elseif g(n) == 1 & g(n + 1) == 0
        die = -(sqrt(2) / 2) * ones(1, 100);
        die1 = (sqrt(2) / 2) * ones(1, 100);
        se = [ones(1, 50), zeros(1, 50)];
    elseif g(n) == 1 & g(n + 1) == 1
        die = (sqrt(2) / 2) * ones(1, 100);
        die1 = (sqrt(2) / 2) * ones(1, 100);
        se = [ones(1, 50), ones(1, 50)];
    end;
    
    c = cos(f * t);
    s = sin(f * t);
    
    cp = [cp, die];
    sp = [sp, die1];
    mod = [mod, c];
    mod1 = [mod1, s];
    bit = [bit, se];
end;

bpsk = cp .* mod + sp .* mod1;

subplot(2, 1, 1);
plot(bit, "Linewidth", 1.5);
set(gca(), "grid", [1, 1]);
title("Binary Signal")
set(gca(), "data_bounds", matrix([0, 50 * max(size(g)), -1.5, 1.5], 2, -1));

subplot(2, 1, 2);
plot(bpsk, "Linewidth", 1.5);
set(gca(), "grid", [1, 1]);
title("QPSK modulation")
set(gca(), "data_bounds", matrix([0, 50 * max(size(g)), -1.5, 1.5], 2, -1));
