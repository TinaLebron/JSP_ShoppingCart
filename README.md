# JSP_ShoppingCart

目的: 我喜歡看NBA ，於是我想做購物車網頁有關NBA 相關商品

功能: <br/>
• 登入畫面的log是依照NBA的Lebron-James設計的<br/>
• 登入判別依照SQL資料庫裡的帳號密碼做比對，登入錯誤則會彈出提示視窗<br/>
• 主畫面是運動商品主要以NBA主題為主<br/>
• 主畫面,如果看到喜歡的商品按下按鈕，則主畫面的購物車(cart按鈕)會顯示客戶點擊的商品數量<br/>
• 購物車(cart按鈕)點擊進去會看到客戶所選的商品，這部分是利用cookies，把客戶點的商品存在cookies裡<br/>
• Shopping Cart頁面的資料是透過cookies得到Vaule,再從資料庫取得商品的資料

未來展望: <br/>
• 購物車裡的商品，各別數量的總價錢尚未完成<br/>
• 購物車裡的全部商品總數量加總尚未完成<br/>
• 商品明細尚未完成<br/>
• 訂單明細資料尚未儲存在資料庫<br/>
• 客戶註冊尚未完成<br/>
 
 ## Login 
 
<img src="https://github.com/TinaLebron/JSP_ShoppingCart/blob/master/picture/ShoppingCartLogin_1.PNG" width="650" />
<br/>
<img src="https://github.com/TinaLebron/JSP_ShoppingCart/blob/master/picture/ShoppingCartLogin_2.PNG" width="550" />

| Option | Description |
| ------ | ----------- |
| login (登入)   | If the account password is incorrect, a prompt window will pop up. |

## Main

<img src="https://github.com/TinaLebron/JSP_ShoppingCart/blob/master/picture/ShoppingCartHome_1.PNG" width="800" />
<br/>
<img src="https://github.com/TinaLebron/JSP_ShoppingCart/blob/master/picture/ShoppingCartHome_2.PNG" width="800" />

| Option | Description |
| ------ | ----------- |
| p1-p6(Add to cart)(加入購物車)   | Add to the shopping cart, the shopping cart will display the number of items selected. |
|  Product presentation(商品呈現) | Obtain product information from the SQL database. |

## Shopping Cart

<img src="https://github.com/TinaLebron/JSP_ShoppingCart/blob/master/picture/ShoppingCart_1.PNG" width="800" />

| Option | Description |
| ------ | ----------- |
|  Shopping Cart(購物車)  | Get the value from the cookie, and use the cookies to get the data on the SQL database.. |

