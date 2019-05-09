N = input('請設定聚類數目：');
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
center = zeros(N,n);% 初始化聚類中心，生成N行n列的零矩陣
pattern = data;% 將整個資料拷貝到pattern矩陣中
%% 演算法
for x = 1 : N
center(x,:) = data(randi(300,1),:); % 第一次隨機產生聚類中心 randi返回1*1的(1,300)的數
end
while true
distence = zeros(1,N);% 產生1行N列的零矩陣
num = zeros(1,N);% 產生1行N列的零矩陣
new_center = zeros(N,n); % 產生N行n列的零矩陣
%% 將所有的點打上標籤1 2 3...N
for x = 1 : m
for y = 1 : N
distence(y) = norm(data(x,:) - center(y,:)); % norm函式計算到每個類的距離
end
[~,temp] = min(distence); %求最小的距離 ~是距離值，temp是第幾個
pattern(x,n + 1) = temp;
end
k = 0;
%% 將所有在同一類裡的點座標全部相加，計算新的中心座標
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


 
%% 最後顯示聚類後的資料
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