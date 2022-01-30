%%%THIS CODE IS FOR MODEL SIMULATION simulink, DATA COLLECTION AND LABELLING
%%%%FOR THE 22 STATES OF THE INVERTER
%%%
%%%% 0= OPEN/OFF-STATE OF THE SWITCH
%%%% 1= ON-STATE OF THE SWITCH 
%%%% s1= switch1 s2 = switch2 s3=switch3 s4= switch4 s5=switch5 s6=switch6
%%%%% x =matrix of phase currents(Ia1 Ib1 Ic1) and voltages( Va1 Vb1 Vc1)
%%%% t= label/target 

clc; clear all;
simopt = simset('solver','FixedStepAuto','SrcWorkspace','Current',...
                  'DstWorkspace','Current');% Initialize simulink options


b=[ones([450,1]);]; %% default for label creation
a= [1 1 1 1 1 1 1].*ones([150,1]);%% healthy mode label for faulted data SAMPLES  

%case1 NO FAULT
s1=1; s2=1; s3=1; s4=1; s5=1; s6=1;
[tout,xout,yout] = sim('PMSM_FOC0',[0 0.5],simopt);
x=[Ia1 Ib1 Ic1 Va1 Vb1 Vc1];
x1(1:51,:)=[];                  %%%REMOVING THE TRANSIENT AT INITIAL 0.05s
t1= [1 1 1 1 1 1 1].*b;

%case2 S1 IS OPEN
s1=0; s2=1; s3=1; s4=1; s5=1; s6=1;
[tout,xout,yout] = sim('PMSM_FOC1',[0 0.5],simopt);
x2=[Ia1 Ib1 Ic1 Va1 Vb1 Vc1];
x2(1:51,:)=[];               %%%REMOVING THE TRANSIENT AT INITIAL 0.05s
t2= [1 0 1 1 1 1 1].*b;
t2(1:150,:)= a;


%case3 S2 IS OPEN
s1=1; s2=0; s3=1; s4=1; s5=1; s6=1;
[tout,xout,yout] = sim('PMSM_FOC2',[0 0.5],simopt);
x3=[Ia1 Ib1 Ic1 Va1 Vb1 Vc1];
x3(1:51,:)=[];                  %%%REMOVING THE TRANSIENT AT INITIAL 0.05s
t3= [1 1 0 1 1 1 1].*b;
t3(1:150,:)= a;


%case4 S3 IS OPEN
s1=1; s2=1; s3=0; s4=1; s5=1; s6=1;
[tout,xout,yout] = sim('PMSM_FOC3',[0 0.5],simopt);
x4=[Ia1 Ib1 Ic1 Va1 Vb1 Vc1];
x4(1:51,:)=[];               %%%REMOVING THE TRANSIENT AT INITIAL 0.05s
t4= [1 1 1 0 1 1 1].*b;
t4(1:150,:)= a;

%case5  S4 IS OPEN
s1=1; s2=1; s3=1; s4=0; s5=1; s6=1;
[tout,xout,yout] = sim('PMSM_FOC4',[0 0.5],simopt);
x5=[Ia1 Ib1 Ic1 Va1 Vb1 Vc1];
x5(1:51,:)=[];              %%%REMOVING THE TRANSIENTs AT INITIAL 0.05s
t5= [1 1 1 1 0 1 1].*b;
t5(1:150,:)= a;

%case6  S5 IS OPEN
s1=1; s2=1; s3=1; s4=1; s5=0; s6=1;
[tout,xout,yout] = sim('PMSM_FOC5',[0 0.5],simopt);
x6=[Ia1 Ib1 Ic1 Va1 Vb1 Vc1];
x6(1:51,:)=[];             %%%REMOVING THE TRANSIENT AT INITIAL 0.05s
t6= [1 1 1 1 1 0 1].*b;
t6(1:150,:)= a;


