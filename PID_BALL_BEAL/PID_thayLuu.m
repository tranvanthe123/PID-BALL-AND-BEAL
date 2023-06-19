%progam LQG control ball and beam sytem
clear all
close all
clc
m=43.56*10^-3;  %khoi luong qua cau
R=2.3*10^-2/2;  %ban kinh qua cau
d=0.075;        %khoang cach tu truc dong co den canh tay don
g=9.81;         %gia toc trong truong
L=0.55;         %do dai canh tay don
Jb=2/5*m*R^2;   %mo men quan tinh qua bong
Kb=0.0535;      %hang so momen dong co(Nm/A)
Rm=3.5;         %dien tro phan ung
La=0.9*10^-3;   %dien cam phan ung(H)
M=346.6*10^-3;  %khoi luong than beam
J1=M*L^2/3;     %momen thanh beam(kgm^2)
Kg=7.5;         %ti so truyen banh rang
Jm=0.049*10^-4; %momen quan tinh cua dong co(kgm^2)
Km=0.053;       %hang so momen motor (Nm/A)
Bm=5*10^-4;     %he so ma sat(cho dai)
%%%%%%%%%%%%%%%%%%%%%%%%%
I1=1/2*(307.06*10^-3)*(8*10^-2)^2;  %momen dia tron lon
I2=1/2*(122.43*10^-3)*(3.4*10^-2)^2;%momen dia tron nho
%%%%%%%%%%%%%%%%%%%%%%%%%
Jm=Jm+I1+I2;
%%%%%%%%%%%%%%%%%%%%%%%%%
K1=Rm*Jm*L/Km/Kg/d+J1;
K2=L/d*(Km*Kb/Rm+Kb+Rm*Bm/Km/Kg);
K3=1+Km/Rm;
K4=7/5;

x1_init=0;
x2_init=0;
x3_init=0;
x4_init=0;



