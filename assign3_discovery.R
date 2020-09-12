#load("spambase.data")
#head(spam_data)

> summary(esoph)
agegp          alcgp         tobgp        ncases         ncontrols    
25-34:15   0-39g/day:23   0-9g/day:24   Min.   : 0.000   Min.   : 1.00  
35-44:15   40-79    :23   10-19   :24   1st Qu.: 0.000   1st Qu.: 3.00  
45-54:16   80-119   :21   20-29   :20   Median : 1.000   Median : 6.00  
55-64:16   120+     :21   30+     :20   Mean   : 2.273   Mean   :11.08  
65-74:15                                3rd Qu.: 4.000   3rd Qu.:14.00  
75+  :11                                Max.   :17.000   Max.   :60.00  
> View(esoph)
> df <- read.csv("spam.csv", header = TRUE)
> View(df)
> table(df$spam)

FALSE  TRUE 
2788  1813 
> table(df$spam)[0]
named integer(0)
> table(df$spam)[1]
FALSE 
2788 
> table(df$spam)[2]
TRUE 
1813 
> length(df)
[1] 59
> length(df$spam)
[1] 4601
> table(df$spam)[2]/4601
TRUE 
0.3940448 
> table(df$testid)[2]/4601
TRUE 
0.3338405 
> filter(df, testid = TRUE & spam = TRUE)
Error: unexpected '=' in "filter(df, testid = TRUE & spam ="
> filter(df, testid == TRUE & spam == TRUE)
Error in filter(df, testid == TRUE & spam == TRUE) : 
  object 'testid' not found
> filter(df, df$testid == TRUE & df$spam == TRUE)
Time Series:
  Start = 1 
