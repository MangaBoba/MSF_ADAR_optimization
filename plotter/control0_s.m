function dYdt = control0_s(t, Y, P,Ztype)%P(1-alpha,2-gam,3-mu,4-beta,5-del,6-lamb,7-0,,8-Y2const,9-ro1,10-ro1,11-T1,12-T2)
   

       switch Ztype(1)
            case '1'
                Z=P(15);
            case '2'
%                  if(randsrc(1,1,[0,1;0.98,0.02]))%mod(t,1.75)==0)
                Z=P(15)*cos(0.25*t);
%                 else
%                     Z=Y(4);
%                 end
            case '3'
               % if(randsrc(1,1,[0,1;0.99,0.01]))

                    Z=0;%normrnd(0,P(15));
                    
                %else
                  %  Z=Y(4);
               % end
      end
       n=P(13);
       k=P(14);
%     dy1 = P(1)*Y(2)*Y(3)-P(2)*Y(1);
%     dy2 = P(3)*(Y(2)+Y(3))-P(4)*Y(1)*Y(3);
%     dy3 = P(5)*Y(2)-P(6)*Y(3);
    dy1 = P(1)*Y(2)*Y(3)-P(2)*Y(1);
    dy2 = P(3)*(Y(2)+Y(3))-P(4)*Y(1)*Y(3);
    dy3 = P(5)*Y(2)-P(6)*Y(3);
    dz=Z;
    
    switch Ztype(2)
        case '1'
            dy1=dy1+Z;
        case '2'
            dy3=dy3+Z;
    end
        
    dYdt=[dy1;dy2;dy3;dz];%,psi1,psi2
end