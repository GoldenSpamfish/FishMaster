classdef Interval < handle
% An Interval has a left endpoint and a right endpoint; left < right.
    
    properties
       left
       right
    end
    
    methods
        function Inter = Interval(lt, rt)
        % Constructor:  construct an Interval object.  Assume lt < rt.
            Inter.left= lt;
            Inter.right= rt;
        end
        
        function w = getWidth(self)
        % Return the width of the Interval
            %%%% Write your code below %%%%
        w=abs(self.right-self.left);
        
        end
        
        function scale(self, f)
%         % Scale self by a factor f, keeping the left end the same.
%             %%%% Modify the code below, making effective use of getWidth %%
            
            w= self.getWidth;
            self.right= self.left + w*f;
        end
        
        function shift(self, s)
        % Shift self by s
            self.left= self.left + s;
            self.right= self.right + s;
        end
        
        function tf = isIn(self, other)
        % tf is true if self is in the other Interval; otherwise false.
            tf= self.left>=other.left && self.right<=other.right;
        end
        
        function Inter = add(self, other)
        % Inter is the new Interval formed by adding self and the 
        % the other Interval
            %%%% Write your code below %%%%
            
        self.right=self.right+other.right;
        Inter = Interval(self.left, self.right);
        end
        
%         function disp(self)
%         % Display self, if not empty, in this format: (left,right)
%         % If empty, display 'Empty <classname>'
%             if isempty(self)
%                 fprintf('Empty %s\n', class(self))
%             else
%                 fprintf('(%f,%f)\n', self.left, self.right)
%             end
%         end
        
    end %methods
    
end %classdef