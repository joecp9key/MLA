# MLA
機器學習作業 HW2
suba.m

第一小題為在已知的群類的個數下進行分群
題目要求為是三個

我們分為用matlab函式來替我們分群
以及我們自己寫kmeans進行分群

由於我們自己寫的程式可以依照使用者的輸入群數進行分群 ( 可以從只分一群到分七群)
我們在第一行請使用者輸入欲分群的個數
(依題目請輸入3進行分群) 

在suba.m檔裡從第2行到第24行都是由matlab裡的kmeans函數來替我們分群
而25行到97行是我們自己寫的演算法進行分群


![image](https://github.com/joecp9key/MLA_HW_2/blob/master/matlab%20kmeans.JPG)<br />  
上圖為使用matlab裡的kemans fuction得出的圖 <br /> 
叉叉為centroid 的位置，我們可以清楚的看到該資料被kmeans分為三大群<br /> 

![image](https://github.com/joecp9key/MLA_HW_2/blob/master/MY%20FUNCTION.JPG)<br /> 
而這張圖為我們自己寫的演算法所分析出來的結果<br /> 
跟kmeans的表現大同小異<br /> 

第98行到102行是我們比較了kmeans函式跟我們演算法的性能<br /> 
我們使用了tabulate來分析我們的結果<br />
"idx(:)"      <br />
代表kmeans的分類結果     <br /> 
'cluster4(:)' <br />
代表我們分析的結果        <br /> 

我們隨機進行一次分析<br /> 

下圖使用kmeans fuction的分類<br /> 
![image](https://github.com/joecp9key/MLA_HW_2/blob/master/%E5%88%86%E6%9E%90kemas.JPG)<br /> 

下圖使用我們自己寫的演算法的分類<br /> 
![image](https://github.com/joecp9key/MLA_HW_2/blob/master/%E5%88%86%E6%9E%90my.JPG)<br /> 
<br />
value代表我們分成了幾類
count代表在該程式下分類到該群集下的個數
percent代表總佔比
雖然與無法在某一群達到正確分類個數 (剛好100)
但是結果也不至於錯到無法接受
因此我們寫的演算法跟matlab的kmeans表現相當


---------------------------------------------
subb.m
第二題是在未告知分類的個數下進行分群<br /> 
在第13行我們使用了matlab的evalclusters函數來幫助我們進行分析<br /> 
其結果為如下圖顯示<br /> 
![image](https://github.com/joecp9key/MLA_HW_2/blob/master/b.png)<br /> 
<br /> 
我們使用了'CalinskiHarabasz'方式來替我們進行分析，並以該資料從分群1至6來替我們評分<br /> 
InspectedK 是分群的個數<br /> 
CriterionValues 是在該分群個數下給予的分數評價<br /> 
我們可以看到若是只分1群是無法得到評價分數的 (因為沒有意義)<br /> 
而分三群給的評價是最高的，接著分數就往下掉了<br /> 
因此我們判定該資料分三群時是最好的<br /> 
我們用kmeans函數進行分類<br /> 
得出下面這張圖<br /> 
![image](https://github.com/joecp9key/MLA_HW_2/blob/master/matlab%20kmeans.JPG)


