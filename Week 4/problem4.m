clc;

M = dlmread('data.txt');
x = M(:,1);
y = M(:,2);
plot(x,y, 'b');
hold on;
% My student number is 887799
% Multiply the 2nd column data with my student number’s last digit
yMulti = y.*9;
plot(x, yMulti, 'r');
xlabel('X');
ylabel('Y');
legend("original data", "new data");
% In the plot, the blue line is original data and the red line is
% the modified data
% writing the new data into a new file 
newData = [x, yMulti];
dlmwrite('newdata.txt', newData, 'delimiter', '\t');