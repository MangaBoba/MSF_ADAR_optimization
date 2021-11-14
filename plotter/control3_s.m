function dYdt = control3_s(t, Y, P,Ztype,Zfun)
% t  - текущий момент времени
% Y - начальные значения переменных
% P - параметры системы
% Ztype - тип возмущений
       switch Ztype(1)
            case '1'
                Z=Y(4);
             case '2' 
%                 if(mod(t,3)==0)
                    Z=P(15)*cos(0.25*t);
%                 else
%                     Z=Y(4);
%                 end
                case '3'
%                 if(randsrc(1,1,[0,1;0.8,0.2]))
                    Z=normrnd(0,P(15));
%                 else
%                     Z=Y(4);
%                 end
        end
       n=P(13);
       k=P(14);
       psis = Y(3)-P(9)*Y(2);
       psi1 = psis+k*Z;
       dy1 = P(1)*Y(2)*Y(3)-P(2)*Y(1);
       dy2 = P(3)*(Y(2)+Y(3))-P(4)*Y(1)*Y(3);
       dy3 = P(5)*Y(2)-P(6)*Y(3)+Z;
       u1=(-psi1/(P(11)))+P(9)*(dy2)-(dy3)-k*n*psis;
       dz=n*psis;
       dYdt=[dy1;dy2;dy3+u1;dz;psis;u1];
end