%case7  S6 IS OPEN
s1=1; s2=1; s3=1; s4=1; s5=1; s6=0;
[tout,xout,yout] = sim('PMSM_FOC6',[0 0.5],simopt);
x7=[Ia1 Ib1 Ic1 Va1 Vb1 Vc1];
x7(1:51,:)=[];            %%%REMOVING THE TRANSIENT AT INITIAL 0.05s
t7= [1 1 1 1 1 1 0].*b;
t7(1:150,:)= a;


%case8 S1&S2 ARE OPEN
s1=0; s2=0; s3=1; s4=1; s5=1; s6=1;
[tout,xout,yout] = sim('PMSM_FOC12',[0 0.5],simopt);
x8=[Ia1 Ib1 Ic1 Va1 Vb1 Vc1];
x8(1:51,:)=[];           %%%REMOVING THE TRANSIENT AT INITIAL 0.05s
t8= [1 0 0 1 1 1 1].*b;
t8(1:150,:)= a;


%case9 S1&S3 ARE OPEN
s1=0; s2=1; s3=0; s4=1; s5=1; s6=1;
[tout,xout,yout] = sim('PMSM_FOC13',[0 0.5],simopt);
x9=[Ia1 Ib1 Ic1 Va1 Vb1 Vc1];
x9(1:51,:)=[];         %%%REMOVING THE TRANSIENT AT INITIAL 0.05s
t9= [1 0 1 1 0 1 1].*b;
t9(1:150,:)= a;


%case10 S1&S4 ARE OPEN
s1=0; s2=1; s3=1; s4=0; s5=1; s6=1;
[tout,xout,yout] = sim('PMSM_FOC14',[0 0.5],simopt);
x10=[Ia1 Ib1 Ic1 Va1 Vb1 Vc1];
x10(1:51,:)=[];                %%%REMOVING THE TRANSIENT AT INITIAL 0.05s
t10= [1 0 1 1 0 1 1].*b;
t10(1:150,:)= a;


%case11 S1&S5 ARE OPEN
s1=0; s2=1; s3=1; s4=1; s5=0; s6=1;
[tout,xout,yout] = sim('PMSM_FOC15',[0 0.5],simopt);
x11=[Ia1 Ib1 Ic1 Va1 Vb1 Vc1];
x11(1:51,:)=[];           %%%REMOVING THE TRANSIENT AT INITIAL 0.05s
t11= [1 0 1 1 1 0 1].*b;
t11(1:150,:)= a;


%case12 S1&S6 ARE OPEN
s1=0; s2=1; s3=1; s4=1; s5=1; s6=0;
[tout,xout,yout] = sim('PMSM_FOC16',[0 0.5],simopt);
x12=[Ia1 Ib1 Ic1 Va1 Vb1 Vc1];
x12(1:51,:)=[];          %%%REMOVING THE TRANSIENT AT INITIAL 0.05s
t12= [1 0 1 1 1 1 0].*b;
t12(1:150,:)= a;

%case 13 S2&S3 ARE OPEN
s1=1; s2=0; s3=0; s4=1; s5=1; s6=1;
[tout,xout,yout] = sim('PMSM_FOC23',[0 0.5],simopt);
x13=[Ia1 Ib1 Ic1 Va1 Vb1 Vc1];
x13(1:51,:)=[];           %%%REMOVING THE TRANSIENT AT INITIAL 0.05s
t13= [1 1 0 0 1 1 1].*b;
t13(1:150,:)= a;


%case 14 S2&S4 ARE OPEN
s1=1; s2=0; s3=1; s4=0; s5=1; s6=1;
[tout,xout,yout] = sim('PMSM_FOC24',[0 0.5],simopt);
x14=[Ia1 Ib1 Ic1 Va1 Vb1 Vc1];
x14(1:51,:)=[];          %%%REMOVING THE TRANSIENT AT INITIAL 0.05s
t14= [1 1 0 1 0 1 1].*b;
t14(1:150,:)= a;

%case 15 S2&S5 ARE OPEN
s1=1; s2=0; s3=1; s4=1; s5=0; s6=1;
[tout,xout,yout] = sim('PMSM_FOC25',[0 0.5],simopt);
x15=[Ia1 Ib1 Ic1 Va1 Vb1 Vc1];
x15(1:51,:)=[];        %%%REMOVING THE TRANSIENT AT INITIAL 0.05s
t15= [1 1 0 1 1 0 1].*b;
t15(1:150,:)= a;

