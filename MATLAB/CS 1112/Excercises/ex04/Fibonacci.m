% Fibonacci
clc
f_old = 0;
f_cur = 1;
n = 1;
% f_cur is the nth Fibonacci number
while (n<=10)
    if n==10
    fprintf('%2d %10d\n\n',n,f_cur);
    end
    % Update:
    f_new = f_old + f_cur;
    f_old = f_cur;
    f_cur = f_new;
    n = n+1;
end
f_old = 0;
f_cur = 1;
n = 1;
while (f_cur<10e6)
    fprintf('%2d %10d\n',n,f_cur);
    % Update:
    f_new = f_old + f_cur;
    f_old = f_cur;
    f_cur = f_new;
    n = n+1;
end
disp("")
f_old = 0;
f_cur = 1;
n = 1;

while (f_cur<10e6)
    if f_cur>10e3
    fprintf('%2d %10d\n',n,f_cur);
    end
    % Update:
    f_new = f_old + f_cur;
    f_old = f_cur;
    f_cur = f_new;
    n = n+1;
end