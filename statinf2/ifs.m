
A1 =   [0     0     
        0     .2];

A2 = [.845  .035  
     -.035    .82];
        
A3 = [.2   -.31
       .255    .245 ];
         
A4 = [-.15   .24
       .25     .20];
         
 b1 =  [0   
       -0.12]   ; 

 b2 = [0 
       1.6];

 b3 = [0 
       .29];

 b4 = [0 
       .68];

n = 10000;         
x = zeros(2,n);
for k=2:n
  u = unidrnd(100);
  if(u==1)
    x(:,k) = A1*x(:,k-1) + b1;
  elseif(u <= 86)
    x(:,k) = A2*x(:,k-1) + b2;
  elseif(u <= 93)
    x(:,k) = A3*x(:,k-1) + b3;
  else
    x(:,k) = A4*x(:,k-1) + b4;
  end 
end

%Plot the points. Here we are not using the plot function of
%matlab, since it puts a large dot at each point. 
%On the other hand, line([x x],[y y]) puts a fine point
%at (x,y).

axis([min(x(1,:)),max(x(1,:)), min(x(2,:)),max(x(2,:))])
for i=1:n
    line([x(1,i),x(1,i)],[x(2,i),x(2,i)]);
end
