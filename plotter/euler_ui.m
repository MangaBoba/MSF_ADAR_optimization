function Y = euler_ui(fun, t0,dt,t1,Ys,P,stype)
    
    ts=t0:dt:t1;
    if(size(Ys,2)==3)
        Ys=[Ys,0];
    end
    
    if (nargin ==6)

        sz1 =  size(fun(1,Ys,P.'),1);
        Y1=zeros(size(ts,2)+1,sz1);
        Y1(1,1:3)=Ys(1:3);

        for t = 1:size(ts,2)
                  m = fun(t,Y1(t,1:3),P.');
                  Y1(t+1,1:3) = Y1(t,1:3)+dt*m(1:3).';
                  Y1(t+1,4:end)= m(4:end);
        end
    end
    
    if (nargin==7)
        sz1 =  size(fun(1,Ys,P.',stype),1);
        Y1=zeros(size(ts,2)+1,sz1);
        switch stype(1)
            case '1'
                Y1(1,4)=P(15);
            case '2' 
                Y1(1,4)=P(15)*cos(t0);
            case '3'
                Y1(1,4)=normrnd(0,P(15));
        end
        
        Y1(1,1:3)=Ys(1:3);

        for t = 1:size(ts,2)
                  m = fun(t*dt,Y1(t,1:4),P.',stype);
                  Y1(t+1,1:4) = Y1(t,1:4)+dt*m(1:4).';
                  Y1(t+1,5:end)= m(5:end);

        end
    end
 
    Y=Y1;    
end



