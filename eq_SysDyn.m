function eq_SysDyn = eq_SysDyn(I1,I2,I3,I4,I5,T1,T2,T3,T4,T5,ddq1,ddq2,ddq3,ddq4,ddq5,dq1,dq2,dq3,dq4,dq5,g,l1,l2,l4,lc1,lc2,lc3,lc4,lc5,m1,m2,m3,m4,m5,q1,q2,q3,q4,q5)
%EQ_SYSDYN
%    EQ_SYSDYN = EQ_SYSDYN(I1,I2,I3,I4,I5,T1,T2,T3,T4,T5,DDQ1,DDQ2,DDQ3,DDQ4,DDQ5,DQ1,DQ2,DQ3,DQ4,DQ5,G,L1,L2,L4,LC1,LC2,LC3,LC4,LC5,M1,M2,M3,M4,M5,Q1,Q2,Q3,Q4,Q5)

%    This function was generated by the Symbolic Math Toolbox version 7.1.
%    16-Mar-2020 14:05:04

t2 = l1.^2;
t3 = l2.^2;
t4 = sin(q1);
t5 = sin(q2);
t6 = sin(q4);
t7 = q1-q2;
t8 = cos(t7);
t9 = q1-q4;
t10 = cos(t9);
t11 = q2-q4;
t12 = cos(t11);
t13 = q1-q3;
t14 = cos(t13);
t15 = q2-q3;
t16 = cos(t15);
t17 = q1-q5;
t18 = cos(t17);
t19 = q2-q5;
t20 = cos(t19);
t21 = q4-q5;
t22 = cos(t21);
t23 = dq1.^2;
t24 = sin(t7);
t25 = dq2.^2;
t26 = sin(t9);
t27 = dq4.^2;
t28 = sin(t11);
t29 = sin(t13);
t30 = dq3.^2;
t31 = sin(t15);
t32 = sin(t17);
t33 = dq5.^2;
t34 = sin(t19);
t35 = sin(t21);
t36 = l4.^2;
t37 = lc2.^2;
t38 = lc3.^2;
t39 = lc4.^2;
t40 = lc5.^2;
t41 = g.*l2.*m3.*t5;
t42 = g.*l2.*m4.*t5;
t43 = g.*l2.*m5.*t5;
t44 = g.*lc2.*m2.*t5;
t45 = sin(q3);
t46 = g.*lc3.*m3.*t45;
t47 = sin(q5);
t48 = ddq1.*l1.*l4.*m5.*t10;
t49 = ddq2.*l2.*l4.*m5.*t12;
t50 = ddq4.*l2.*l4.*m5.*t12;
t51 = ddq1.*l1.*lc4.*m4.*t10;
t52 = ddq1.*l1.*lc5.*m5.*t18;
t53 = ddq2.*l2.*lc4.*m4.*t12;
t54 = ddq4.*l2.*lc4.*m4.*t12;
t55 = ddq2.*l2.*lc5.*m5.*t20;
t56 = ddq5.*l2.*lc5.*m5.*t20;
t57 = l1.*l2.*m3.*t23.*t24;
t58 = l1.*l2.*m4.*t23.*t24;
t59 = l1.*l2.*m5.*t23.*t24;
t60 = l2.*l4.*m5.*t27.*t28;
t61 = l1.*lc2.*m2.*t23.*t24;
t62 = l1.*lc3.*m3.*t23.*t29;
t63 = l2.*lc3.*m3.*t25.*t31;
t64 = l2.*lc4.*m4.*t27.*t28;
t65 = l2.*lc5.*m5.*t33.*t34;
t66 = l4.*lc5.*m5.*t27.*t35;
eq_SysDyn = [T1+t41+t42+t43+t44+t46+t48+t49+t50+t51+t52+t53+t54+t55+t56+t57+t58+t59+t60+t61+t62+t63+t64+t65+t66-I1.*ddq1-I2.*ddq2-I3.*ddq3-I4.*ddq4-I5.*ddq5-ddq1.*m2.*t2-ddq1.*m3.*t2-ddq1.*m4.*t2-ddq1.*m5.*t2-ddq2.*m3.*t3-ddq2.*m4.*t3-ddq2.*m5.*t3-ddq2.*m2.*t37-ddq3.*m3.*t38-ddq4.*m5.*t36-ddq4.*m4.*t39-ddq5.*m5.*t40-ddq1.*lc1.^2.*m1+g.*l1.*m2.*t4+g.*l1.*m3.*t4+g.*l1.*m4.*t4+g.*l1.*m5.*t4-g.*l4.*m5.*t6+g.*lc1.*m1.*t4-g.*lc4.*m4.*t6-g.*lc5.*m5.*t47-ddq1.*l1.*l2.*m3.*t8-ddq1.*l1.*l2.*m4.*t8-ddq2.*l1.*l2.*m3.*t8-ddq1.*l1.*l2.*m5.*t8-ddq2.*l1.*l2.*m4.*t8-ddq2.*l1.*l2.*m5.*t8+ddq4.*l1.*l4.*m5.*t10-ddq1.*l1.*lc2.*m2.*t8-ddq2.*l1.*lc2.*m2.*t8-ddq1.*l1.*lc3.*m3.*t14+ddq4.*l1.*lc4.*m4.*t10-ddq3.*l1.*lc3.*m3.*t14-ddq2.*l2.*lc3.*m3.*t16-ddq3.*l2.*lc3.*m3.*t16+ddq5.*l1.*lc5.*m5.*t18-ddq4.*l4.*lc5.*m5.*t22-ddq5.*l4.*lc5.*m5.*t22-l1.*l2.*m3.*t24.*t25-l1.*l2.*m4.*t24.*t25-l1.*l2.*m5.*t24.*t25-l1.*l4.*m5.*t23.*t26+l1.*l4.*m5.*t26.*t27-l2.*l4.*m5.*t25.*t28-l1.*lc2.*m2.*t24.*t25-l1.*lc4.*m4.*t23.*t26+l1.*lc4.*m4.*t26.*t27-l2.*lc4.*m4.*t25.*t28-l1.*lc3.*m3.*t29.*t30-l1.*lc5.*m5.*t23.*t32-l2.*lc3.*m3.*t30.*t31-l2.*lc5.*m5.*t25.*t34+l1.*lc5.*m5.*t32.*t33-l4.*lc5.*m5.*t33.*t35;T2+t41+t42+t43+t44+t46+t48+t49+t50+t51+t52+t53+t54+t55+t56+t57+t58+t59+t60+t61+t62+t63+t64+t65+t66-I2.*ddq2-I3.*ddq3-I4.*ddq4-I5.*ddq5-ddq2.*m3.*t3-ddq2.*m4.*t3-ddq2.*m5.*t3-ddq2.*m2.*t37-ddq3.*m3.*t38-ddq4.*m5.*t36-ddq4.*m4.*t39-ddq5.*m5.*t40-g.*l4.*m5.*t6-g.*lc4.*m4.*t6-g.*lc5.*m5.*t47-ddq1.*l1.*l2.*m3.*t8-ddq1.*l1.*l2.*m4.*t8-ddq1.*l1.*l2.*m5.*t8-ddq1.*l1.*lc2.*m2.*t8-ddq1.*l1.*lc3.*m3.*t14-ddq2.*l2.*lc3.*m3.*t16-ddq3.*l2.*lc3.*m3.*t16-ddq4.*l4.*lc5.*m5.*t22-ddq5.*l4.*lc5.*m5.*t22-l1.*l4.*m5.*t23.*t26-l2.*l4.*m5.*t25.*t28-l1.*lc4.*m4.*t23.*t26-l2.*lc4.*m4.*t25.*t28-l1.*lc5.*m5.*t23.*t32-l2.*lc3.*m3.*t30.*t31-l2.*lc5.*m5.*t25.*t34-l4.*lc5.*m5.*t33.*t35;T3+t46+t48+t49+t51+t52+t53+t55+t62+t63+t66-I3.*ddq3-I4.*ddq4-I5.*ddq5-ddq3.*m3.*t38-ddq4.*m5.*t36-ddq4.*m4.*t39-ddq5.*m5.*t40-g.*l4.*m5.*t6-g.*lc4.*m4.*t6-g.*lc5.*m5.*t47-ddq1.*l1.*lc3.*m3.*t14-ddq2.*l2.*lc3.*m3.*t16-ddq4.*l4.*lc5.*m5.*t22-ddq5.*l4.*lc5.*m5.*t22-l1.*l4.*m5.*t23.*t26-l2.*l4.*m5.*t25.*t28-l1.*lc4.*m4.*t23.*t26-l2.*lc4.*m4.*t25.*t28-l1.*lc5.*m5.*t23.*t32-l2.*lc5.*m5.*t25.*t34-l4.*lc5.*m5.*t33.*t35;T4+t48+t49+t51+t52+t53+t55+t66-I4.*ddq4-I5.*ddq5-ddq4.*m5.*t36-ddq4.*m4.*t39-ddq5.*m5.*t40-g.*l4.*m5.*t6-g.*lc4.*m4.*t6-g.*lc5.*m5.*t47-ddq4.*l4.*lc5.*m5.*t22-ddq5.*l4.*lc5.*m5.*t22-l1.*l4.*m5.*t23.*t26-l2.*l4.*m5.*t25.*t28-l1.*lc4.*m4.*t23.*t26-l2.*lc4.*m4.*t25.*t28-l1.*lc5.*m5.*t23.*t32-l2.*lc5.*m5.*t25.*t34-l4.*lc5.*m5.*t33.*t35;T5+t52+t55+t66-I5.*ddq5-ddq5.*m5.*t40-g.*lc5.*m5.*t47-ddq4.*l4.*lc5.*m5.*t22-l1.*lc5.*m5.*t23.*t32-l2.*lc5.*m5.*t25.*t34];
