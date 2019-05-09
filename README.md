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


![image](https://github.com/joecp9key/MLA_HW_2/blob/master/matlab%20kmeans.JPG)
上圖為使用matlab裡的kemans fuction得出的圖
叉叉為centroid 的位置，我們可以清楚的看到該資料被kmeans分為三大群

![image](https://github.com/joecp9key/MLA_HW_2/blob/master/MY%20FUNCTION.JPG)
而這張圖為我們自己寫的演算法所分析出來的結果
跟kmeans的表現大同小異

第98行到102行是我們比較了kmeans函式跟我們演算法的性能
tabulate(idx(:))代表kmeans的分類結果
tabulate(cluster4(:)) 代表我們分析的結果

我們隨機進行一次分析
----------------------------------------
tabulate(idx(:))


  Value    Count   Percent
      1      109     36.33%
      2       90     30.00%
      3      101     33.67%
----------------------------------------  
tabulate(cluster4(:))
  Value    Count   Percent
      1      111     37.00%
      2       92     30.67%
      3       97     32.33%
---------------------------------------- 
value代表我們分成了幾類
count代表在該程式下分類到該群集下的個數
percent代表總佔比
雖然與無法在某一群達到正確分類個數 (剛好100)
但是結果也不至於錯到無法接受
因此我們寫的演算法跟matlab的kmeans表現相當


---------------------------------------------
subb.m
第二題是在未告知分類的個數下進行分群
在第13行我們使用了matlab的evalclusters函數來幫助我們進行分析
其結果為
