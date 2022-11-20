classdef Fraction < handle 
% A Fraction has a numerator (num) and a denominator (denom).
% A negative fraction has a negative numerator and a positive denominator. 
% If the denominator is zero, set the numerator to +/- inf and the
% denominator to 1.
% Assume numerator and denominator are integers (except for the case of inf).
    
    properties
        num    % numerator
        denom  % denominator
    end
    
    methods
        function frac = Fraction(nu, de)
        % Constructor: construct a Fraction object and return its handle
            if de<0   % need to make denominator positive
                nu= -nu;
                de= -de;
            end
            if de~=0  % normal fraction
                frac.num= nu;
                frac.denom= de;
            else      % denominator is zero
                if nu==0     % set fraction to NaN (Not a Number)
                    frac.num= NaN;
                elseif nu<0  % set fraction to -Inf
                    frac.num= -Inf;
                else         % set fraction to +Inf
                    frac.num= Inf;
                end                
                frac.denom= 1;
            end
            %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
            % For submission on MATLAB Grader, DO NOT uncomment the
            % statement below.  For testing within MATLAB, you can
            % uncomment the statement below if function reduce is 
            % implemented:
            %   frac.reduce()
            %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        end
        
        function tf = isLessThan(self, other)
        % tf is true if self is strictly less than the other Fraction
            tf= self.num*other.denom < other.num*self.denom;
        end
        
        function tf = isEqualTo(self, other)
        % tf is true if self is equal to the other Fraction; otherwise false.
        % Assume self and other are not NaN.
            %%%% write your code below %%%%
            tf= self.num*other.denom == other.num*self.denom;
        end
        
        function out = add(self, other)
        % out is a new Fraction from adding self and the other Fraction
            %%%% write your code below %%%%
            out=Fraction(self.num*other.denom+other.num*self.denom,other.denom*self.denom);
            
        end
        
        function val = toDouble(self)
        % val is the type double value of self
            %%%% write your code below %%%%
            val=self.num/self.denom;
        end
        
        function reduce(self)
        % Reduce self (e.g., 14/6 --> 7/3)
            if self.num==0 || isnan(self.num) || isinf(abs(self.num))
                self.denom= 1;
            else
                a= min(abs(self.num), self.denom);
                b= max(abs(self.num), self.denom);
                r= rem(b,a);
                while r~=0
                    b= a;
                    a= r;
                    r= rem(b,a);
                end
                % a is the GCD
                self.num= self.num/a;
                self.denom= self.denom/a;
            end
        end
        
%         function disp(self)
%         % Display self, a Fraction, in this format: numerator/denominator
%             if isempty(self)
%                 fprintf('Empty %s\n', class(self))
%             else
%                 fprintf('%d/%d\n', self.num, self.denom)
%             end
%         end
        
    end %methods
    
end %classdef

