function s = removeChar(c, s)

if ~isempty(s)
    if length(s)==1
        % Small data case(s)
        if s(1)==c
            s(1)= '';
        end
    else
        % Split into two parts (left, right) and recurse
        resultLeft= removeChar(c, s(1));
        resultRight= removeChar(c, s(2:end));
        % Combine results
        s= [resultLeft resultRight];
    end
end
% Empty s is implicitly handled: function just returns s as is (empty)


% Returns char row vector s with all occurrences of char c removed.
% % c: a single char
% % s: a char row vector, possibly empty
% 
% % Use these 3 steps to divide and conquer: 
% %    (1) do small data case(s), (2) split data and recurse, (3) combine results 
% 
% % Step 1: deal with "small data case(s)"
% if isempty(s)
%     s = s;
% 
% elseif length(s)==1
%     if s(1)==c
%         s= '';
%     end
% 
% else
%     % Step 2: split into two parts (left, right) and recurse
%     left= s(1);
%     right= s(2:end);
%     resultLeft= removeChar(c, left);
%     resultRight= removeChar(c, right);
%     
%     % Step 3: combine results
%     s= [resultLeft resultRight];
% end

% %%%%%%%%%%%%
% % Can split the data differently. Here's splitting by halving.
% if ~isempty(s)
%     if length(s)==1
%         % Small data case(s)
%         if s(1)==c
%             s= '';
%         end
%     else
%         % Split into two parts (left, right) and recurse
%         mid= floor(length(s)/2);
%         left= s(1:mid);
%         right= s(mid+1:end);
%         resultLeft= removeChar(c, left);
%         resultRight= removeChar(c, right);
%         % Combine results
%         s= [resultLeft resultRight];
%     end
% end
