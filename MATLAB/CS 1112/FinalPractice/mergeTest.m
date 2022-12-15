
bigness=10000;
forSort=datum(bigness);
for n =1:bigness
forSort(n)= datum(rand(),n,'val',sprintf('get merged %iHead',n));
%disp(datum(rand(),n,'val',sprintf('get merged %iHead',n)))
end
tic
sorted=mergeSort(forSort,true);
toc
%  disp('-----------------------------------------------------')
%  for n =1:bigness
%     disp(sorted(n))
%  end


% tic
% sort(rand(bigness,1));
% toc