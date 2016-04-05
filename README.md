#CategoryMenuViewController

---------------------------
####Instruction
######下方有中文说明
--
#####This is a quick method to create category menu like THIS.
+![](https://github.com/Kito0615/CategoryMenuViewController/raw/master/menu.gif) 
---
<<<<<<< HEAD
###Usage:
####1. You just need add `CategoryMenuViewController.h` and `CategoryMenuViewController.m` into your project.
####2. Then `#import "CategoryMenuViewController.h`
####3. Create CategoryMenuViewController instance `categoryMenu`.
####4.Set the `categoryMenu.categoryArray` data and `categoryMenu.productsArray` data.
###!NOTE: The structure of `categoryArray` is [Array {key : [Array]}], The `key` of inside array is category name, it will showed on the left categoryTableview.
###!NOTE: The structure of `productsArray` is [Array]
###!NOTE: The connection between `categoryArray` and `productsArray` is `productsArray` inclued in `categoryArray`.
=======
####Usage:
#####1. You just need add `CategoryMenuViewController.h` and `CategoryMenuViewController.m` into your project.
#####2. Then `#import "CategoryMenuViewController.h`
#####3. Create CategoryMenuViewController instance `categoryMenu`.
#####4.Set the `categoryMenu.categoryArray` data and `categoryMenu.productsArray` data.
####!CAUTION: The structure of `categoryArray` is [Array {key : [Array]}], The `key` of inside array is category name, it will showed on the left categoryTableview.
####!CAUTION: The structure of `productsArray` is [Array]
####!CAUTION: The connection between `categoryArray` and `productsArray` is `productsArray` inclued in `categoryArray`.
>>>>>>> 445091442fd0de861de8d425a58053161fcb5067
---------------------------
####中文说明
--
#####这是一个复合的分类视图控制器，可以快速创建类似于商品分类的页面(通常用于外卖类、旅游类APP)。[如图]
+![](https://github.com/Kito0615/CategoryMenuViewController/raw/master/menu.gif) 
---
####用法
#####1. 将`CategoryMenuViewController.h` 和 `CategoryMenuViewController.m`添加到你的工程中。
#####2. 引用头文件`#import "CategoryMenuViewController.h"`
#####3. 实例化`CategoryMenuViewController`对象为`categoryMenu`
#####4. 设置`categoryMenu.categoryArray` 和 `categoryMenu.productsArray`
####!注意：`categoryMenu.categoryArray`的数据结构为[Array {key : [Array]}],其中，`key`是类别的名称，用来在左侧的列表中显示。
####!注意：`categoryMenu.productsArray`的数据结构为[Array]。其实际显示的数据内容为左侧数据对应的[Array].
####!注意：`productsArray` 和 `categoryArray`之间的关系为`categoryArray`中的包含有`productsArray`的数据。
