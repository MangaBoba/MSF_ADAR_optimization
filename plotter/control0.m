function dYdt = control0(t, Y, P)%P(1-alpha,2-gam,3-mu,4-beta,5-del,6-lamb,7-0,,8-Y2const,9-ro1,10-ro1,11-T1,12-T2)
   

%     dy1 = P(1)*Y(2)*Y(3)-P(2)*Y(1);
%     dy2 = P(3)*(Y(2)+Y(3))-P(4)*Y(1)*Y(3);
%     dy3 = P(5)*Y(2)-P(6)*Y(3);

    dy1 = P(1)*Y(2)*Y(3)-P(2)*Y(1);
    dy2 = P(3)*(Y(2)+Y(3))-P(4)*Y(1)*Y(3);
    dy3 = P(5)*Y(2)-P(6)*Y(3);


        
        
    dYdt=[dy1;dy2;dy3];%,psi1,psi2
end