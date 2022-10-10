% % k=1:1:10;
% % for i=k
% %     disp (i);
% % end
% % dominic=realmax
% % 
% % dominic2=realmax
% % for a= 1:1:10; disp("test"); end
% % k=1:1:5;
% % for b=k;
% % %     b
% % % end
% % % % tic
% % % % a=1;
% % % % while a>=0 && toc<=5
% % % % a=a+1
% % % % end
% % % 
% % % while dominic ~= Inf
% % min=4;
% % max=5;
% % % 
% % % fprintf("random: %g  min: %g   max: %g",randRange(min,max),min,max)
% % arr=[1 2 5 4 5];
% % yarr=[arr; arr; arr;]
% % % 
% % % larr=[1;2;3;4;5];
% % % barr=[larr larr larr]
% % % 
% % % xarr=barr'
% % s=0;
% % for i=yarr
% % s=s+i;
% % end
% % s
% m=10;
% r=0;
% v=[];
% 
% while ~ vectorQuery(v,length(v)+1,r)
%     r=ceil(rand*m+1)
%     v=[v r]
%     disp("test")
% end
% disp("test2")
% v
% 
% 
% function found = vectorQuery(v, n, r)
% % Search for r in the first n values of vector v.
% % found is true if numeric scalar r is in the first n components of 
% % numeric vector v; otherwise found is false.  n is a positive integer.
% % If v is empty then found is false.
% while false
% end
% i=1;
% found=false;
% while i<n && found==false && i<length(v)
%     i=i+1;
%     a=v(i);
%     if a==r
%         found=true;
%     end       
% end
% end

a=[1,2,3,4,5,-1,-2,-3,-4,-5]
b=[-1,-2,-3,-4,-5,1,2,3,4,5]
c=[-1;-2;-3;-4;-5;1;2;3;4;5]

a*c
a.*b