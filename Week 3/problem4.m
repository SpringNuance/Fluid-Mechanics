x=-10:0.5:10;
y1=sin(x);
plot(x,y1,'-or');
hold on;
y2=cos(x);
plot(x,y2,'sb','LineStyle','--');
y3=log(x);
plot(x,y3,'-^k','LineStyle',':');
xlabel('X');
ylabel('Y');
legend('sin(x)','cos(x)','log(x)');
axis([-10 10 -2 3])