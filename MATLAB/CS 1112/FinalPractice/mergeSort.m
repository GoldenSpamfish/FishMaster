function sorted = mergeSort(datumArray, small2big)
    if length(datumArray)==1
        sorted=datumArray;
    else
       split=ceil(length(datumArray)/2);
          left=mergeSort(datumArray(1:split), small2big);
          right=mergeSort(datumArray(split+1:end), small2big);

       if(small2big)
        sorted=merge(left,right);
       else
        sorted=merge(right,left);
       end
    end
