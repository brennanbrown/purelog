---
layout: post
title: "생활코딩 - WEB2 - JavaScript"
date: 2021-05-07
category: javascript
tags:
  - Github
  - Jekyll
---



# WEB2 JavaScript - 3.HTML과 JS의 만남 : script 태그

|[![생활코딩-자바스크립트](http://img.youtube.com/vi/Ru5zGHkOgic/0.jpg)](https://www.youtube.com/watch?v=Ru5zGHkOgic)|
|:---:|
|WEB2 JavaScript - 3.HTML과 JS의 만남 : script 태그|


javascrip를 사용하려면 스크립트 선언을 해주어야한다.

```html
    <body>
      <script>
      여기 안쪽에 있는 태그를 자바스크립트로 인식한다.
      </script>
    </body>
```
---
```html
    <body>
    1.  <h1>JavaScrips</h1>
        <script>
          document.write('hello world');
    2.  </script>
        <h1>html</h1>
        hello world
    이 두개가 무엇이 다르냐?
```
---
* 1+1을 입력했을 때 (javascript는 document.write('1+1')로 입력)
  - html : 1+1로 나옴
  - JavaScrip : 2로 나온다.
  : html은 정적
  : javascript는 동적

  <br>
  <br>

  ------

  <br>
  <br>

# 4.HTML과 JS의 만남 : 이벤트

# 1. 목차1번 (Apple)


|[![생활코딩-자바스크립트](http://img.youtube.com/vi/-hdtrReY9Zw/0.jpg)](https://www.youtube.com/watch?v=-hdtrReY9Zw)|
|:---:|
|WEB2 JavaScript - 4.HTML과 JS의 만남 : 이벤트|



body사이에

```html
<input type="button" value="text">
    하면 버튼이 만들어지고 안에 글씨는 value에 넣으면 된다.
여기에 alert 창을 만들고 싶다면

    <input type="button" value="text" onclick="alert('alert')">
```

웹브라우저에서 일어나는 일<br/>
- 사건, <span style='color:red'>EVENT.</span>

```html
<input type="text" onchange="alert(changed)">
: 검색창같이 글씨를 쓸 수 있는 칸이 생기고
  onchange를 넣으면 칸에 글씨를 쓰고 마우스 커서를 밖에다 클릭하면 alert 라는 창이 뜬다.
  : 칸에 글씨를 쓰면 내용이 변한다. 그 내용이 변할 때 EVENT를 체크하는 자바스크립트이다.
  글씨를 쓰고 다시 지우면 해당하지 않는다.
```

웹브라우저 위에서 일어나는 여러가지 사건들 중에
기념할만한 것들 몇가지 10~20개 정도의 EVENT를
정의해놓고 있다.
<span style='color:#002CB0'>이것을 이용해서 사용자와 상호작용하는 웹사이트를 만들 수 있다.</span>

<!-- [동일파일 내 문단 이동](# javascript-선언하기) -->

---
## 검색하기
javascript keydown event attribute검색
```html
<input type="text" onkeydown="myFunction()">
검색하니 이런 코드가 나온다
이 코드를 쓰면 텍스트를 쓸 수 있는 칸이 나오고
하나만 써도 alert이 뜬다.
```
  >[[자바스크립트] 키보드 이벤트 (keydown/keyup)by Dale Seo](https://www.daleseo.com/js-key-events/)


  <br>
  <br>

  ------

  <br>
  <br>
# WEB2 JavaScript - 5.HTML과 JS의 만남 (콘솔)

|[![생활코딩-자바스크립트](http://img.youtube.com/vi/-VKIqaEdDVU/0.jpg)](https://www.youtube.com/watch?v=-VKIqaEdDVU)|
|:---:|
|WEB2 JavaScript - 5.HTML과 JS의 만남 (콘솔)|



페이지검사 - Console 로 가면 파일을 만들지 않고도 자바스크립트를 실행할 수 있다.<br/>
예를들어 아무 텍스트를 Console에 복붙하고 복붙을 text라고 했을 때<br/>
'text' 따옴표로 묶어주면 따옴표 사이가 __문자__ 가 된다.<br/>
javascript는 문자의 개수를 알려주는 기능이 있다 : length<br/>
alert('text'.length) 하고 enter를 누르면 문자의 개수가 alert로 뜬다.

---
페이지검사-메뉴 중 element 클릭하고 esc를 누르면 element탭 바로 밑에 console이 같이 뜨게된다.

강의 요약 : console기능을 사용하면 지금 보고 있는 웹페이지를 대상으로 자바스크립트가 실행된다.

<br>
<br>

------

<br>
<br>
# WEB2 JavaScript - 6.데이터타입 - 문자열과 숫자

|[![생활코딩-자바스크립트](http://img.youtube.com/vi/P8C8VNiM33A/0.jpg)](https://www.youtube.com/watch?v=P8C8VNiM33A)|
|:---:|
|WEB2 JavaScript - 6.데이터타입 - 문자열과 숫자|

google - <u>javascrips data type</u> 검색 <br/>
<https://developer.mozilla.org/ko/docs/Web/JavaScript/Data_structures>
Primitive(기본자료형)인 여섯가지 데이터 타입
- Boolean
- Null
- Undefined
- Number
- String
- Symbol (ECMAScript 6에 추가됨) <br/>

이번 시간엔 목록 중 5번째인 Number를 다뤄볼 것임
---
number에서 중요한 것은 연산이다 +, - ...

```
2-1
-> 1
2*4
-> 8
6/2
-> 3
"Hello world"
'Hello world'
-> 큰따옴표로 시작하면 큰따옴표로 끝나고 작은 따옴표로 ''
'Hello world'.length
-> 11
'Hello world'.toUpperCase()
-> HELLO WORLD가 된다. : 소문자가 대문자가 됨
'Hello world'.indexOf('O')
-> -1 : 찾을 수 없다고 나옴 저 문자에 대문자 O가 없기 때문
'Hello world'.indexOf('o')
-> 4 : 순서가 0,1,2,3,4,로 되어있어서 5번째에 o가 있다는 게 4로 나온 것
'Hello world'.indexOf('world')
-> 6
'        hello      '치면 공백이 살아있다.
'        hello      '.trim() 라고하면
-> 'hello' : 공백을 없애준다.
"1"+"1"
->11 : "1"은 문자열이기 때문에 11이 된다.
"hello"+" world"
-> hello world
```

<br>
<br>

------

<br>
<br>
# WEB2 JavaScript - 7.변수와 대입 연산자

|[![생활코딩-자바스크립트](http://img.youtube.com/vi/absJhWQAS40/0.jpg)](https://www.youtube.com/watch?v=absJhWQAS40)|
|:---:|
|WEB2 JavaScript - 7.변수와 대입 연산자|

```
x=1;
->1
y=1;
->1
x+y;
->2
1=2;
-> 에러가 남 : 숫자 1은 항상 1이기 때문에 상수(바뀌지 않는 수) 영어로는 constant라고 한다. variable vs constant
```

스크립트를 실행할 때 : enter<br/>
실행을 유보할 때 : shift+enter<br/>

---
> example
아주 긴 문장이 있는데 그 안에 example이라는 단어가 100개 정도 나온다. 그 단어를 다른 단어로 한번에 바꿀 일이 있을 수 있다면 ?

먼저 변수를 example로 설정해주자<br/>
var word = 'example'; <br/>

"Her courage is an example to us all. " 이라는 문장이라면<br/>
"Her courage is an __"+word+"__ to us all." 라고 치면<br/>
-> "Her courage is an example to us all." 라고 나오게 된당.

<br>
<br>

------

<br>
<br>
# WEB2 JavaScript - 8.웹브라우저 제어

|[![생활코딩-자바스크립트](http://img.youtube.com/vi/5tqfbgfA1LY/0.jpg)](https://www.youtube.com/watch?v=5tqfbgfA1LY)|
|:---:|
|WEB2 JavaScript - 12.제어할 태그 선택하기|




```html
<body>
  <h1><a href="javascripts.html">WEB</a></h1>
  <input type="button" value="night">
  <input type="button" value="day">
</body>
```
input type="button" 으로 night, day 버튼을 만들어준다.
night 버튼을 누르면 배경이 검은색, 글씨가 하얀색으로 변하고
day 버튼을 누르면 위와 반대로 변하게 만들 것이다.<br/>

click을 하면 바껴야하므로 <br/>
<span style=color:blue> click에 대한 이벤트를 만들어줘야한다. 그 뒤에 onclick="" 을 쓰고 저 안에 쓸 자바스크립트를 만들어줘야한다.
</span>
자바스크립트의 특성을 따라서 body 태그를 "선택" 하도록 해주어야 한다. <br/>
자바스크립트로 태그를 선택하려면 어떻게 해야하는지 검색해보자

구글 검색 - __javascript select tag by css selector__<br/>
<https://developer.mozilla.org/ko/docs/Web/API/Document/querySelector>

```
element = document.querySelector(selectors)
```
이렇게 나온다. selectors : tag

```html
<body>
  <h1><a href="javascripts.html">WEB</a></h1>
  <input type="button" value="night" onclick="
  document.querySelector('body')" >
  <input type="button" value="day">
</body>
```
만약에 body태그에 id = "target"이라고 썼다면 querySelector('#target') 이라고 쓰면됨

이제 자바스크립트로 body부분을 지목해주었으니 색깔을 변경해야한다.

자바스크립트로 element style을 어떻게 변경하는지 검색해보자.

구글 - javascript element style 검색
<https://www.w3schools.com/jsref/prop_html_style.asp>

```html
<body>
  <h1><a href="javascripts.html">WEB</a></h1>
  <input type="button" value="night" onclick="
  document.querySelector('body').style.backgroundColor = 'black';>
  document.querySelector('body').style.Color = 'white';">
  <input type="button" value="day">
</body>
```
.style.backgoundColor 를 적어준다. background에서 Color __C__ 는 대문자로
.style.color 는 백그라운드 안 text를 말한다.

<p class="codepen" data-height="265" data-theme-id="dark" data-default-tab="html,result" data-user="hyunjung21ef" data-slug-hash="LYWVOBM" style="height: 265px; box-sizing: border-box; display: flex; align-items: center; justify-content: center; border: 2px solid; margin: 1em 0; padding: 1em;" data-pen-title="생활코딩 12강">
  <span>See the Pen <a href="https://codepen.io/hyunjung21ef/pen/LYWVOBM">
  생활코딩 12강</a> by hyunjungim (<a href="https://codepen.io/hyunjung21ef">@hyunjung21ef</a>)
  on <a href="https://codepen.io">CodePen</a>.</span>
</p>
<script async src="https://cpwebassets.codepen.io/assets/embed/ei.js"></script>

<br>
<br>

------

<br>
<br>

# WEB2 JavaScript - 13.프로그램,프로그래밍,프로그래머

|[![생활코딩-자바스크립트](http://img.youtube.com/vi/p71PrgY0bbM/0.jpg)](https://www.youtube.com/watch?v=p71PrgY0bbM)|
|:---:|
|WEB2 JavaScript - 13.프로그램,프로그래밍,프로그래머|

|    |HTML|JAVASCRIPT|
|:--:|:--:|:--:|
|컴퓨터언어| O | O |
|프로그래밍언어| X | O |


- PROGRAM
- PROGRAMMING
- PROGRAMMER

<br>
<br>

------

<br>
<br>

# WEB2 JavaScript - 15. 비교 연산자와 블리언

|[![생활코딩-자바스크립트](http://img.youtube.com/vi/A2qp-jpk_XA/0.jpg)](https://www.youtube.com/watch?v=A2qp-jpk_XA)|
|:---:|
|WEB2 JavaScript - 15. 비교 연산자와 블리언|

<span style = "color:red"> 하나의 프로그램이 하나의 흐름으로 가는 것이 아니라 조건에 따라 다르게 실행된다.
 </span>

---
<p class="codepen" data-height="265" data-theme-id="dark" data-default-tab="html,result" data-user="hyunjung21ef" data-slug-hash="yLMNPZz" style="height: 265px; box-sizing: border-box; display: flex; align-items: center; justify-content: center; border: 2px solid; margin: 1em 0; padding: 1em;" data-pen-title="생활코딩 15강">
  <span>See the Pen <a href="https://codepen.io/hyunjung21ef/pen/yLMNPZz">
  생활코딩 15강</a> by hyunjungim (<a href="https://codepen.io/hyunjung21ef">@hyunjung21ef</a>)
  on <a href="https://codepen.io">CodePen</a>.</span>
</p>
<script async src="https://cpwebassets.codepen.io/assets/embed/ei.js"></script>


-> 여기서 ===란
: 비교연산자, 이항연산자
좌항과 우항을 결합해서 어떤 데이터를 만든다. <br/>
__좌항과 우항을 비교하여 True, False 이 둘 중 하나의 값을
만들어내는 연산자이다.__<br/>
True와 False라는 두가지 값을 묶어서 __Boolean__이라고 말한다.
<br/>
<br/>

__Boolean__ 은 java script의 6가지 데이터 타입 중 하나
데이터 타입
- __Boolean__ : True, False 두가지 밖에 없다
- Null
- Undefined
- __Number__ : 무수히 많다
- __String__ : 무수히 많다
- Symbol (ECMAScript 6에 추가됨)



```html
<h3>1&lt2</h3>
-> 1<2라고 표현하고 싶으면 &lessthan이라는 뜻으로 &lt;을 쓰면 된다.
html에서 꺽새를 인식하기 때문에 바꿔주는 것.
-> 반대로는 &gt;
<script>
  document.write(1<2)
</script>
-> 하게 되면 결과값 true가 나옴
```

<br>
<br>

------

<br>
<br>

# WEB2 JavaScript - 17.조건문의 활용

|[![생활코딩-자바스크립트](http://img.youtube.com/vi/Gt2iGEEKXww/0.jpg)](https://www.youtube.com/watch?v=Gt2iGEEKXww)|
|:---:|
|WEB2 JavaScript - 17.조건문의 활용|




boolean을 어디서 쓸까?

if 뒤에는 boolean 데이터 타입이 온다.

<p class="codepen" data-height="265" data-theme-id="dark" data-default-tab="html,result" data-user="hyunjung21ef" data-slug-hash="MWpwOxO" style="height: 265px; box-sizing: border-box; display: flex; align-items: center; justify-content: center; border: 2px solid; margin: 1em 0; padding: 1em;" data-pen-title="생활코딩 17강">
  <span>See the Pen <a href="https://codepen.io/hyunjung21ef/pen/MWpwOxO">
  생활코딩 17강</a> by hyunjungim (<a href="https://codepen.io/hyunjung21ef">@hyunjung21ef</a>)
  on <a href="https://codepen.io">CodePen</a>.</span>
</p>
<script async src="https://cpwebassets.codepen.io/assets/embed/ei.js"></script>


> night , day 버튼이 두 개 있는 걸
하나로 바꿀 수 있다.
input에 id값을 "night_day"로 주고 if와 else를 사용하여 value 값으로 조건문을 만들었다.

<br>
<br>

------

<br>
<br>

# WEB2 JavaScript - 18.리팩토링 중복의 제거


|[![생활코딩-자바스크립트](http://img.youtube.com/vi/vwRkFRke7ls/0.jpg)](https://www.youtube.com/watch?v=vwRkFRke7ls)|
|:---:|
|WEB2 JavaScript - 18.리팩토링 중복의 제거|

### 리팩토링이란?<br/>
우리가 코딩을 하고나면 코드가 비효율적인 면이 생기기 마련<br/>
코드 자체를 효율적이게 만들어서 유지보수하는 것.

<details>
  <summary style="font-weight:bold; color:darkblue;"> 코드 펼치기(CLICK!)</summary>

  <div markdown="1">

  ```html
    <input id="night_day" type="button" value="night" onclick="
    if (document.querySelector('#night_day').value === 'night'){
      document.querySelector('body').style.background = 'black';
      document.querySelector('body').style.color = 'white';
      document.querySelector('#night_day').value = 'day';
    } else {
      document.querySelector('body').style.background = 'white';
      document.querySelector('body').style.color = 'black';
      document.querySelector('#night_day').value = 'night';
    }
    ">
    이 부분을 복사하여 페이지 맨 밑에도 놔두고 싶다면
    <input id="night_day2" type="button" value="night" onclick="
    if (document.querySelector('#night_day2').value === 'night'){
      document.querySelector('body').style.background = 'black';
      document.querySelector('body').style.color = 'white';
      document.querySelector('#night_day2').value = 'day';
    } else {
      document.querySelector('body').style.background = 'white';
      document.querySelector('body').style.color = 'black';
      document.querySelector('#night_day2').value = 'night';
    }
    ">
    id값을 위와 다르게 주어야한다.
    만약 10개를 복사해야한다면 id값을 10번이나 다르게 주어야할 것이다.

    그래서.
    <input type="button" value="night" onclick="
    if (this.value === 'night'){
      document.querySelector('body').style.background = 'black';
      document.querySelector('body').style.color = 'white';
      this.value = 'day';
    } else {
      document.querySelector('body').style.background = 'white';
      document.querySelector('body').style.color = 'black';
      this.value = 'night';
    }
    ">
    document.querySelector('#night_day2') 를 this로 바꿔주고
    input의 id값을 없애주면 된다
  ```
  </div>
</details>

<br>
코딩 잘하는 법 : 중복을 끝까지 따라가서 제거하라!!

```html
<input id="night_day" type="button" value="night" onclick="
if (document.querySelector('#night_day').value === 'night'){
  document.querySelector('body').style.background = 'black';
  document.querySelector('body').style.color = 'white';
  document.querySelector('#night_day').value = 'day';
} else {
  document.querySelector('body').style.background = 'white';
  document.querySelector('body').style.color = 'black';
  document.querySelector('#night_day').value = 'night';
}
">

<!-- 저 위 document.querySelector('body') 부분도 4번 중복된다.
그렇다면
if 밑에다가 이렇게 써보자
var target = document.querySelector('body');  -->

<input type="button" value="night" onclick="
var target = document.querySelector('body');
if (this.value === 'night'){
  target.style.background = 'black';
  target.style.color = 'white';
  this.value = 'day';
} else {
  target.style.background = 'white';
  target.style.color = 'black';
  this.value = 'night';
}
">
```
<br>
<br>

------

<br>
<br>

# WEB2 JavaScript - 20.배열

|[![생활코딩-자바스크립트](http://img.youtube.com/vi/aBJzzhQ6y-o/0.jpg)](https://www.youtube.com/watch?v=aBJzzhQ6y-o)|
|:---:|
|WEB2 JavaScript - 20.배열|

### Syntax란?
1. 언어- 구문론, 통사론
2. (컴퓨터 언어의) 문법을 뜻한다.

자바스크립트에서 배열은
__[__ 로 시작해서 __]__ 로 끝난다. (대가로)

<https://developer.mozilla.org/ko/docs/Web/JavaScript/Reference/Global_Objects/Array>
array의 유형은 굉장히 많다.

```html
<body>
  <h1>Array</h1>
  <h2>Syntax</h2>
  <script>
    var friends = ["A", "B"];
    // // friends 라는 변수에
    // A, B배열이라는 새로운 데이터타입이 담겼다.
    // // 데이터타입에 freinds라는 이름을 붙인 것이라고도
    // 할 수 있겠다.
    document.write(friends.length);
    // 변수 개수가 A,B 두개니까 결과 : 2
    friends.push('C');
    // push : 변수를 추가하는 것.
    document.write(friends.length);
    // 결과 : 3
  </script>
  <h2>get</h2>
  <script>
    document.write(friends[0]);
    // friends에 첫번째가 무엇이냐. 첫번째 = 0번째
    // 결과 : A
    document.write(friends[1]);
    // 결과 : B
  </script>
```
<br>
<br>

------

<br>
<br>

# WEB2 JavaScript - 21.반복문

|[![생활코딩-자바스크립트](http://img.youtube.com/vi/ZupPmuWPSdE/0.jpg)](https://www.youtube.com/watch?v=ZupPmuWPSdE)|
|:---:|
|WEB2 JavaScript - 21.반복문|

```html
<body>
  <h1>Loop</h1>
  <ul>
  <script>
// 1.
    document.write('<li>1</li>');
    document.write('<li>2</li>');
    document.write('<li>3</li>');
    document.write('<li>4</li>');
    // 2, 3을 반복해보자
// 2.
    document.write('<li>1</li>');
    while(true){
    // while:반복문의 기본 저 가로사이에는 true or false
    // while이 true인 동안에는 while이 계속 반복적으로 실행된다.
    //  언제까지? while이 false가 될 때 까지.

    // 반복문에는 이 반복문을 언제 종료할 것인가가 필요하다.
    document.write('<li>2</li>');
    document.write('<li>3</li>');
    }
    document.write('<li>4</li>');
// 3.
//  반복문 종료를 위해서 변수를 추가한다.

    document.write('<li>1</li>');
    var i = 0 ;
    // 습관적으로 i 라는 것에 이런 역할을 시킨다
    while(i < 2 ){
      document.write('<li>2</li>');
      document.write('<li>3</li>');
      i = i + 1 ;
    // 변수를 이용하여 반복문의 종료를 부르자.
    // 2, 3번의 반복이 3번 반복되면 i 의 값이 2가 될것이다.
    //  while가로 안에 i < 3을 써주자.
    }
    document.write('<li>4</li>');
  </script>
  </ul>
</body>
```

<br>
<br>

------

<br>
<br>

# WEB2 JavaScript - 22.배열과 반복문

|[![생활코딩-자바스크립트](http://img.youtube.com/vi/BjkfkKdlvLo/0.jpg)](https://www.youtube.com/watch?v=BjkfkKdlvLo)|
|:---:|
|WEB2 JavaScript - 22.배열과 반복문|

## <span style="color:red"> 중요 </span>
배열과 변수를 사용하여 변수안의 값을 리스트화 시키기


``` html

  <body>
    <h1>Loop & Array</h1>
    <h2>Co workers</h2>
    <ul>
      <li>A</li>
      <li>B</li>
      <li>C</li>
      <li>D</li>
    </ul>

    A,B,C,D가 아주 여러개라면 리스트화 시키기가 힘들 것이다.
    서로 연관된 데이터들을 담는 방법 : 배열
    배열에 담겨있는 데이터를 순차적으로 꺼내는 방법 : 반복

    <h1>Loop & Array</h1>
    <script>
      var coworkers = ['A','B','C','D']
      // A,B,C,D를 배열에 넣는다.  
      //  배열에서 각각의 항목들을 원소 : element
    </script>
    <h2>Co workers</h2>
    <ul>
      <script>
        var i = 0;
        while(i < 4){
          document.write('<li>'+coworkers[i]+'</li>');
          i = i + 1;
        }
      // document.write가 4번 실행되도록 앞 강의처럼 i 를 사용했다.
      // 위 coworkers의 배열에 A,B,C,D도 순서를 가진다. : element값.
      //  그 순서를 반복되는 반복문에서 i의 값을 사용할 수 있을 것이다.
      //  i의 값은 반복이 될 때 마다 1씩 늘어날 것이기에.
      // 하지만 여기서 문제가 하나 있다.
      //   만약 coworkers의 element가 늘어나거나 적어진다면
      //   밑에 while 가로 안 부등호 옆 숫자를 바꿔주어야 할 것이다.
      //   숫자를 안 바꾸고 element 개수를 적을 수 없을까?
      //   -> while(i < coworkers.length) 로 바꿔주면 된다!   
      </script>
    </ul>
  </body>
```


<br>
<br>

------

<br>
<br>

# WEB2 JavaScript - 23.배열과 반복문의 활용

|[![생활코딩-자바스크립트](http://img.youtube.com/vi/hZdBDoYHd7E/0.jpg)](https://www.youtube.com/watch?v=hZdBDoYHd7E)|
|:---:|
|WEB2 JavaScript - 23.배열과 반복문의 활용|

---

앞서 했던 night, day 버튼으로 배경색을 바꿨을 때 하이퍼링크 색깔이 파랑색이라 잘 안보였다.
night일 때 하이퍼링크 색을 더 밝혀보자 <br>

저 코드를 웹상에서 키고 - 페이지검 - console창을 키자

```javascript

<console 창에서 쓴 걸 복사해온 것>

document.querySelector('a')
// 우리가 바꿔야할 부분이 하이퍼링크이기 때문에 a 부분을 찾아야한다.
// querySelector를 이용해서 한번 찾아보자.
결과 : <a href=​"index.html">​WEB​</a>​
// 하이퍼링크가 총 ' 4 '개인데 하나밖에 나오지않는다.
// 알아보니 querySelector는 ' a '에 해당하는 태그 첫 번째 것만 가져오는 특성이 있다고 한다.
// 이 주문으로는 안될 것 같다.
//구글에 javascript get element by css selector multiple 검색하면
// querySelectorAll 이라는 게 나온다. 한번 해보자

document.querySelectorAll('a')
결과 : NodeList(4) [a, a, a, a]
//[] 대 가로는 ' 배열 '이라는 말. 저 결과가 queryselectorall의 정확한 배열은 아니고 노드리스트를 출력하는 것이긴 하지만 배열이라고 생각하자.
// 총 4개로 잘 나오는 걸 보니 이 주문을 쓰면 될 것 같다.
var alist = document.querySelectorAll('a')
// shift + enter를 누르면 출력되지 않고 줄바꿈이 된다.
console.log(alist[0]); //console.log는 가로안에 있는 걸 출력하라는 말. 즉 alist 첫번째 부분을 출력하라는 말이다.
결과 : <a href=​"index.html">​WEB​</a>​
console.log(alist.length)
결과 : 4
// 배열답게 length로 개수도 출력된다.
var alist = document.querySelectorAll('a');
var i = 0;
while (i < alist.length) {
   console.log(alist[i]);
   alist[i].style.color = 'powderblue';
   i = i + 1;
}
결과
VM7490:4 <a href=​"index.html">​WEB​</a>​
VM7490:4 <a href=​"1.html">​HTML​</a>​
VM7490:4 <a href=​"2.html">​CSS​</a>​
VM7490:4 <a href=​"3.html">​JavaScript​</a>​
4

이 부분을 이용하여 html if 부분에 넣어서
색을 바꾸면 될 것 같다.
```

---

<p class="codepen" data-height="265" data-theme-id="dark" data-default-tab="html,result" data-user="hyunjung21ef" data-slug-hash="BaWNmez" style="height: 265px; box-sizing: border-box; display: flex; align-items: center; justify-content: center; border: 2px solid; margin: 1em 0; padding: 1em;" data-pen-title="생활코딩 23강 ">
  <span>See the Pen <a href="https://codepen.io/hyunjung21ef/pen/BaWNmez">
  생활코딩 23강 </a> by hyunjungim (<a href="https://codepen.io/hyunjung21ef">@hyunjung21ef</a>)
  on <a href="https://codepen.io">CodePen</a>.</span>
</p>
<script async src="https://cpwebassets.codepen.io/assets/embed/ei.js"></script>


> 처음엔 저 var alist 를 이용해서
그냥 alist.style.color라고 하면 되지않나? 라고 생각했는데
결국엔 alist의 자리 순서값이 필요하다는 걸 깨달음.

<br>
<br>

------

<br>
<br>

# WEB2 JavaScript - 25.함수

|[![생활코딩-자바스크립트](http://img.youtube.com/vi/IOuePUzLdnQ/0.jpg)](https://www.youtube.com/watch?v=IOuePUzLdnQ)|
|:---:|
|WEB2 JavaScript - 25.함수|

## 함수
- 영어로 : function
- 객체를 배우면 : method라고 부르는 경우도 있다. <br>

연속적인 부분을 반복시키려면 __반복문__ 을 쓰면 된다.
<span style="color:red">하지만</span> 반복시키려는 부분이 <u>연속적이지 않다면</u>? <br>
: <u>함수</u>를 사용하자.

<p class="codepen" data-height="265" data-theme-id="dark" data-default-tab="html,result" data-user="hyunjung21ef" data-slug-hash="ExWjOzp" style="height: 265px; box-sizing: border-box; display: flex; align-items: center; justify-content: center; border: 2px solid; margin: 1em 0; padding: 1em;" data-pen-title="생활코딩 25강">
  <span>See the Pen <a href="https://codepen.io/hyunjung21ef/pen/ExWjOzp">
  생활코딩 25강</a> by hyunjungim (<a href="https://codepen.io/hyunjung21ef">@hyunjung21ef</a>)
  on <a href="https://codepen.io">CodePen</a>.</span>
</p>
<script async src="https://cpwebassets.codepen.io/assets/embed/ei.js"></script>

<br>
<br>

------

<br>
<br>

# WEB2 JavaScript - 26.함수 : 매개변수와 인자

|[![생활코딩-자바스크립트](http://img.youtube.com/vi/MXf9UqMXuGM/0.jpg)](https://www.youtube.com/watch?v=MXf9UqMXuGM)|
|:---:|
|WEB2 JavaScript - 26.함수 : 매개변수와 인자|

함수는 __입력__ 과 __출력__ 으로 이뤄져있다. <br>
입력
- parameter : 매개변수
- argument : 인자

출력
- return <br>

---

```html
<h2>Parameter & Argument</h2>
<script>
  function onePlusOne(){
    document.write(1+1+'<br>');
  }
  onePlusOne();
  function sum(left, right){
    document.write(left+right+'<br>');
  }
  sum(2,3); //5
  sum(3,4); //7
// sum 옆 함수로 전달하는 2,3이라는 값을 : argument :인자
// function sum 옆 left, right 즉 위 2, 3 이라는 값을 받아서
//  함수 안으로 매개해주는 변수들을 : parameter : 매개변수 라고 한다.

</script>
```

<br>
<br>

------

<br>
<br>

# WEB2 JavaScript - 27.함수 (리턴)

|[![생활코딩-자바스크립트](http://img.youtube.com/vi/6MzCHO8M3Uc/0.jpg)](https://www.youtube.com/watch?v=6MzCHO8M3Uc)|
|:---:|
|WEB2 JavaScript - 27.함수 (리턴)|

<br>
<br>

### 표현식 : expression이 무엇인가?<br>
1+1 <br>
: 2 <br>
-> 1+1은 2에 대한 __표현식__ 이다.

```html
<h2>Return</h2>
<script>
  function sum2(left, right){
    return left+right;
  }
  document.write(sum2(2,3)+'<br>'); //이게 숫자 5에 대한 표현식이 되게 하고싶다.
  document.write('<div style="color:red">'+sum2(2,3)+'</div>');
  document.write('<div style="font-size:3rem;">'+sum2(2,3)+'</div>');


---------------------------------------------------------------------
  function sum(left, right){
    document.write(left+right);
  }
  이란 함수가 만들어져 있다고 한다면 sum이란 함수는
  'left값과 right를 더한 값을 출력'하는 기능을 가진 함수입니다.
  따라서 sum()함수를 호출하면 5가 출력되지만,
  sum()이란 함수 자체가 5란 값을 가지고 있는 것은 아닙니다.
  그래서 sum()을 이용한 연산, 예를들어 sum(3,4)+6 이란 연산을 수행한다면
  7+6의 연산결과가 나오는게 아니라 7과 에러코드 하나가 발생합니다.
  sum()이란 함수를 이용하여 연산을 하고 싶을 경우에는
  sum()함수 안에 return값을 부여해 주어야 합니다.
</script>
```

<br>
<br>

------

<br>
<br>

# WEB2 JavaScript - 29.객체 예고

|[![생활코딩-자바스크립트](http://img.youtube.com/vi/6lJEbSYA4B4/0.jpg)](https://www.youtube.com/watch?v=6lJEbSYA4B4)|
|:---:|
|WEB2 JavaScript - 29.객체 예고|

객체 : object <br>
함수라는 것 위에서 객체라는 것이 존재하는 것

<details>
  <summary style="font-weight:bold; color:darkblue;"> 23강 코드 자료 보기</summary>

  <div markdown="1">

```html
</head>
<body>
  <h1><a href="index.html">WEB</a></h1>
    <input id="night_day" type="button" value="night" onclick="
      var target = document.querySelector('body');
      if(this.value === 'night'){
        target.style.backgroundColor = 'black';
        target.style.color = 'white';
        this.value = 'day';

        var alist = document.querySelectorAll('a');
        var i = 0;
        while(i < alist.length){
          alist[i].style.color = 'powderblue';
          i = i + 1;
        }
      } else {
        target.style.backgroundColor = 'white';
        target.style.color = 'black';
        this.value = 'night';

        var alist = document.querySelectorAll('a');
        var i = 0;
        while(i < alist.length){
          alist[i].style.color = 'blue';
          i = i + 1;
        }
      }
    ">
    <ol>
      <li><a href="1.html">HTML</a></li>
      <li><a href="2.html">CSS</a></li>
      <li><a href="3.html">JavaScript</a></li>
    </ol>
    <h2>JavaScript</h2>
    <p>
      JavaScript (/ˈdʒɑːvəˌskrɪpt/[6]), often abbreviated as JS, is a high-level, dynamic, weakly typed, prototype-based, multi-paradigm, and interpreted programming language.
    </p>
</body>
</html>

```
  </div>
</details>

## 함수를 이용해서 코드가 중복되지 않도록 정리해보자.

### 1. 위 코드에 중복된 코드를 고쳐보자. <br>

  1. input 밑 부분을 잘라내서 `head`안에 <br>`script - function nightDayHandler(){}` 을 만들고 이 밑에 넣어보자.


  2. `nightDayHandler();`를 `body`부분 `onclick` 안에 넣어주자.


<details>
  <summary style="font-weight:bold; color:darkblue;">code보기</summary>

  <div markdown="1">

```html
  <head>
    <meta charset="utf-8">
    <title></title>
    <script>
    function nightDayHandler(){
      var target = document.querySelector('body');
      if(this.value === 'night'){
        target.style.backgroundColor = 'black';
        target.style.color = 'white';
        this.value = 'day';

        var alist = document.querySelectorAll('a');
        var i = 0;
        while(i < alist.length){
          alist[i].style.color = 'powderblue';
          i = i + 1;
        }
      } else {
        target.style.backgroundColor = 'white';
        target.style.color = 'black';
        this.value = 'night';

        var alist = document.querySelectorAll('a');
        var i = 0;
        while(i < alist.length){
          alist[i].style.color = 'blue';
          i = i + 1;
        }
      }
    }
    </script>

  </head>


  <body>
    <h1><a href="index.html">WEB</a></h1>
      <input id="night_day" type="button" value="night" onclick="
        nightDayHandler();
      ">
nightDayHandler를 저 onclick안에 넣어주자

```
  </div>
</details>

사이트를 실행시키면 night를 눌러도 버튼이 day로 변하지 않음 <br>

__why?__<br>

: 원래 `onclick` 안에서 있던 부분의 `this` 는 `onclick`이 속해있는 태그를 가리키는 것인데 `head` 안으로 독립을 시켜버렸기 때문에 `this` 의 연결이 깨진 것. <br>

수정하기 위해서<br>
`onclick` 안의 `nightDayHandler`의 가로안에 `(this)`라고 넣어주고, `head` 안의 `function nightDayHandler`의 가로안에는 `(self)` 라고 넣어주자. 그리고 `if` 밑의 `this`라고 되어있는 부분들을 모두 `self`로 바꿔주자.<br>
-> 잘 동작하게 된다. <br>

### 2. 이제 하이퍼링크 색상을 고친 부분이 또 중복되기 때문에 그 부분을 고쳐보자.

1. `head` 부분 `script` 에 함수를 하나 더 만든다.
  - `function LinkssetColor(color){}`
2. 그 부분에 `body` 부분에 하이퍼링크 글씨색 변경부분을 가져온다.

```
function LinkssetColor(color){
  var alist = document.querySelectorAll('a');
  var i = 0;
  while(i < alist.length){
    alist[i].style.color = color;
    i = i + 1;
  }
}
```

<details>
  <summary style="font-weight:bold; color:darkblue;">code보기</summary>

  <div markdown="1">


```html
<head>
  <meta charset="utf-8">
  <title></title>
  <script>
  function LinkssetColor(color){
    var alist = document.querySelectorAll('a');
    var i = 0;
    while(i < alist.length){
      alist[i].style.color = color;
      i = i + 1;
    }
  }
// function setColor(color)를 만들고
  // 밑에 회색처리된 부분을 가져온다.
    // 'powderblue'라고 적힌 부분을 color로 바꾼다.
  function nightDayHandler(self){
    var target = document.querySelector('body');
    if(self.value === 'night'){
      target.style.backgroundColor = 'black';
      target.style.color = 'white';
      self.value = 'day'
      LinkssetColor('powderblue');
      // 만든 함수 setColor()를 가져오고 가로에 원하는
      // 색을 적는다.
    } else {
      target.style.backgroundColor = 'white';
      target.style.color = 'black';
      self.value = 'night';
      // var alist = document.querySelectorAll('a');
      // var i = 0;
      // while(i < alist.length){
      //   alist[i].style.color = 'blue';
      //   i = i + 1;
      // }
      LinkssetColor('blue');
      // 만든 함수 setColor()를 가져오고 가로에 원하는
      // 색을 적는다.
      }
    }

  </script>

</head>

```

  </div>
</details>

### 3. 본문의 글자색을 바꾼 부분도 함수로 묶어보자.

`function BodysetColor(color)`를 새로 만들고 안에
`target.style.color = color;` 를 넣자.  
넣고 밑에 if 안 `target.style.color = 'white'` 를 지우고
`BodysetColor('white')` 로 바꾸자. <br>
-> 그럼 작동이 되지 않는다  

__why?__<br>
`target` 자체가 `function BodysetColor(color)` 밑에 있는 함수안의 변수에 설정되어 있기 때문이다. 그렇게 때문에 밑에 `var target = document.querySelector('body');` 이렇게 되어 있는 부분인 target 부분 즉 `document.querySelector('body')`을 `target` 대신에 써주자.

```
function BodysetColor(color){
  document.querySelector('body').style.color = color;
}
function nightDayHandler(self){
  var target = document.querySelector('body');
  if(self.value === 'night'){
    target.style.backgroundColor = 'black';
    BodysetColor('white');
    self.value = 'day'
    LinkssetColor('powderblue');
```

### 4. 본문의 배경색도 함수로 묶어보자
3번과 같은 방법으로 묶어주었다.  
서로 연관된 함수와 서로 연관된 변수들을 그루핑해서 정리정돈하는 수납상자로써 __객체__ 라는 것이 존재한다.


<br>
<br>

------

<br>
<br>

# WEB2 JavaScript - 30.객체 쓰기와 읽기

|[![생활코딩-자바스크립트](http://img.youtube.com/vi/2j04s1erzTs/0.jpg)](https://www.youtube.com/watch?v=2j04s1erzTs)|
|:---:|
|WEB2 JavaScript - 30.객체 쓰기와 읽기|

<br>

배열 : 문서에 따라 정보를 정리정돈한다  
정보를 담는 그릇 이면서 정보가 순서대로 저장된다는 특징

순서없이 저장되는 게 있지않을까? <br>
-> __객체__

`var cowerkers = {}`
  cowerkers라는 객체를 만든다는 말

> 객체는 { }<br>
> 배열은 [ ]

```html
<script>
  var coworkers = {
    "programmer":"A",
    "designer":"B"
  };
  document.write("programmer : "+coworkers.programmer+"<br>");
  document.write("designer : "+coworkers.designer+"<br>");
  coworkers.bookkeeper = "C"; //C라는 북키퍼를 추가하겠다.
  document.write("bookkeeper : "+coworkers.bookkeeper+"<br>");
  coworkers["data scientist"] = "D"; //이름에는 공백을 넣을 수 없다.
  //[ ] 대가로를 점 빼고 쓴다.
  document.write("data scientist : "+coworkers["data scientist"]+"<br>");
</script>
```

<br>
<br>

------

<br>
<br>

# WEB2 JavaScript - 31.객체와 반복문

|[![생활코딩-자바스크립트](http://img.youtube.com/vi/GIB8O6R3wko/0.jpg)](https://www.youtube.com/watch?v=GIB8O6R3wko)|
|:---:|
|WEB2 JavaScript - 31.객체와 반복문|

구글에 javascript object iterate 검색<br>
for in 으로 객체의 데이터를 가져올 수 있다.

```html
<h2>Iterate</h2>
<script>
  for(var key in coworkers) {
    document.write(key+'<br>');
  }
  // coworkers안의 key값들을 가져오는 반복문
  // key값 : 저 위에 programmer, designer 이것들.
  // 배열에서는 순서대로 정돈되어 있기 때문에 index라는 표현을 쓴다.
  for(var key in coworkers) {
    document.write(key+ ' : ' +coworkers[key]+'<br>');
  }
</script>
```


<br>
<br>

------

<br>
<br>

# WEB2 JavaScript - 32.객체프로퍼티와 메소드

|[![생활코딩-자바스크립트](http://img.youtube.com/vi/mjzx1qbyPwU/0.jpg)](https://www.youtube.com/watch?v=mjzx1qbyPwU)|
|:---:|
|WEB2 JavaScript - 32.객체프로퍼티와 메소드|


객체에는 데이터를 담을 수 있다.<br>
배열, 숫자.. 등등<br>
함수도 담을 수 있다.<br><br>

객체에 소속된 함수<br>
-> method <br>
객체에 소속된 변수<br>
-> property <br>

```html
<h2>Property & Method</h2>
<script>
  coworkers.showAll = function(){
    for(var key in coworkers) {
      document.write(key+ ' : ' +coworkers[key]+'<br>');
    }
    // 이렇게 하면 coworkers라는 객체의 이름이 변했을 경우 다시 입력해주어야 하거나
    // 다른 상황이 생길 수 있기 때문에 저 함수가 소속되어있는 객체를 가리키는
    // 약속된 기호가 있다 : this
    for(var key in this) {
      document.write(key+ ' : ' +this[key]+'<br>');
    }
    // 위와 똑같이 나오게된다.
    // coworkers라는 이름이 바껴도 this는 영향을 받지 않는다.

  }
  coworkers.showAll();
  // function showAll(){} 과 똑같은 표현
  // var showAll = function(){} 과도 똑같은 표현

</script>
```

<br>
<br>

------

<br>
<br>
# WEB2 JavaScript - 33.객체의 활용

|[![생활코딩-자바스크립트](http://img.youtube.com/vi/JNaX6EG9-FI/0.jpg)](https://www.youtube.com/watch?v=JNaX6EG9-FI)|
|:---:|
|WEB2 JavaScript - 33.객체의 활용|

<br>
<p class="codepen" data-height="265" data-theme-id="dark" data-default-tab="html,result" data-user="hyunjung21ef" data-slug-hash="YzZyXrx" style="height: 265px; box-sizing: border-box; display: flex; align-items: center; justify-content: center; border: 2px solid; margin: 1em 0; padding: 1em;" data-pen-title="생활코딩 29강">
  <span>See the Pen <a href="https://codepen.io/hyunjung21ef/pen/YzZyXrx">
  생활코딩 29강</a> by hyunjungim (<a href="https://codepen.io/hyunjung21ef">@hyunjung21ef</a>)
  on <a href="https://codepen.io">CodePen</a>.</span>
</p>
<script async src="https://cpwebassets.codepen.io/assets/embed/ei.js"></script>


29강에서는 함수를 사용하여 중복된 부분을 정리해보았다. <br>
이번 시간에는 객체를 사용하여 정리해보자. <br>

- BodysetBackgroundColor
- BodysetColor <br>
처럼 앞에 body를 달아서 정리해줬었는데 body를 객체로 만들어서 정리해보자.

```html
<script>
function BodysetColor(color){
  document.querySelector('body').style.color = color;
}
function BodysetBackgroundColor(color){
  document.querySelector('body').style.backgroundColor = color;
}
```
이 부분을

```html
<script>
var Body = {
  setColor:function (color){
    document.querySelector('body').style.color = color;
  },
  setBackgroundColor:function (color){
    document.querySelector('body').style.backgroundColor = color;
  }
}
```

이렇게 var를 이용하여 Body를 객체로 만들어줬다.

<br>
최종 결과

---
<p class="codepen" data-height="265" data-theme-id="dark" data-default-tab="html,result" data-user="hyunjung21ef" data-slug-hash="YzZyXJY" style="height: 265px; box-sizing: border-box; display: flex; align-items: center; justify-content: center; border: 2px solid; margin: 1em 0; padding: 1em;" data-pen-title="생활코딩 33강">
  <span>See the Pen <a href="https://codepen.io/hyunjung21ef/pen/YzZyXJY">
  생활코딩 33강</a> by hyunjungim (<a href="https://codepen.io/hyunjung21ef">@hyunjung21ef</a>)
  on <a href="https://codepen.io">CodePen</a>.</span>
</p>
<script async src="https://cpwebassets.codepen.io/assets/embed/ei.js"></script>
