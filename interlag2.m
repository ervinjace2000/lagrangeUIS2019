clc
clear
Xo=input(' valor que desea interpolar ');
n=input(' numero de puntos que desea ingresar ');
for i=1:n
    disp('ingrese el punto');
    disp(i)
    X(i)=input(' ingrese el valor de X ');
    Y(i)=input(' ingrese el valor de Y ');
end
for i=1:n
    Ya(i)=Y(i)

    for j=1:n
      if j~=i
            Ya(i)=(Ya(i)*(Xo-X(j)))/(X(i)-X(j));
         end
    end
end
Yo=sum(Ya)
plot(X,Y,'p-',Xo,Yo,'r+')
legend('Ya','volor interpolado')
title('interpoladores de langrange')
ylabel('valores de Y')
xlabel('valores de X')

    