nmax = 10000;
x = rand(nmax,1);
y = rand(nmax,1);
x1=x-0.5;
y1=y-0.5;
r = sqrt(x1.^2+y1.^2) ;
% get logicals 
inside = r<=0.5 ;
outside = r>0.5 ;
% plot 
plot(x1(inside),y1(inside),'b.');
hold on
plot(x1(outside),y1(outside),'r.');
% get pi value 
thepi = 4*sum(inside)/nmax ;  
fprintf('%8.4f\n',thepi)