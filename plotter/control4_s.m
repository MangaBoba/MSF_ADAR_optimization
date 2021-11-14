function dYdt = control4_s(t, Y, P,Ztype,Zfun)
    % t  - текущий момент времени
    % Y - начальные значения переменных
    % P - параметры системы
    % Ztype - тип возмущений
       switch Ztype(1)
            case '1'
                Z=Y(4);
            case '2' 
%                  if(mod(t,3)==0)
                     Z=P(15)*cos(0.25*t);
%                  else
%                      Z=Y(4);
%                  end
            case '3'
%                  if(randsrc(1,1,[0,1;1,0]))
                    Z=normrnd(0,P(15));
%                  else
%                      Z=Y(4);
%                  end
        end
       n=P(13);
       k=P(14);
       
       psis = Y(2)-P(8);
       psi2 = psis+k*Z;
       fi = ((psi2)*(P(11).^-1)+k*n*(psis)+P(3)*(Y(2)+Y(3)))/(P(4)*Y(3));
       psi1 = Y(1)-fi;
       
       dfiy2=((P(12).^-1)+k*n+P(3))/(P(4)*Y(3));
       dfiy3=(P(3)*Y(3)-(((psi2)*(P(11).^-1)+k*n*(psis)+P(3)*(Y(2)+Y(3)))))/(P(4)*Y(3)*Y(3));%(P(3)*P(4)*Y(3)+P(4)*(-psi2*(P(12).^-1)-k*n*psis-P(3)*(Y(2)+Y(3))))/(-P(4)*Y(3)).^2;       
       dfiz=(k*(P(12).^-1))/(P(4)*Y(3));
       dy1 = P(1)*Y(2)*Y(3)-P(2)*Y(1)+Z;
       dy2 = P(3)*(Y(2)+Y(3))-P(4)*Y(1)*Y(3);
       dy3 = P(5)*Y(2)-P(6)*Y(3);
       u1=(-psi1/(P(11)))-(dy1)+dfiy2+dfiy3+dfiz;
       dz=n*psis;
       dYdt=[dy1+u1;dy2;dy3;dz;psis;u1];
end