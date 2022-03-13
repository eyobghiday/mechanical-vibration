%QUESTION 1B
clear
clc
close all
warning('off')
[m1,m2]=deal(10);
 m3=5;
[m4,m5]=deal(2);
[k1,k2,k3,k4,k5,k6]=deal(1);
K = [k1+k2, -k2, 0, 0, 0;
    -k2, k2+k3, -k3, 0, 0;
    0, -k3, k3+k4, -k4, 0;
    0, 0, -k4, k4+k5, -k5;
    0, 0, 0, -k5, k4+k5];

M = [m1 0 0 0 0;
    0 m2 0 0 0;
    0 0 m3 0 0;
    0 0 0 m4 0;
    0 0 0 0 m5];
[abb,lambda]=eig(K,M);
Wn=sqrt(diag(lambda));
fprintf('Eigne Values is \n');
disp(lambda);
fprintf('Natural Frequeniy is \n');
disp(Wn);

A = -inv(M)*K;
PHI = A^(1/2);
[U,L] = eig(PHI);


u1 = U(:,1);
u2 = U(:,2);
u3 = U(:,3);
u4 = U(:,4);
u5 = U(:,5);
l1 = L(1,1);
l2 = L(2,2);
l3 = L(3,3);
l4 = L(4,4);
l5 = L(5,5);

tout = linspace(0,20,1000);

mode1 = exp(l1*tout);
mode2 = exp(l2*tout);
mode3 = exp(l3*tout);
mode4 = exp(l4*tout);
mode5 = exp(l5*tout);

figure()
plot(tout,mode1)
hold on
plot(tout,mode2)
hold on
plot(tout,mode3)
hold on
plot(tout,mode4)
hold on
plot(tout,mode5)
legend({'mode1','mode2','mode3','mode4','mode5'},"AutoUpdate","on",NumColumns=2 )
xlabel('real')
ylabel('imag')
zlabel('t')

%%%3D plot with real and imaginary
figure(2)
plot3(real(mode1),imag(mode1),tout, 'm')
hold on
plot3(real(mode2),imag(mode2),tout,'r-')
hold on
plot3(real(mode3),imag(mode3),tout,'g-')
hold on
plot3(real(mode4),imag(mode4),tout,'c-')
hold on
plot3(real(mode5),imag(mode5),tout,'b-')
legend({'mode1','mode2','mode3','mode4','mode5'},"AutoUpdate","on",NumColumns=2 )
xlabel('real')
ylabel('imag')
zlabel('t')

%PART C 
%Check for orthogonality using graphs
figure(3)
plot([0 u1(1)],[0 u1(5)],'m-')
hold on
plot([0 u2(1)],[0 u2(5)],'r-')
hold on
plot([0 u3(1)],[0 u3(5)],'g-')
hold on
plot([0 u4(1)],[0 u4(5)],'c-')
hold on
plot([0 u1(1)],[0 u1(5)],'m-')
hold on
plot([0 u5(1)],[0 u5(5)],'b-')
legend({'mode1','mode2','mode3','mode4','mode5'},"AutoUpdate","on",NumColumns=2 )
axis equal
%Check for orthogonality explicitly 
C2 = round(dot(u1,u2));disp(round(C2))
C3 = round(dot(u1,u3));disp(round(C3))
C4 = round(dot(u1,u4));disp(round(C4))
C5 = round(dot(u1,u5));disp(round(C5))

%PART D. 
fprintf('Using modal Matrix the given (Equation 1 and 2) are diagonal\n')
E1 = transpose(U)*M*U;
E2 = transpose(U)*K*U;
disp(round(E1,2))
disp(round(E2,2))