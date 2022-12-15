classdef datum < handle
    % for testing sorts
    properties
        index
        numValue
        hashCode
        stored
    end

    properties (Access = private)
        label
    end

    methods
        function dat= datum(numValue, index, label, stored)
            if nargin >=0
                dat.hashCode=sprintf('%08d',randi(99999999));
                dat.index=-1;
            end
            if nargin >= 1
                dat.numValue=numValue;
            end
            if nargin >= 2
                dat.index=index;
            end
            if nargin >= 3
                dat.label=label;
            end
            if nargin >= 4
                dat.stored=stored;
            end
        end
        
        function lab = getLabel(self)
            lab=self.label;
        end
        
        function setLabel(newLabel,self)
            self.label=newLabel;
        end

         function disp(self)
             fprintf('%05d     %2.2f      %s      % 5s\n',self.index,self.numValue,self.label,self.stored)
         end
        
    end
end
