X = [randn(100,1)-2*ones(100,1);randn(100,1)*0.75;randn(100,1)+2*ones(100,1)];
Y = [randn(100,1 )-2*ones(100,1);randn(100,1)*0.75;randn(100,1)-2*ones(100,1)];
plot(X(1:100),Y(1:100),'or');
hold on
plot(X(101:200),Y(101:200),'+k')
plot(X(201:300),Y(201:300),'sb')
% hold off
data1 = [(X(1:100)) (Y(1:100))];
data2 = [(X(101:200)) (Y(101:200))];
data3 = [(X(201:300)) (Y(201:300))];
data = [data1;data2;data3];
rng('default');  % For reproducibility
eva = evalclusters(data,'kmeans','CalinskiHarabasz','KList',[1:6])
plot(eva.CriterionValues)
