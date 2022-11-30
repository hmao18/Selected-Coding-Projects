%% Problem1 - Step1
n = 4;
A = eye(n);
f = ones(n,1);
b = [6 
    8 
    10 
    12];
lb = zeros(n,1);
intcon = 1:n;
x = intlinprog(f,intcon,-A,-b,[],[],lb,[],[],optimoptions('intlinprog'));

y = linprog(-b,A',f,[],[],zeros(4,1),[],optimset('linprog'));

a = [52 29 27 21];
pi = intlinprog(-y',1:4,a,80,[],[],zeros(4,1),[],[],optimoptions('intlinprog'));

fprintf('X_tilde = [%i %i %i %i], obj value = %i\n',x,f'*x)
fprintf('Y_tilde = [%4.2f %4.2f %4.2f %4.2f], obj value = %4.2f\n',y,b'*y)
fprintf('pi_tilde = [%i %i %i %i], obj value = %4.2f\n\n',pi, y'*pi)


%% Problem1 - Step2
n = 5;
A = [A pi];
f = ones(n,1);
b = [6 
    8 
    10 
    12];
lb = zeros(n,1);
intcon = 1:n;
x = intlinprog(f,intcon,-A,-b,[],[],lb,[],[],optimoptions('intlinprog'));

y = linprog(-b,A',f,[],[],zeros(4,1),[],optimset('linprog'));

a = [52 29 27 21];
pi = intlinprog(-y',1:4,a,80,[],[],zeros(4, 1),[],[],optimoptions('intlinprog'));

fprintf('X_tilde = [%i %i %i %i %i], obj value = %i\n',x,f'*x)
fprintf('Y_tilde = [%4.2f %4.2f %4.2f %4.2f], obj value = %4.2f\n',y,b'*y)
fprintf('pi_tilde = [%i %i %i %i], obj value = %4.2f\n\n',pi, y'*pi)

%% Problem1 - Step3
n = 6;
A = [A pi];
f = ones(n,1);
b = [6 
    8 
    10 
    12];
lb = zeros(n,1);
intcon = 1:n;
x = intlinprog(f,intcon,-A,-b,[],[],lb,[],[],optimoptions('intlinprog'));

y = linprog(-b,A',f,[],[],zeros(4,1),[],optimset('linprog'));

a = [52 29 27 21];
pi = intlinprog(-y',1:4,a,80,[],[],zeros(4, 1),[],[],optimoptions('intlinprog'));

fprintf('X_tilde = [%i %i %i %i %i %i], obj value = %i\n',x,f'*x)
fprintf('Y_tilde = [%4.2f %4.2f %4.2f %4.2f], obj value = %4.2f\n',y,b'*y)
fprintf('pi_tilde = [%i %i %i %i], obj value = %4.2f\n\n',pi, y'*pi)

%% Problem1 - Step4
n = 7;
A = [A pi];
f = ones(n,1);
b = [6 
    8 
    10 
    12];
lb = zeros(n,1);
intcon = 1:n;
x = intlinprog(f,intcon,-A,-b,[],[],lb,[],[],optimoptions('intlinprog'));

y = linprog(-b,A',f,[],[],zeros(4,1),[],optimset('linprog'));

a = [52 29 27 21];
pi = intlinprog(-y',1:4,a,80,[],[],zeros(4, 1),[],[],optimoptions('intlinprog'));

fprintf('X_tilde = [%i %i %i %i %i %i], obj value = %i\n',x,f'*x)
fprintf('Y_tilde = [%4.2f %4.2f %4.2f %4.2f], obj value = %4.2f\n',y,b'*y)
fprintf('pi_tilde = [%i %i %i %i], obj value = %4.2f\n\n',pi, y'*pi)

%% Problem1 - Step5
n = 8;
A = [A pi];
f = ones(n,1);
b = [6 
    8 
    10 
    12];
lb = zeros(n,1);
intcon = 1:n;
x = intlinprog(f,intcon,-A,-b,[],[],lb,[],[],optimoptions('intlinprog'));

y = linprog(-b,A',f,[],[],zeros(4,1),[],optimset('linprog'));

a = [52 29 27 21];
pi = intlinprog(-y',1:4,a,80,[],[],zeros(4, 1),[],[],optimoptions('intlinprog'));

fprintf('X_tilde = [%i %i %i %i %i %i], obj value = %i\n',x,f'*x)
fprintf('Y_tilde = [%4.2f %4.2f %4.2f %4.2f], obj value = %4.2f\n',y,b'*y)
fprintf('pi_tilde = [%i %i %i %i], obj value = %4.2f\n\n',pi, y'*pi)


%% Problem1 - Step6
n = 9;
A = [A pi];
f = ones(n,1);
b = [6 
    8 
    10 
    12];
lb = zeros(n,1);
intcon = 1:n;
x = intlinprog(f,intcon,-A,-b,[],[],lb,[],[],optimoptions('intlinprog'));

y = linprog(-b,A',f,[],[],zeros(4,1),[],optimset('linprog'));

a = [52 29 27 21];
pi = intlinprog(-y',1:4,a,80,[],[],zeros(4, 1),[],[],optimoptions('intlinprog'));

fprintf('X_tilde = [%i %i %i %i %i %i], obj value = %i\n',x,f'*x)
fprintf('Y_tilde = [%4.2f %4.2f %4.2f %4.2f], obj value = %4.2f\n',y,b'*y)
fprintf('pi_tilde = [%i %i %i %i], obj value = %4.2f\n\n',pi, y'*pi)

%% Problem 4
x = 0;
y = 0;
for i = 2:4
    x = x + nchoosek(5,i);
end

for i = 2:11
    y = y + nchoosek(12,i);
end

disp(x)
disp(y)
