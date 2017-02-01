
%P2_Q2
%(a)
N=input('Please input the number you want to simulate in one sequence: ');
X1=rand(1,N);
X2=[0 X1(1:N-1)];
cov1=cov(X1,X2);

disp('The correlation between the two sequence is:');
disp(cov1);
%Check the relativity
eta=cov1(1,2)/(cov1(1,1).*cov1(2,2))^0.5;
if (eta==0)
    disp('Xk and Xk+1 is uncorrelated.');
end
%%
%(b)

X3=[0 0 X1(1:N-2)];
X4=[0 0 0 X1(1:N-3)];
Y=X1-2*X2+0.5*X3-X4;
cov2=cov(X1,Y);
disp('The correlation between Xk and Yk is:');
disp(cov2);
%Check the relativity
eta=cov2(1,2)/(cov2(1,1).*cov2(2,2))^0.5;
if (eta==0)
    disp('Xk and Yk is uncorrelated.');
end