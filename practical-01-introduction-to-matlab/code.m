% Practical 01 – Introduction to MATLAB

% Task 1: Algebraic Expressions
A = [1 2; 3 4];
B = [5 6; 7 8];

% Matrix Addition
add_result = A + B;

% Matrix Subtraction
sub_result = A - B;

% Matrix Multiplication (Standard)
mul_result = A * B;

% Element-wise Multiplication
elementwise_mul = A .* B;

% Element-wise Division
div_result = A ./ B;

disp('Addition Result:'); disp(add_result);
disp('Subtraction Result:'); disp(sub_result);
disp('Matrix Multiplication Result:'); disp(mul_result);
disp('Element-wise Multiplication:'); disp(elementwise_mul);
disp('Element-wise Division:'); disp(div_result);