%case 16 S2&S6 ARE OPEN
s1=1; s2=0; s3=1; s4=1; s5=1; s6=0;
[tout,xout,yout] = sim('PMSM_FOC26',[0 0.5],simopt);
x16=[Ia1 Ib1 Ic1 Va1 Vb1 Vc1];
x16(1:51,:)=[];         %%%REMOVING THE TRANSIENT AT INITIAL 0.05s
t16= [1 1 0 1 1 1 0].*b;
t16(1:150,:)= a;


%case 17 S3&S4 ARE OPEN
s1=1; s2=1; s3=0; s4=0; s5=1; s6=1;
[tout,xout,yout] = sim('PMSM_FOC34',[0 0.5],simopt);
x17=[Ia1 Ib1 Ic1 Va1 Vb1 Vc1];
x17(1:51,:)=[];        %%%REMOVING THE TRANSIENT AT INITIAL 0.05s
t17= [1 1 1 0 0 1 1].*b;
t17(1:150,:)= a;

%case 18 S3&S5 ARE OPEN
s1=1; s2=1; s3=0; s4=1; s5=0; s6=1;
[tout,xout,yout] = sim('PMSM_FOC35',[0 0.5],simopt);
x18=[Ia1 Ib1 Ic1 Va1 Vb1 Vc1];
x18(1:51,:)=[];        %%%REMOVING THE TRANSIENT AT INITIAL 0.05s
t18= [1 1 1 0 1 0 1].*b;
t18(1:150,:)= a;


%case 19 S3&S6 ARE OPEN
s1=1; s2=1; s3=0; s4=1; s5=1; s6=0;
[tout,xout,yout] = sim('PMSM_FOC36',[0 0.5],simopt);
x19=[Ia1 Ib1 Ic1 Va1 Vb1 Vc1];
x19(1:51,:)=[];       %%%REMOVING THE TRANSIENT AT INITIAL 0.05s
t19= [1 1 1 0 1 1 0].*b;
t19(1:150,:)= a;

%case 20 S4&S5 ARE OPEN
s1=1; s2=1; s3=1; s4=0; s5=0; s6=1;
[tout,xout,yout] = sim('PMSM_FOC45',[0 0.5],simopt);
x20=[Ia1 Ib1 Ic1 Va1 Vb1 Vc1];
x20(1:51,:)=[];      %%%REMOVING THE TRANSIENT AT INITIAL 0.05s
t20= [1 1 1 1 0 0 1].*b;
t20(1:150,:)= a;


%case 21 S4&S6 ARE OPEN
s1=1; s2=1; s3=1; s4=0; s5=1; s6=0;
[tout,xout,yout] = sim('PMSM_FOC46',[0 0.5],simopt);
x21=[Ia1 Ib1 Ic1 Va1 Vb1 Vc1];
x21(1:51,:)=[];      %%%REMOVING THE TRANSIENT AT INITIAL 0.05s
t21= [1 1 1 1 0 1 0].*b;
t21(1:150,:)= a;


%case22  S5&S6 ARE OPEN
s1=1; s2=1; s3=1; s4=1; s5=0; s6=0;
[tout,xout,yout] = sim('PMSM_FOC56',[0 0.5],simopt);
x22=[Ia1 Ib1 Ic1 Va1 Vb1 Vc1];
x22(1:51,:)=[];     %%%REMOVING THE TRANSIENT AT INITIAL 0.05s
t22= [1 1 1 1 1 0 0].*b;
t22(1:150,:)= a;


xd1=[x1; x2; x3; x4; x5; x6; x7; x8; x9; x10; x11; x12;...
        x13; x14; x15; x16; x17; x18; x19; x20; x21; x22];


td1=[t1; t2; t3; t4; t5; t6; t7; t8; t9; t10; t11; t12;...
        t13; t14; t15; t16; t17; t18; t19; t20; t21; t22];
    
 

%% nftool
% 















