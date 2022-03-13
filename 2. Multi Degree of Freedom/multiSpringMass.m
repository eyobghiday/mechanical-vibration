% Calculates the n natural frequencies and n mode shapes of an n mass
% spring-mass system where all masses are equivalent and all spring
% constants are equivalent.
clear all; close all; clc;

% Problem parameters
m=4; % cart mass (kg)
k=10; % spring constant (N/m)
n=2; % number of masses
t=10; % simulation time
tStep=0.001;
mode=2; % must be <= n

% Create mass and stiffness matrices based on generalized FBD's
M=m.*eye(n); % mass matrix is an identity matrix
e=ones(n,1);
K=spdiags([-k.*e 2*k.*e -k.*e],-1:1,n,n); % stiffness matrix
K=full(K); % make the K matrix into a full matrix

% Solve the eigenvalue problem associated with the natural frequencies and
% mode shapes
% Returns phi (eigenvectors) and lambda (eigenvalues) - M*phi*lambda=K*phi
[phi,lambda]=eig(K,M);
Wn=sqrt(diag(lambda)); % Get natural frequencies from eigenvalues

% Time step setup
iterations=t/tStep; % total number of iterations
tVector=tStep.*(1:iterations); % time vector (for plotting purposes)

% Pre-allocate arrays for speed
x=zeros(iterations,n);
v=zeros(iterations,n);
a=zeros(iterations,n);
x(1,:)=phi(:,mode); % initial displacements governed by desired mode

% Iteratively solve equations of motion using Semi-implicit Euler
for i=2:iterations
    for j=1:n
        a(i,j)=(-K(j,:)./M(j,j))*(x(i-1,:)');
        v(i,j)=v(i-1,j)+a(i,j)*tStep;
        x(i,j)=x(i-1,j)+v(i,j)*tStep;
    end
end

% Plot the results
for k=1:n
    subplot(3,1,1); hold on;
    plot(tVector,x(:,k))
    subplot(3,1,2); hold on;
    plot(tVector,v(:,k))
    subplot(3,1,3); hold on;
    plot(tVector,a(:,k))
end

subplot(3,1,1);
title('Position, Velocity, and Acceleration as a Function of Time');
ylabel('Position (m)');
subplot(3,1,2);
ylabel('Velocity (m/s)');
subplot(3,1,3);
ylabel('Acceleration (m/s^2)');
xlabel('Time (s)');

