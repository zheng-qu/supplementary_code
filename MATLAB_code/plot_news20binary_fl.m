f_opt= 4.872456409045230e+02;
ASGARD_fc_fl_news20binary= importdata('../IPALM/results/DLRCSGR2_FL_outer_news20binarytau_1355191',' ');
DLRCSGR_eps_fl_news20binary= importdata('../IPALM/results/DLRCSGR3_FL_outer_news20binarytau_1',' ');
SMART_CD_fl_news20binary= importdata('../IPALM/results/PDCD_FL_outer_news20binarytau_1',' ');
KATYUSHA_fl_news20binary= importdata('../IPALM/results/ALM_FL_outer_news20binarytau_1172',' ');
ADMM_fl_news20binary= importdata('../IPALM/results/ADMM_FL_news20binary_beta_0',' ');
s1= size(ASGARD_fc_fl_news20binary,1);
s2= size(DLRCSGR_eps_fl_news20binary,1);
s3= size(SMART_CD_fl_news20binary,1);
s4= size(KATYUSHA_fl_news20binary,1);
s5= size(ADMM_fl_news20binary,1);
plot(ASGARD_fc_fl_news20binary(:,2),log10((abs(ASGARD_fc_fl_news20binary(:,3)- f_opt)/f_opt)),'-->','LineWidth',2);
hold on
plot(DLRCSGR_eps_fl_news20binary(1:2:s2,2),log10((abs(DLRCSGR_eps_fl_news20binary(1:2:s2,3)- f_opt)/f_opt)),'--s','LineWidth',2);
hold on
%plot(DLRCSGR_m_fl_news20binary(:,2),log10((abs(DLRCSGR_m_fl_news20binary(:,3)- f_opt)/f_opt)),'--o','LineWidth',2);
%hold on
plot(ADMM_fl_news20binary(1:3:s5,2),log10(abs(ADMM_fl_news20binary(1:3:s5,3)- f_opt)/f_opt),'--+','LineWidth',2);
hold on
plot(SMART_CD_fl_news20binary(1:4:s3,2),log10((abs(SMART_CD_fl_news20binary(1:4:s3,3)- f_opt)/f_opt)),'--x','LineWidth',2);
hold on
plot(KATYUSHA_fl_news20binary(1:3:s4,2),log10((abs(KATYUSHA_fl_news20binary(1:3:s4,3)- f_opt)/f_opt)),'--o','LineWidth',2);
%hold on
%plot(ADMM_fl_news20binary(:,2),ADMM_fl_news20binary(:,6),'LineWidth',5);
%hold on
%plot(CVX_fl_news20binary(:,3),log10(abs(CVX_fl_news20binary(:,1)- f_opt)),'--+','LineWidth',5);
ylim([-2 4]);
xlim([0 3500]);
xlabel('time');
ylabel('log|F(x)- F^*|/F^*');
title('news20binary');
%legend('ASGARD-fc','DLRCSGR-eps','DLRCSGR-m','SMART-CD');
legend('ASGARD-DL','IPALM-APPROX', 'LADMM','SMART-CD','IPALM-KATYUSHA');
set(gcf,'Position',[10 10 400 400]);
saveas(gcf,'myplots/fl_news20binary.eps','epsc');
