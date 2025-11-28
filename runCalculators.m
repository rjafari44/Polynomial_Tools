function runCalculators()

    % Load symbolic package if running in Octave
    if exist('OCTAVE_VERSION', 'builtin') ~= 0
        pkg load symbolic
        disp('Running in Octave');
    else
        disp('Running in MATLAB');
    end

    addpath('functions');

    fprintf('\n*** Welcome to Polynomial Tools ***\n');

    while true
        fprintf('\nChoose calculator:\n');
        fprintf('1. Factoring calculator\n');
        fprintf('2. Distributing calculator\n');
        fprintf('3. Linear Graph calculator\n');
        fprintf('4. Exit\n');

        choice = input('Enter your choice: ', 's'); %read as a string
        choiceNum = str2double(choice);
        
        if isnan(choiceNum)
            fprintf('\nInvalid input. Letters are not allowed!\n') % if input was a letter or an invalid number
        
        else
            switch choiceNum
                case 1
                    factoringCalc();
                case 2
                    distributingCalc();
                case 3
                    linearGraphCalc();
                case 4
                    fprintf('\nGoodbye!\n\n');
                    break;
                otherwise
                    fprintf('\nInvalid input. Please input a number between 1-4\n')
            end 
        end
    end 
end