mat=[0.690000000000000,0.490000000000000;-1.31000000000000,-1.21000000000000;0.390000000000000,0.990000000000000;0.0900000000000000,0.290000000000000;1.29000000000000,1.09000000000000;0.490000000000000,0.790000000000000;0.190000000000000,-0.310000000000000;-0.810000000000000,-0.810000000000000;-0.310000000000000,-0.310000000000000;-0.710000000000000,-1.01000000000000];
hold on
axis square;
scatter(mat(:,1),mat(:,2),'o','r');
plot([-2 2],[0 0],'-.k');
plot([0 0],[-2 2],'-.k');
cov_mat=cov(mat);
[egvec,egval]=eig(cov_mat);
slope1 = egvec(2,1)/egvec(1,1);
slope2 = egvec(2,2)/egvec(2,1);
x=[-2:0.1:2];
vec1 = x*slope1;
vec2 = x*slope2;
xlim([-2,2]);
ylim([-2,2]);
plot(x,vec1,'--b');
plot(x,vec2,'--b');

egvec_sort = fliplr(egvec);
newmat = egvec_sort' * mat';
newmat =newmat';
scatter(newmat(:,1),newmat(:,2),'*','b');

