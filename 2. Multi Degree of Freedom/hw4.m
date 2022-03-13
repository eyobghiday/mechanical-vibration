%% MMAE 535 code for part c of hw#4 based on b
% Q = zeros(5,5);
% Q(1,1)= -0.0912871;
% Q(1,2)= -0.158114;
% Q(1,3)= 0.182574;
% Q(1,4)= -0.158114;
% Q(1,5)= 0.0912871;
% 
% 
% Q(2,1)= -0.158114;
% Q(2,2)=-0.158224;
% Q(2,3)=6.67146*10^-17;
% Q(2,4)= 0.158114;
% Q(2,5) = -.158114
% Q(3,1)=-0.182574;
% Q(3,2) = -8.1921*10^-17;
% Q(3,3)=-0.182574;
% Q(3,4) = 1.35782*10^-17;
% Q(3,5) = 0.182574;
% 
% 
% Q(4,1) = -0.158114;
% Q(4,2) = 0.158114;
% Q(4,3) = -8.1304*10^-17;
% Q(4,4) = -0.158114;
% Q(4,5) = -0.158114;
% 
% 
% Q(5,1) = -0.0912871;
% Q(5,2) = 0.158114;
% Q(5,3) = 0.182674;
% Q(5,4) = 0.158114;
% Q(5,5) = 0.0912871;

r1 = [-0.143721	0.236374	0.152701	-0.0124038	0.000501024]; 
r2 = [-0.225987	0.00338324	-0.213147	0.0586623	-0.00674453]; % mode 2
r3 = [-0.211621	-0.236325	0.144819	-0.265032	0.0902905]; % mode 3
r4 = [-0.152011	-0.2414	0.256894	0.303022	-0.510688]; % mode 4
r5 = [-0.0794006	-0.150605	0.194494	0.463247	0.467534]; % mode 5
Q = [[r1]; [r2]; [r3]; [r4]; [r5]];

l= [0.04275991 0.19856869 0.3395845  0.6729366  1.54615031]; 

M =10*eye(5);
M(3,3)=5;
M(4,4)=2;
M(5,5)=2;
%ans = transpose(Q).*M.*Q;
% QQ = [Q(1,1), Q(1,2), Q(1,3), Q(1,4), Q(1,5)];
% aaa= transpose(QQ).*M.*QQ;

%% Comparing mode 1 to 2,3,4,5
u1 = [r1(1) r2(1) r3(1) r4(1) r5(1)]; % mode 1
u2 = [r1(2) r2(2) r3(2) r4(2) r5(2)]; % mode 2
u3 = [r1(3) r2(3) r3(3) r4(3) r5(3)]; % mode 3
u4 = [r1(4) r2(4) r3(4) r4(4) r5(4)]; % mode 4
u5 = [r1(5) r2(5) r3(5) r4(5) r5(5)]; % mode 5
% u2 = [l(2) l(2) l(2) l(2) l(2)]; % lambda 2
% u3 = [l(3) l(3) l(3) l(3) l(3)]; % lambda 3
% u4 = [l(4) l(4) l(4) l(4) l(4)]; %lambda 4
% u5 = [l(5) l(5) l(5) l(5) l(5)]; %Lambda 5
%mode 1 to others
mode1_mode2 = u1*M*transpose(u2);
mode1_mode3 = u1*M*transpose(u3);
mode1_mode4 = u1*M*transpose(u4);
mode1_mode5 = u1*M*transpose(u5);
%mode 2 to others
mode2_mode3 = u2*M*transpose(u3);
mode2_mode4 = u2*M*transpose(u4);
mode2_mode5 = u2*M*transpose(u5);
%mode 4 to others
mode4_mode3 = u4*M*transpose(u3);
mode4_mode5 = u4*M*transpose(u5);

% ans1 = u1*M*transpose(u1);
% ans1 = u1*M*transpose(u1);
% ans1 = u1*M*transpose(u1);

%% Part d
U = [transpose(u1),transpose(u2),transpose(u3),transpose(u4),transpose(u5)]
k1 = [2	-1 0 0 0];
k2 = [-1 2 -1 0	0];
k3 = [0	-1 2 -1 0];
k4 = [0	 0 -1 2 -1];
k5 = [0	0 0 -1 2];
K = [k1;k2;k3;k4;k5];
ans1 = transpose(U)*M*U
ans2 = transpose(U)*K*U



