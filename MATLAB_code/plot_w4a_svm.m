f_lb= 2.458380384000021e+02; 
f_ub= 2.458380413740000e+02;
f_opt= 245.8380;
ASGARD_fc_svm_w4am= importdata('../IPALM/results/DLRCSGR2_SVM_outer_w4atau_301',' ');
DLRCSGR_eps_svm_w4am= importdata('../IPALM/results/DLRCSGR3_SVM_outer_w4atau_1',' ');
SMART_CD_svm_w4am= importdata('../IPALM/results/PDCD_SMSVM_SVM_outer_w4atau_1',' ');
KATYUSHA_svm_w4am= importdata('../IPALM/results/ALM_SVM_outer_w4atau_85',' ');
ADMM_svm_w4am= importdata('../IPALM/results/ADMM_SVM_w4a_beta_1',' ');
s1= size(ASGARD_fc_svm_w4am,1);
s2= size(DLRCSGR_eps_svm_w4am,1);
s3= size(SMART_CD_svm_w4am,1);
s4= size(KATYUSHA_svm_w4am,1);
s5= size(ADMM_svm_w4am,1);
plot(ASGARD_fc_svm_w4am(1:5:s1,2),log10((abs(ASGARD_fc_svm_w4am(1:5:s1,3)- f_opt)/f_opt)),'-->','LineWidth',2);
hold on
plot(DLRCSGR_eps_svm_w4am(1:26:s2,2),log10((abs(DLRCSGR_eps_svm_w4am(1:26:s2,3)- f_lb)/f_lb)),'--s','LineWidth',2);
hold on
plot(ADMM_svm_w4am(1:10:s5,2),log10(abs(ADMM_svm_w4am(1:10:s5,3)- f_opt)/f_opt),'--+','LineWidth',2);
hold on
plot(SMART_CD_svm_w4am(1:20:s3,2),log10((abs(SMART_CD_svm_w4am(1:20:s3,5)- f_opt)/f_opt)),'--x','LineWidth',2);
%plot(DLRCSGR_m_svm_w4am(1:2:52,2),log10((abs(DLRCSGR_m_svm_w4am(1:2:52,3)- f_opt)/f_opt)),'--o','LineWidth',2);
%hold on
plot(KATYUSHA_svm_w4am(1:20:s4,2),log10((abs(KATYUSHA_svm_w4am(1:20:s4,3)- f_lb)/f_lb)),'--o','LineWidth',2);
%plot(ADMM_svm_w4am(:,2),ADMM_svm_w4am(:,6),'LineWidth',5);
%hold on
%plot(CVX_svm_w4am(:,3),log10((abs(CVX_svm_w4am(:,1)- f_opt)/f_opt)),'--+','LineWidth',2);
ylim([-7 4]);
xlim([0 100]);
xlabel('time');
ylabel('log|F(x)- F^*|/F^*');
title('w4a');
legend('ASGARD-DL','IPALM-APPROX','LADMM','SMART-CD','IPALM-KATYUSHA');
%legend('ASGARD-DL','IPALM-APPROX','SMART-CD');
set(gcf,'Position',[10 10 400 400]);
saveas(gcf,'myplots/svm_w4a.eps','epsc');
