# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...


repository check


repository check2


pullrequest check


check

# 吉田メモ
テーブル 2つ
activehash 1つ
・messageテーブル
・likeテーブル

## messagesテーブル
|Column|Type|Options|
|------|----|-------|
|thx_id|integer|null: false, foreign_key: true|
### Association
- has_many  : likes
- belongs_to :active_hash :thx


## thx(active_hash)モデル
|Column|Type|Options|
|------|----|-------|
|thx|string|null: false|
### Association
- has_many :messages


## likesテーブル
|Column|Type|Options|
|------|----|-------|
|message_id|references|null: false,foreign_key: true|
### Association
- belongs_to :message
