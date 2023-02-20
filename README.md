# Learning  

## HTML

HTML是一种超文本标记语言，用于告知浏览器组织页面，有一系列的元素构成，通过元素包围不同部分的内容使以一定的方式呈现或工作，标签能够为文字或图片添加超链接等等设置  

```html
使用<p><p>包围文字形成段落  

标签不区分大小写
```

### 基础剖析

![explain](https://developer.mozilla.org/en-US/docs/Learn/HTML/Introduction_to_HTML/Getting_started/grumpy-cat-small.png)

使用开始标签与结束标签包围内容，这一整个结构就称之为元素

#### 嵌套

在元素放在别的元素之中，称之为嵌套

```html
<p>Hello <strong>World</strong> !</p>
```

#### 块级元素和内联元素

块级元素在页面中以块的形式展现 —— 相对于其前面的内容它会出现在新的一行，其后的内容也会被挤到下一行展现。块级元素通常用于展示页面上结构化的内容，例如段落、列表、导航菜单、页脚等等。一个以 block 形式展现的块级元素不会被嵌套进内联元素中，但可以嵌套在其它块级元素中。
内联元素通常出现在块级元素中并环绕文档内容的一小部分，而不是一整个段落或者一组内容。内联元素不会导致文本换行：它通常出现在一堆文字之间，例如超链接元素`<a>` 或者强调元素：`<em>` 和 `<strong>`。

#### 空元素  

部分元素只拥有一个标签，用于在说在所在位置插入、嵌入内容，如元素`<img>`用于在该位置插入一张指定的图片

如：

```html
<img src="/HTMLLearning/images/test.jpg">
```

#### 属性

![Alt text](https://developer.mozilla.org/en-US/docs/Learn/HTML/Introduction_to_HTML/Getting_started/grumpy-cat-attribute-small.png)

属性包括元素的额外信息，如上图中，class属性给元素赋值了一个识别的名字（id)，可以用来识别此元素的样式和其他信息

一个属性必须包含如下内容：
一个空格，在属性和元素名称之间（如果已经有一个或多个属性，就与前一个属性之间有一个空格）。
属性名称，后面跟着一个等于号。
一个属性值，由一对引号 ("") 引起来。

|属性名|解释|
|----|-----|
|href|超链接的web地址|
|title|超链接上的额外信息|
|target|呈现方式|

#### 布尔属性

有时你会看到没有值的属性，它是合法的。这些属性被称为布尔属性，他们只能有跟它的属性名一样的属性值。例如disabled 属性，他们可以标记表单输入使之变为不可用 (变灰色)，此时用户不能向他们入任何数据。

```html
<input type="text" disabled="disabled">

<!-- 使用 disabled 属性来防止终端用户输入文本到输入框中 -->
<input type="text" disabled>

<!-- 下面这个输入框没有 disabled 属性，所以用户可以向其中输入 -->
<input type="text">

```

#### 格式

添加对应值时需要加上引号，单引号与双引号均可，但需要避免混用
HTML中所有文本的多个连续空格在渲染时都将视作为一个空格

#### 特殊字符

在HTML中，某些字符时特殊字符，会被语法所调用，因此使用字符引用替代
|原始字符|等价字符引用|
|------|-----|
|<|`&lt;`|
|>|`&gt;`|
|"|`&qout;`|
|'|`&apos;`|
|&|`&amp`|

#### HTML注释

在HTML中使用`<!-->`与`-->`包括起来作为注释语言

```html
<!-- <p>here i am</p>-->
here i am 
```

### 剖析HTML文档

```html
<!DOCTYPE html>                         //声明文档类型
<html>                                  //根元素，包含整个页面
  <head>                                //关键词/页面描述等信息，不出现在正文之中的信息
    <meta charset="utf-8">              //使用字符集
    <title>我的测试站点</title>          //页面标题
  </head>
  <body>                                //主体显示内容
    <p>这是我的页面</p>
  </body>
</html>
```

### head标签与元数据

#### head标签

head标签内的内容不会显示在页面之中，用于保存页面内的元数据  

example：添加标题 使用`<title>`元素

##### 元数据 <meta&gt;元素

元数据：描述数据的数据

###### 修改字符编码

example：字符集使用`utf-8`编码避免出现乱码的情况

```html
<meta> charset="utf-8">
```

###### 添加作者和描述

example：使用`name`和`content`属性指定元素类型与内容

```html
<meta name="author" content="Chris Mills">
<meta name="description" content="The MDN Web Docs Learning Area aims to provide
complete beginners to the Web with all they need to know to get
started with developing web sites and applications.">
```

通过在head内的description能够在搜索引擎内寻找到网站

###### 添加自定义图标

使用`favicon`标签自定义浏览器icon

```html
<link rel="icon" href="favicon.ico" type="image/x-icon">
```

icon放置在image文件夹下

##### 使用CSS和JavaScript丰富HTML元素

CSS使用&lt;link&gt;元素，Jscript使用&lt;script&gt;元素

###### &lt;link&gt;

通常位于文档头部，拥有两个属性`rel`与`href`

```html
<link rel="stylesheet" href="my-css-file.css">
```

`rel=stylesheet`表明这是文档的样式表
`href`包含样式表的文件路径

###### &lt;script&gt;

非强制放于`head`之中，包含`src`属性指向需要加载的JavaScript文件路径，同时加上`defer`以在HTML加载完之后加载HTML

```html
<script src="my-js-file.js" defer></script>
```

##### 设定主语言

使用`<html lang="zh_CN">`设置语言为中文

同时也可以针对分段设置为不同的语言
``<p>Japanese example: <span lang="ja">ご飯が熱い。</span>.</p>``

### 文字处理

#### 排版处理

通过使用`<p>`元素标签对段落进行定义

```html
<p>这是一个段落</p>
```

使用“标题标签”定义标题

```html
<h1>这是一个标题</h1>
```

其中标题元素一共有六个标签，从h1到h6，分别代表不同层级的内容，需要严明各段的内容，便于阅读
[层级演示文件](files/text-start.html)

#### 文字格式处理

##### 斜体强调

使用`<em>`标记斜体字表强调语义

```html
<p>I am <em>glad</em> you weren't <em>late</em>.</p>
```

此外还可以通过`<span>`和CSS，以及`<i>`达到斜体风格的效果

##### 粗体非常重要

使用`<strong>`标记粗体字强调重要性

```html
<p>This liquid is <strong>highly toxic</strong>.</p>

<p>I am counting on you. <strong>Do not</strong> be late!</p>
```

此外还可以通过`<span>`和CSS，以及`<b>`达到斜体风格的效果

##### 补充

关于`<b>, <i>, <u>`三个元素，仅影响表象而不含有语义，适用于在没有更加合适的元素的情况下

```html
<i> 被用来传达传统上用斜体表达的意义：外国文字，分类名称，技术术语，一种思想……
<b> 被用来传达传统上用粗体表达的意义：关键字，产品名称，引导句……
<u> 被用来传达传统上用下划线表达的意义：专有名词，拼写错误……
```

### 列表

#### 无序列表

无序列表用于记录顺序无关紧要的项目
使用`<ul>`元素开始记录内容，并使用`<li>`将所有单个项目包围

```html
<ul>
  <li>豆浆</li>
  <li>油条</li>
  <li>豆汁</li>
  <li>焦圈</li>
</ul>
```

#### 有序列表

有序列表需要按照项目的顺序列出来，有强顺序关联性
结构类似于无序列表，不同之处在于需要使用`<ol>`将项目包裹

```html
<ol>
  <li>沿着条路走到头</li>
  <li>右转</li>
  <li>直行穿过第一个十字路口</li>
  <li>在第三个十字路口处左转</li>
  <li>继续走 300 米，学校就在你的右手边</li>
</ol>
```

练习：[列表个人练习](files/text-start(renew).html)

#### 嵌套列表

在一个列表之中嵌入另一个列表是同样可行的

### 超链接

使用超链接将文档连接到任何其他文档
使用`<a>`元素，并给予一个`href`属性以创建链接

```html
<p>chilck
<a href="https://www.google.com"> here </a>to jumo to Google
</p>
```

#### title属性

添加title属性氪补充链接信息，包括即将跳转的网页等信息（鼠标放置在该链接上显示的内容）

#### 块级链接

```html
<a href="https://www.mozilla.org/zh-CN/">
  <img src="mozilla-image.png" alt="链接至 Mozilla 主页的 Mozilla 标志">
</a>
```

#### URL与path

指向文件目录的差异
|文件路径|差异|
|--|--|
|指向本级目录|直接应用文件|
|指向子目录|添加子目录前缀|
|指向上级目录|添加`../`返回上级目录|

#### 引导到文档片段

在标题端使用特定的`id`值，并在链接中在尾部添加`#+文档id`

#### 绝对路径与相对路径

一般而言，绝对路径=绝对路径地址+相对路径

##### 绝对路径

绝对路径中是直接指向的路径，可以直接通过域名进行访问

##### 相对路径

相对路径指向不同的位置，取决于当前所在的位置

##### 连接到非HTML资源

下载文件:使用`download`属性

```html
<a> href="zuiding.top" download="test.txt">点击下载（非链接）
</a>
```

电子邮件链接:使用`<a>`与`mailto:`结合

```html
<a href="mailto:zuiding024@gmail.com">发送邮件</a>
```

电子邮件也可添加详细信息，通过添加subject,c,body内容，其中使用`?`分割主URL与参数值，使用`&`分割不同参数值

### 高阶文本排版

#### 描述列表

标记单子项目及其相关描述，通过使用`<dl>`包裹，并在每一项中都是用`<dt>`闭合，每一个描述使用`<dd>`闭合

```html
<dl>
  <dt>内心独白</dt>
    <dd>戏剧中，某个角色对自己的内心活动或感受进行念白表演，这些台词只面向观众，而其他角色不会听到。</dd>
  <dt>语言独白</dt>
    <dd>戏剧中，某个角色把自己的想法直接进行念白表演，观众和其他角色都可以听到。</dd>
  <dt>旁白</dt>
    <dd>戏剧中，为渲染幽默或戏剧性效果而进行的场景之外的补充注释念白，只面向观众，内容一般都是角色的感受、想法、以及一些背景信息等。</dd>
</dl>
```

HTML会自动在其之间形缩进，使代码整洁规范
[实例](https://developer.mozilla.org/zh-CN/docs/Learn/HTML/Introduction_to_HTML/Advanced_text_formatting#%E6%8F%8F%E8%BF%B0%E5%88%97%E8%A1%A8)

#### 引用

标记引用，不会被显示出来，需要通过使用JS，CSS才能够显示`cite`的内容

##### 块级引用

使用`blockquote`包裹表示，并在`cite`属性内用URL指向引用的资源地址

```html
<blockquote cite="https://developer.mozilla.org/en-US/docs/Web/HTML/Element/blockquote">
  <p>The <strong>HTML <code>&lt;blockquote&gt;</code> Element</strong> (or <em>HTML Block
  Quotation Element</em>) indicates that the enclosed text is an extended quotation.</p>
</blockquote>
```

在渲染块引用时会增加缩进所谓引用的标志

##### 行内引用

大体相同，使用`<q>`元素，其中将作文普通文本放入引号表示引用

```html
<p>The quote element — <code>&lt;q&gt;</code> — is <q cite="https://developer.mozilla.org/en-US/docs/Web/HTML/Element/q">intended
for short quotations that don't require paragraph breaks.</q></p>
```

##### 缩略语

使用`<abbr>`包裹一个缩写，并提供解释（包含在`title`中）

example:

```html
<p>我们使用 <abbr title="超文本标记语言（Hyper text Markup Language）">HTML</abbr> 来组织网页文档。</p>

<p>第 33 届<abbr title="夏季奥林匹克运动会">奥运会</abbr>将于 2024 年 8 月在法国巴黎举行。</p>
```

##### 标记联系方式

使用`address`记录地址
ex

```html
<address>
  <p>Chris Mills, Manchester, The Grim North, UK</p>
</address>
or
<address>
  <p>Page written by <a href="../authors/chris-mills/">Chris Mills</a>.</p>
</address>

```

##### 上标与下标

在一些需要使用到上下标的场景中，使用`<sup>`与`<sub>`标签解决
其中`sub`是下标，`sup`是上标

```html
<p>咖啡因的化学方程式是 C<sub>8</sub>H<sub>10</sub>N<sub>4</sub>O<sub>2</sub>。</p>
<p>如果 x<sup>2</sup> 的值为 9，那么 x 的值必为 3 或 -3。</p>
```

##### 展示计算机代码

|代码标签|解释|
|--|--|
|`<code>`|标记计算机通用代码|
|`<pre`|保留空白字符>|
|`var`|标记具体变量名|
|`<kbd>`|标记输入电脑的键盘输入（输入示例）|
|`<samp>`|标记计算机程序的输出|

##### 标记时间和日期

统一事件类型，以便使用不同时间浏览形式的用户均能正确阅读时间，并且允许插入到日历之中
使用`<time>`元素标记
ex：

```html
<time datetime="2016-01-20">2016 年 1 月 20 日</time>
```

ex2：

```html
<!-- 标准简单日期 -->
<time datetime="2016-01-20">20 January 2016</time>
<!-- 只包含年份和月份-->
<time datetime="2016-01">January 2016</time>
<!-- 只包含月份和日期 -->
<time datetime="01-20">20 January</time>
<!-- 只包含时间，小时和分钟数 -->
<time datetime="19:30">19:30</time>
<!-- 还可包含秒和毫秒 -->
<time datetime="19:30:01.856">19:30:01.856</time>
<!-- 日期和时间 -->
<time datetime="2016-01-20T19:30">7.30pm, 20 January 2016</time>
<!-- 含有时区偏移值的日期时间 -->
<time datetime="2016-01-20T19:30+01:00">7.30pm, 20 January 2016 is 8.30pm in France</time>
<!-- 调用特定的周 -->
<time datetime="2016-W04">The fourth week of 2016</time>
```

### 文档与网页结构

#### 文档的基本组成部分

页眉： 横跨页面顶部的大标题或者标志
导航栏：指向各个主要区段的超链接
主内容：网站的独有内容
侧边栏：外围辅助信息
页脚：页面底部的额外信息

|标签|解释|
|---|----|
|&lt;header&gt;|页眉|
|&lt;nav&gt;|导航栏|
|&lt;main&gt;|主内容|
|&lt;aside&gt;|侧边栏|
|&lt;footer&gt;|页脚|

## HTML嵌入
