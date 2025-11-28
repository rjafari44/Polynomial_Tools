function distributingCalc()

    syms x;

    % get user input for the coefficients of the polynomial
    disp(' ');
    disp('***** DISTRIBUTING CALCULATOR *****')
    factored_p = input('Enter a factored polynomial (e.g., (x+5)*(x-6)): ');

    expanded_p = expand(factored_p);   % compute the distribution

    disp (' ');
    disp('Expanded polynomial:');   % display the expanded polynomial
    disp(expanded_p);
end