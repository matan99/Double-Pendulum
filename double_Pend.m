function [omega]=double_Pend(t,v,m,l)

omega=zeros(4,1);

g=9.81;
d_Theta=v(1)-v(3);
a=(m(1)+m(2))*l(1);
b= m(2)*l(2)*cos(d_Theta);
c= l(1)*cos(d_Theta);
d=l(2);
e=-m(2)*l(2)*sin(d_Theta)*(v(4)^2)-(m(1)+m(2))*g*sin(v(1));
f= l(1)*sin(d_Theta)*(v(2)^2)-g*sin(v(3));
omega=[v(2);(e*d-b*f)/(a*d-b*c);v(4);(a*f-c*e)/(a*d-b*c)];
end