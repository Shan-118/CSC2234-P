function[root]=newton_raphson(x0,steps,epes)
xr=x0;
n=1;
er=1;

while(n<=steps && er>epes)
    if df(xr)~=0
        xr_new=xr-(f(xr)/df(xr));
    end
    
    if xr_new ~= 0
        er=abs((xr_new-xr)/xr_new);
    end

    xr=xr_new;
    n=n+1;
    error(n)=er;
    stp(n)=n;
   
end

plot(stp,error);
root=xr;
xlabel('steps');
ylabel('relative error');

end

  

    

