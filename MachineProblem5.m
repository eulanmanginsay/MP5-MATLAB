% Problem 5
n = 0:199;
y = 0:199;
x = input('Input equation of x(n): ');

for a = 1:200
    if y(a) == 0
        y(a) = -1.5*x(a) + 2*x(a + 1) - 0.5*x(a + 2);
    elseif y(a) > 0 && y(a) <= 198
        y(a) = 0.5*x(a + 1) - 0.5*x(a - 1);
    elseif y(a) == 199
        y(a) = 1.5*x(a) - 2*x(a - 1) + 0.5*x(a - 2);
    end
end

plot(n, x)
hold on
plot(n, y)
legend('x(n)', 'y(n)')
xlabel('n')
ylabel('x, y')
hold off
