classdef Die < handle
% A fair die has a certain number of sides (default is 6).  At rest, one of
% its sides is the top face.
    
    properties (Access=private)
       sides=6;
       top
    end
    
    methods
        function D = Die(s)
        % Constructor:  Create an s-sided Die
            if nargin==1
                D.sides= s;
            end
            D.roll()
        end
        
        function s = getSides(self)
           s= self.sides; 
        end
        
        function t = getTop(self)
           t= self.top; 
        end
        
        function roll(self)
        % Roll the Die once
            face= ceil(rand*self.getSides());
            self.setTop(face)
        end
        
   end %methods public
   
   methods (Access=protected)
       function setTop(self, f)
       % Set this Die's top to face f
        self.top= f;
       end
   end
       
end %classdef