End = 4601 
Frequency = 1 
[,1] [,2]  [,3]   [,4]   [,5] [,6]   [,7]  [,8] [,9] [,10] [,11]  [,12] [,13]  [,14] [,15]
1   NA   NA    NA     NA     NA   NA     NA    NA   NA    NA    NA     NA    NA     NA    NA
2   NA   NA    NA     NA     NA   NA     NA    NA   NA    NA    NA     NA    NA     NA    NA
3   NA   NA    NA     NA     NA   NA     NA    NA   NA    NA    NA     NA    NA     NA    NA
4   NA   NA    NA     NA     NA   NA     NA    NA   NA    NA    NA     NA    NA     NA    NA
5   NA   NA    NA     NA     NA   NA     NA    NA   NA    NA    NA     NA    NA     NA    NA
6   NA   NA    NA     NA     NA   NA     NA    NA   NA    NA    NA     NA    NA     NA    NA
7   NA   NA    NA     NA     NA   NA     NA    NA   NA    NA    NA     NA    NA     NA    NA
8   NA   NA    NA     NA     NA   NA     NA    NA   NA    NA    NA     NA    NA     NA    NA
9   NA   NA    NA     NA     NA   NA     NA    NA   NA    NA    NA     NA    NA     NA    NA
10   NA   NA    NA     NA     NA   NA     NA    NA   NA    NA    NA     NA    NA     NA    NA
11   NA   NA    NA     NA     NA   NA     NA    NA   NA    NA    NA     NA    NA     NA    NA
12   NA   NA    NA     NA     NA   NA     NA    NA   NA    NA    NA     NA    NA     NA    NA
13   NA   NA    NA     NA     NA   NA     NA    NA   NA    NA    NA     NA    NA     NA    NA
14   NA   NA    NA     NA     NA   NA     NA    NA   NA    NA    NA     NA    NA     NA    NA
15   NA   NA    NA     NA     NA   NA     NA    NA   NA    NA    NA     NA    NA     NA    NA
16   NA   NA    NA     NA     NA   NA     NA    NA   NA    NA    NA     NA    NA     NA    NA
[,16] [,17] [,18] [,19] [,20]  [,21] [,22]  [,23] [,24] [,25] [,26]  [,27]  [,28]   [,29]
1    NA    NA    NA    NA    NA     NA    NA     NA    NA    NA    NA     NA     NA      NA
2    NA    NA    NA    NA    NA     NA    NA     NA    NA    NA    NA     NA     NA      NA
3    NA    NA    NA    NA    NA     NA    NA     NA    NA    NA    NA     NA     NA      NA
4    NA    NA    NA    NA    NA     NA    NA     NA    NA    NA    NA     NA     NA      NA
5    NA    NA    NA    NA    NA     NA    NA     NA    NA    NA    NA     NA     NA      NA
6    NA    NA    NA    NA    NA     NA    NA     NA    NA    NA    NA     NA     NA      NA
7    NA    NA    NA    NA    NA     NA    NA     NA    NA    NA    NA     NA     NA      NA
8    NA    NA    NA    NA    NA     NA    NA     NA    NA    NA    NA     NA     NA      NA
9    NA    NA    NA    NA    NA     NA    NA     NA    NA    NA    NA     NA     NA      NA
10    NA    NA    NA    NA    NA     NA    NA     NA    NA    NA    NA     NA     NA      NA
11    NA    NA    NA    NA    NA     NA    NA     NA    NA    NA    NA     NA     NA      NA
12    NA    NA    NA    NA    NA     NA    NA     NA    NA    NA    NA     NA     NA      NA
13    NA    NA    NA    NA    NA     NA    NA     NA    NA    NA    NA     NA     NA      NA
14    NA    NA    NA    NA    NA     NA    NA     NA    NA    NA    NA     NA     NA      NA
15    NA    NA    NA    NA    NA     NA    NA     NA    NA    NA    NA     NA     NA      NA
16    NA    NA    NA    NA    NA     NA    NA     NA    NA    NA    NA     NA     NA      NA
[,30] [,31] [,32] [,33] [,34] [,35] [,36] [,37] [,38]  [,39] [,40] [,41] [,42] [,43] [,44]
1    NA    NA    NA    NA    NA    NA    NA    NA    NA     NA    NA    NA    NA    NA    NA
2    NA    NA    NA    NA    NA    NA    NA    NA    NA     NA    NA    NA    NA    NA    NA
3    NA    NA    NA    NA    NA    NA    NA    NA    NA     NA    NA    NA    NA    NA    NA
4    NA    NA    NA    NA    NA    NA    NA    NA    NA     NA    NA    NA    NA    NA    NA
5    NA    NA    NA    NA    NA    NA    NA    NA    NA     NA    NA    NA    NA    NA    NA
6    NA    NA    NA    NA    NA    NA    NA    NA    NA     NA    NA    NA    NA    NA    NA
7    NA    NA    NA    NA    NA    NA    NA    NA    NA     NA    NA    NA    NA    NA    NA
8    NA    NA    NA    NA    NA    NA    NA    NA    NA     NA    NA    NA    NA    NA    NA
9    NA    NA    NA    NA    NA    NA    NA    NA    NA     NA    NA    NA    NA    NA    NA
10    NA    NA    NA    NA    NA    NA    NA    NA    NA     NA    NA    NA    NA    NA    NA
11    NA    NA    NA    NA    NA    NA    NA    NA    NA     NA    NA    NA    NA    NA    NA
12    NA    NA    NA    NA    NA    NA    NA    NA    NA     NA    NA    NA    NA    NA    NA
13    NA    NA    NA    NA    NA    NA    NA    NA    NA     NA    NA    NA    NA    NA    NA
14    NA    NA    NA    NA    NA    NA    NA    NA    NA     NA    NA    NA    NA    NA    NA
15    NA    NA    NA    NA    NA    NA    NA    NA    NA     NA    NA    NA    NA    NA    NA
16    NA    NA    NA    NA    NA    NA    NA    NA    NA     NA    NA    NA    NA    NA    NA
[,45] [,46]  [,47]  [,48] [,49] [,50]  [,51]  [,52] [,53]  [,54] [,55] [,56]    [,57] [,58]
1    NA    NA     NA     NA    NA    NA     NA     NA    NA     NA    NA    NA       NA    NA
2    NA    NA     NA     NA    NA    NA     NA     NA    NA     NA    NA    NA       NA    NA
3    NA    NA     NA     NA    NA    NA     NA     NA    NA     NA    NA    NA       NA    NA
4    NA    NA     NA     NA    NA    NA     NA     NA    NA     NA    NA    NA       NA    NA
5    NA    NA     NA     NA    NA    NA     NA     NA    NA     NA    NA    NA       NA    NA
6    NA    NA     NA     NA    NA    NA     NA     NA    NA     NA    NA    NA       NA    NA
7    NA    NA     NA     NA    NA    NA     NA     NA    NA     NA    NA    NA       NA    NA
8    NA    NA     NA     NA    NA    NA     NA     NA    NA     NA    NA    NA       NA    NA
9    NA    NA     NA     NA    NA    NA     NA     NA    NA     NA    NA    NA       NA    NA
10    NA    NA     NA     NA    NA    NA     NA     NA    NA     NA    NA    NA       NA    NA
11    NA    NA     NA     NA    NA    NA     NA     NA    NA     NA    NA    NA       NA    NA
12    NA    NA     NA     NA    NA    NA     NA     NA    NA     NA    NA    NA       NA    NA
13    NA    NA     NA     NA    NA    NA     NA     NA    NA     NA    NA    NA       NA    NA
14    NA    NA     NA     NA    NA    NA     NA     NA    NA     NA    NA    NA       NA    NA
15    NA    NA     NA     NA    NA    NA     NA     NA    NA     NA    NA    NA       NA    NA
16    NA    NA     NA     NA    NA    NA     NA     NA    NA     NA    NA    NA       NA    NA
[,59]
1    NA
2    NA
3    NA
4    NA
5    NA
6    NA
7    NA
8    NA
9    NA
10    NA
11    NA
12    NA
13    NA
14    NA
15    NA
16    NA
[ reached getOption("max.print") -- omitted 4585 rows ]
> filter(df, df$testid == TRUE & df$spam == TRUE)[, 'spam']
Error in `[.default`(filter(df, df$testid == TRUE & df$spam == TRUE),  : 
                       no 'dimnames' attribute for array
                     > filter(df, df$testid == TRUE & df$spam == TRUE)[, ("spam")]
                     Error in `[.default`(filter(df, df$testid == TRUE & df$spam == TRUE),  : 
                                            no 'dimnames' attribute for array
                                          > filter(df, df$testid == TRUE & df$spam == TRUE)[, c("spam")]
                                          Error in `[.default`(filter(df, df$testid == TRUE & df$spam == TRUE),  : 
                                                                 no 'dimnames' attribute for array
                                                               > filter(df, df$testid == TRUE & df$spam == TRUE)["spam"]
                                                               [1] NA
                                                               > length(filter(df, df$testid == TRUE & df$spam == TRUE))
                                                               [1] 271459
                                                               > length(filter(df, df$testid == TRUE & df$spam == TRUE))/51
                                                               [1] 5322.725
                                                               > length(filter(df, df$testid == TRUE & df$spam == TRUE))/59
                                                               [1] 4601
                                                               
df <- read.csv("spam.csv", header = TRUE)