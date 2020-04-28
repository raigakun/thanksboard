# はじめに
コロナウィルスと闘う医療従事者の方へ、自分達なりの感謝を表現したいと思い、本サイトを開発致しました。
お手数ですが、ご覧頂けますと幸いです。

# Thanks Board ~ 新型コロナと闘う全ての人へ ~

### :blush: 概要
- 医療従事者への感謝サイト
  - YOUTUBE掲載（コロナウィルス予防動画、医療従事者への感謝動画）
  - 医療従事者の方への感謝メッセージと感謝メッセージ数を表示

### :blush: 本番環境
- デプロイ方法：AWS
- [ご覧頂けますと幸いです！](http://18.177.93.163/)

### :blush: 開発背景
- 自分達ができることを、形にしたいという気持ちを持つ有志にて、開発スタートしました。

### :blush: 機能紹介
- 管理人機能 : 管理人のみ感謝メッセージとトピックを追加できる。
- 感謝メッセージ機能 ： 感謝メッセージに対して、「共感」・「応援」したい方は、アイコンPUSHが可能。PUSH回数が表示される。
- トピック機能 : 管理人によるトピックの新規作成、編集、削除、MarkDown記法が可能。ユーザーは閲覧のみ可能。
- 自治体HP、Twitterへのアクセスができる。
- 開発者の紹介ページ

### :blush: 工夫した所
- 緊急事態宣言下ですので、各自リモート、Gitを使った開発を行いました。
- スプリントレビューは週1回行いました。（火曜日の15時〜、計3回）
- レスポンシブデザインによるUI性の向上を意識しました。
- ユーザー登録など不要であり、どなたでも応援しやすいようにしました。（ボタンPUSHのみ）
- また、コロナ関係の情報を発信できる役割を持つ為、infomationの項目やTopicの項目を作成しました。

### :blush: DEMO
##### オープニング
![op](https://user-images.githubusercontent.com/60562723/80460871-62316180-896f-11ea-84ad-7c7c394603f6.gif)
![top1](https://user-images.githubusercontent.com/60562723/80461196-dff56d00-896f-11ea-965a-4daa1cb46492.gif)

##### トップページ
![top2](https://user-images.githubusercontent.com/60562723/80461357-20ed8180-8970-11ea-8503-5a6135a65e16.gif)

##### Youtube
![youtube](https://user-images.githubusercontent.com/60562723/80461729-ac671280-8970-11ea-9247-06fa573a586a.gif)

##### 感謝メッセージのPUSH(カウント)
![thxmessage](https://user-images.githubusercontent.com/60562723/80461898-ef28ea80-8970-11ea-8b25-ae923271e5d4.gif)

##### トピック
![topic](https://user-images.githubusercontent.com/60562723/80462151-4202a200-8971-11ea-958a-90e341aae76c.gif)

##### 開発者紹介
![producers](https://user-images.githubusercontent.com/60562723/80462389-9574f000-8971-11ea-8ea4-656ad3184623.gif)

##### 管理者ログイン
![login](https://user-images.githubusercontent.com/60562723/80462517-cce39c80-8971-11ea-97c7-bc08454b46a1.gif)



### :blush: 開発環境等
##### 言語、フレームワーク 
 - ruby 2.6.3	
 - Rails 5.2.4.2	 
 - jQuery	
 - JavaScript
 - HTML
 - sass
 ##### Gem（抜粋）
 - devise	
 - bootstrap	
 - jquery-rails	
 - jquery-ui-rails
 - font-awesome-sass
 - haml-rails
 - kaminari
 - rails-i18n	
 - pry-rails	
 - redcarpet
 - capistrano
 - unicorn

### :blush: 担当
- 中嶋 翔太 : マークアップ全て(レスポンシブデザイン含)
- 皆吉 正和 : TOPIC機能、youtube掲載
- 吉田 匡 :  管理者機能、感謝メッセージ機能、デプロイ

### :blush: DB設計
<img width="951" alt="ERDofthx" src="https://user-images.githubusercontent.com/60562723/80460645-18e11200-896f-11ea-8150-f44049802072.png">


### さいごに
ご覧頂きありがとうございました。
気持ちを込めて、これからも開発したいと思います。
