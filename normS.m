function x=normS(x)
    y2=x;
    
    for i=2:size(x,2)-1
        if (x(i)-x(i-1))*(x(i)-x(i+1))>0
            
            b1=0.5;%(sin(abs(x(i)-x(i+1))))^2;
            b2=0.5;%(cos(abs(x(i)-x(i-1))))^2;
            x(i)=b1*x(i+1)+b2*x(i-1);
        end
    end
end