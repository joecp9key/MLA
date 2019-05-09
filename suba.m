N = input('�г]�w�E���ƥءG');
X = [randn(100,1)-2*ones(100,1);randn(100,1)*0.75;randn(100,1)+2*ones(100,1)];
Y = [randn(100,1 )-2*ones(100,1);randn(100,1)*0.75;randn(100,1)-2*ones(100,1)];
plot(X(1:100),Y(1:100),'r*');
hold on
plot(X(101:200),Y(101:200),'g*')
plot(X(201:300),Y(201:300),'b*')
% hold off
data1 = [(X(1:100)) (Y(1:100))];
data2 = [(X(101:200)) (Y(101:200))];
data3 = [(X(201:300)) (Y(201:300))];
data = [data1;data2;data3];

[idx,C1] = kmeans(data,3);

plot(C1(:,1),C1(:,2),'kx',...
     'MarkerSize',15,'LineWidth',3)
 legend('Cluster 1','Cluster 2','Cluster 3','Centroids',...
       'Location','NW')
title 'Cluster Assignments and Centroids with Matlab Function'
hold off
[m,n] = size(data); % m = 300,n = 2
center = zeros(N,n);% ��l�ƻE�����ߡA�ͦ�N��n�C���s�x�}
pattern = data;% �N��Ӹ�ƫ�����pattern�x�}��
%% �t��k
for x = 1 : N
center(x,:) = data(randi(300,1),:); % �Ĥ@���H�����ͻE������ randi��^1*1��(1,300)����
end
while true
distence = zeros(1,N);% ����1��N�C���s�x�}
num = zeros(1,N);% ����1��N�C���s�x�}
new_center = zeros(N,n); % ����N��n�C���s�x�}
%% �N�Ҧ����I���W����1 2 3...N
for x = 1 : m
for y = 1 : N
distence(y) = norm(data(x,:) - center(y,:)); % norm�禡�p���C�������Z��
end
[~,temp] = min(distence); %�D�̤p���Z�� ~�O�Z���ȡAtemp�O�ĴX��
pattern(x,n + 1) = temp;
end
k = 0;
%% �N�Ҧ��b�P�@���̪��I�y�Х����ۥ[�A�p��s�����߮y��
for y = 1 : N
for x = 1 : m
if pattern(x,n + 1) == y
new_center(y,:) = new_center(y,:) + pattern(x,1:n);
num(y) = num(y) + 1;
end
end
new_center(y,:) = new_center(y,:) / num(y);
if norm(new_center(y,:) - center(y,:)) < 0.1

k = k + 1;
end
end
if k == N
break;
else
center = new_center;
end
end



[m, n] = size(pattern); %[m,n] = [300,3]


 
%% �̫���ܻE���᪺���
figure;
hold on;
cluster4 = []
for i = 1 : m
    cluster4 = [cluster4,pattern(i,n)]
if pattern(i,n) == 1 
plot(pattern(i,1),pattern(i,2),'r*');
plot(center(1,1),center(1,2),'kx','MarkerSize',15,'LineWidth',3);
elseif pattern(i,n) == 2
plot(pattern(i,1),pattern(i,2),'g*');
plot(center(2,1),center(2,2),'kx','MarkerSize',15,'LineWidth',3);
elseif pattern(i,n) == 3
plot(pattern(i,1),pattern(i,2),'b*');
plot(center(3,1),center(3,2),'kx','MarkerSize',15,'LineWidth',3);
elseif pattern(i,n) == 4
plot(pattern(i,1),pattern(i,2),'y*');
plot(center(4,1),center(4,2),'kx','MarkerSize',15,'LineWidth',3);
elseif pattern(i,n) == 5
plot(pattern(i,1),pattern(i,2),'m*');
plot(center(5,1),center(5,2),'kx','MarkerSize',15,'LineWidth',3);
elseif pattern(i,n) == 6
plot(pattern(i,1),pattern(i,2),'k*');
plot(center(6,1),center(6,2),'kx','MarkerSize',15,'LineWidth',3);
else
plot(pattern(i,1),pattern(i,2),'c*');
plot(center(7,1),center(7,2),'kx','MarkerSize',15,'LineWidth',3);
end
end
tabulate(idx(:))
tabulate(cluster4(:))

center
C1
plot(center(:,1),center(:,2),'kx',...
     'MarkerSize',15,'LineWidth',3)

   title 'Cluster Assignments and Centroids with My Function'
hold off