xn1 = normalize(x1); xn2= normalize(x2); xn3 = normalize(x3);

xn4 = normalize(x4); xn5= normalize(x5); xn6 = normalize(x6);

xn7 = normalize(x7); xn8= normalize(x8); xn9 = normalize(x9);

xn10 = normalize(x10); xn11= normalize(x11); xn12 = normalize(x12);

xn13 = normalize(x13); xn14= normalize(x14); xn15 = normalize(x15);

xn16 = normalize(x16);xn17 = normalize(x17); xn18= normalize(x18); 

xn19= normalize(x19);xn20= normalize(x20); xn21= normalize(x21);

xn22 = normalize(x22);

xdN=[xn1;xn2;xn3;xn4;xn5;xn6;xn7;xn8;xn9;xn10;xn11;xn12;xn13;...
    xn14;xn15;xn16;xn17;xn18;xn19;xn20;xn21;xn22];
%%
xr1 = rescale(x1); xr2= rescale(x2); xr3 = rescale(x3);

xr4 = rescale(x4); xr5= rescale(x5); xr6 = rescale(x6);

xr7 = rescale(x7); xr8= rescale(x8); xr9 = rescale(x9);

xr10 = rescale(x10); xr11= rescale(x11); xr12 = rescale(x12);

xr13 = rescale(x13); xr14= rescale(x14); xr15 = rescale(x15);

xr16 = rescale(x16);xr17 = rescale(x17); xr18= rescale(x18); 

xr19= rescale(x19);xr20= rescale(x20); xr21= rescale(x21);

xr22 = rescale(x22);

xdR=[xr1;xr2;xr3;xr4;xr5;xr6;xr7;xr8;xr9;xr10;xr11;xr12;xr13;...
    xr14;xr15;xr16;xr17;xr18;xr19;xr20;xr21;xr22];
%%
%%%%SVM AND KNN

Ia = xdN(:,1); Ib= xdN(:,2); Ic= xdN(:,3); Va=xdN(:,4); Vb=  xdN(:,5);
Vc=  xdN(:,6);
T_xdN = table(Ia,Ib,Ic,Va,Vb,Vc,Fault);
%%
Ia = xdR(:,1); Ib= xdR(:,2); Ic= xdR(:,3); Va=xdR(:,4); Vb=  xdR(:,5);
Vc=  xdR(:,6);
T_xdR = table(Ia,Ib,Ic,Va,Vb,Vc,Fault);
