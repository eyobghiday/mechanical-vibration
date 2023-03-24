% Mass and stiffness matrices
M= [10 0 0 0 0; 0 10 0 0 0; 0 0 5 0 0; 0 0 0 2 0; 0 0 0 0 2];
K= [2 -1 0 0 0; -1 2 -1 0 0; 0 -1 2 -1 0; 0 0 -1 2 -1; 0 0 0 -1 2];

%Eigenvalue problem
[eigvec,w_squa]=eig(K,M);
w_val=sqrt(w_squa);
v1=eigvec(:,1);
v2=eigvec(:,2);
v3=eigvec(:,3);
v4=eigvec(:,4);
v5=eigvec(:,5);
v=[v1 v2 v3 v4 v5];

% Initial displacement
q_0=[0; 0; 0; 1; 0];
% Constants
C= inv(v)*q_0;
v1_prim=v1*C(1);
v2_prim=v2*C(2);
v3_prim=v3*C(3);
v4_prim=v4*C(4);
v5_prim=v5*C(5);


t=[0:0.1:200];
for i=1:length(t)
    x_2(i)=v1_prim(2)*cos(w_val(1,1)*t(i))+ v2_prim(2)*cos(w_val(2,2)*t(i))+v3_prim(2)*cos(w_val(3,3)*t(i))+v4_prim(2)*cos(w_val(4,4)*t(i))+v5_prim(2)*cos(w_val(5,5)*t(i));
end

figure(1);
plot(t, x_2)
grid on;
xlabel('time (seconds)')
ylabel('x2(t)(m)')

%% Question 2
for m=1:length(t)
    q_4(m)=v1(4)*(1/(w_val(1,1))^2)*v1(2)*(1-cos(w_val(1,1)*t(m)))+v2(4)*(1/(w_val(2,2))^2)*v2(2)*(1-cos(w_val(2,2)*t(m)))+v3(4)*(1/(w_val(3,3))^2)*v3(2)*(1-cos(w_val(3,3)*t(m)))+v4(4)*(1/(w_val(4,4))^2)*v4(2)*(1-cos(w_val(4,4)*t(m)))+v5(4)*(1/(w_val(5,5))^2)*v5(2)*(1-cos(w_val(5,5)*t(m)));
end
figure(2);
plot (t,q_4)
grid on;
xlabel('time (seconds)')
ylabel('q4(t)(m)')

    
    
    


