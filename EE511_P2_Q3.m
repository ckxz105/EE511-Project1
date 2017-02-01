%P2_Q3
%(a)
M=(0:9);
N=input('Please input the times you want to simulate: ');
%in order to keep the possibility of produced to be equal, use rand() to produce the random number 
result=ceil(10*rand(N,1))-1;
[x,y]=hist(result);

%display the figure
figure(1);
c=zeros(10,2);
c(:,1)=x';
x_theo = N*[0.1 0.1 0.1 0.1 0.1 0.1 0.1 0.1 0.1 0.1];
c(:,2)=x_theo';
bar(c,1);
set(gca,'XTickLabel',{'0','1','2','3','4','5','6','7','8','9'}) %set x-axis's name
xlabel('value'),ylabel('possibility')  %set x-axis and y-axis's name
legend('Simulated','Theorem')  %set the legend
boldify(figure(1),20,3);
text(y*1.1,x+N/400,num2str(x')); %display the detail value of each chart
title(['Simluation results of sampling with N = ',num2str(N),]);
%%
%(b)
disp('For part (b)');
Chi_test = sum((x-x_theo).^2./x_theo);
disp('The calculated Chi-squre test statistic is');
disp(Chi_test);
Chi_theory = chi2inv(0.95,9);
disp('The theory value of Chi-squre statistic is');
disp(Chi_theory);

%(c)
disp('For part (c)');
x2 = [x(2:10) 0];
%For uniform distribute from 0-9, there is impossible to get 10, so change the simulated results to fit new distrubution
Chi_test = sum((x2-x_theo).^2./x_theo);
disp('The calculated Chi-squre test statistic is');
disp(Chi_test);
Chi_theory = chi2inv(0.95,9);
disp('The theory value of Chi-squre statistic is');
disp(Chi_theory);
