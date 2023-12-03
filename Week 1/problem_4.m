close all
clc
% My student number is 887799

% a) Define in Matlab 1x6 size vectors a and b which both have the same 
% integer numbers
a = [9,10,11,12,13,14];
b = [9,10,11,12,13,14];

% b) Multiply the vectors a*b
c = a*b;
disp(c)
% Error using  * 
% Incorrect dimensions for matrix multiplication. Check that the number of 
% columns in the first matrix matches the number of rows in the second 
% matrix. To perform elementwise multiplication, use '.*'.
% Error in problem_4 (line 10)
% c = a*b;
% Reason for this error is matrix a and matrix b's dimensions are 
% different so multiplication is not possible

% c) Multiply the vectors a.*b
d = a.*b;
disp(d) % Result: [81 100 121 144 169 196]
% The result is different from (b) because this is element-wise 
% multiplication: 9 * 9 = 81, 10 * 10 = 100 and so on

% d) Make the vector b vertical. Multiply now the vectors a and b [a*b]. 
% Show the result
b = b';
e = a * b;
disp(e) % The result is 811

% e) Show two additional ways (in addition to (a)) to define the vectors
f = 9:1:14; % evenly-spaced array, values like matrix a
g = 9:14; % like the above
h = ones(6); % create 6x6 matrix containing 1s
v = h(1,:); % vector created by taking one whole row of a matrix
disp(v) % Result = [1 1 1 1 1 1]

% f) The modulo symbol % is used to create comments in Matlab
% The semicolon ; is used to end code lines, typically required for
% assignment and creation of matrices
