function [points, d] = diceGame(nTrials)
% Simulate the rolling of three 6-sided dice nTrials times, nTrials>1.
% In each trail, earn 1 point if at least two dice show the same face.
% points: the total number of points earned
% d: the array of 3 dice, each a Die

nD= 3;       % number of dice
points= 0;   % number of points earned so far

for k= 1:nD
   d(k)= Die(6);  % 6-sided die
end

for t= 1:nTrials

    % Roll the dice 
    for k= 1:nD
        %Roll kth die
        d(k).roll()
        fprintf('%d ', d(k).getTop())
    end
    
    % Win 1 point if at least two dice show the same face
    if d(1)==d(2) || d(2)==d(3) || d(1)==d(3) 
        points= points + 1;
    end
    fprintf('  Points so far: %d\n', points)

end