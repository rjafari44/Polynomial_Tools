function linearGraphCalc()

    syms x;

    % Get user funtion from user input
    disp(' ');
    disp('***** LINEAR EQUATION GRAPHING CALCULATOR *****');
    graph_func = input('Enter a linear equation in x (e.g., 2*x + 3):'); 

    disp(' ');
    disp('Plotting...');
    disp(' ');

    s = sym(graph_func);   % Convert input string to a symbolic expression
    f_handle = matlabFunction(s);   %  Convert symbolic expression to a function handle for numeric evaluation

    x_val = -10:0.1:10;  % adjustable range for x
    y_val = f_handle(x_val);  % Compute corresponding y values

    % Plot the line
    plot(x_val, y_val, 'LineWidth', 2, 'color', 'b');
    grid on;
    grid minor;
    xlabel('x');
    ylabel('y');
    title(['Graph of Equation y = ', char(s)]);
end