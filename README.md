## 作業 2

### 取得原始碼

1. 拜訪 https://github.com/5xRuby/blank
2. 將 repository fork 到自己的帳號下

    ![](http://i.imgur.com/ZlpWIKR.png)

3. Clone 自己帳號下的 respository

        git clone git@github.com:5xRuby/blank.git

### 專案初始化

```
bundle
rake db:migrate
rake fake:categories fake:products
```