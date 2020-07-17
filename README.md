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

# furima_27497 DB設計
## usersテーブル
|Column|Type|Options|
|------|----|-------|
|email|string|null: false|
|password|string|null: false|
|ensure-password|string|null: false|
|nickname|string|null: false, unique: true|
|h-last-name|string|null: false|
|h-first-name|string|null: false|
|k-last-name|string|null: false|
|k-first-name|string|null: false|
|birthday|integer|null: false|
### Association
- has_many :items
- has_many :purchases


## itemsテーブル
|Column|Type|Options|
|------|----|-------|
|image|string|null: false|
|name|string|null: false|
|explain|text|null: false|
|category|string|null: false|
|content|string|null: false|
|how-pay|string|null: false|
|to-where|string|null: false|
|how-long|string|null: false|
|price|integer|null: false|
|comment|text||
|user_id|integer|null:false, foreign_key: true|
### Association
- belongs_to :user
- belongs_to :purchase

## purchasesテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|item_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :user



## addressesテーブル
|postal|integer|null: false|
|prefecture|string|null: false|
|city|string|null: false|
|town|string|null: false|
|building|string||
|phone-number|integer|null: false|
|item_id|integer|null false, foreign_key: true|
### Association
- belongs_to :item
