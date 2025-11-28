function factoringCalc()

    syms x;

    % get user input for the coefficients of the polynomial
    disp(' ');
    disp('***** FACTORING CALCULATOR *****')
    coeffs = input('Enter the coefficients of the polynomial in descending degree order using brackets (e.g., [1, 5, 8]): ');
    p = poly2sym(coeffs, x);  % convert the coefficient vector into a symbolic polynomial
    factors = factor(p);  % compute the factoring

    % check to see if the polynomial is factorable or not
    if isequal(factors, p)
        disp(' ');
        disp('The polynomial is not factorable');
    else
        disp(' ');
        disp('Factored polynomial:');
        disp(factors);
    end

    r = roots(coeffs);       % find the numerical roots of a polynomial from a coefficient vector

    disp(' ');
    disp('The roots are:');  % display the resultant roots
    disp(r);
end 