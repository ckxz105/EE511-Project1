%%
%P2_Q1.(a)
N=input('Please input the times you want to simulate: ');
%in order to keep the possibility of produced to be equal, use rand() to produce the random number 
result=5*rand(N,1)-3;
mean_this=mean(result);
%use var(x,1) to produce the correct variance value as var(x) use different equation from variance's
var_this=var(result,1);

%Calculate the theoretical values
a=-3;
b=2;
mean_theory=(a+b)/2;
var_theory=(b-a)^2/12;


% display the histogram
figure;
[n,y]=hist(result);
hist(result);
text(y-0.1,n+N/200,num2str(n'));
title(['Hisogram of simulations of ', num2str(N),' times']);

%%
%P2_Q1.(b)
disp('The mean of theoretical value is:')
disp(mean_theory);
disp('The variance of theoretical value is:')
disp(var_theory);

disp('The mean of this sample is:')
disp(mean_this);
disp('The variance of this sample is:')
disp(var_this);

%%
%P2_Q1.(c)
%Produce the original sample as the standard
DATA = result;
%define the ressmpling times
RESAMPLING = 10000;
%calculate the confidence interval for sample mean
[CI1, STAT1] = bootci(RESAMPLING, @mean, DATA);
%calculate the confidence interval for sample standard deviation
[CI2, STAT2] = bootci(RESAMPLING, @std, DATA);
disp('The confidence interval for the mean of this sample is:')
disp(CI1);
disp('The confidence interval for the standard deviation of this sample is:')
disp(CI2);