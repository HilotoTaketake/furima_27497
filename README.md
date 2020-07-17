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
|nickname|string|null: false, unique: true|
|real-name|string|null: false|
|birthday|integer|null: false|
### Association
- has_many :items


## itemsテーブル
|Column|Type|Options|
|------|----|-------|
|image|string|null: false|
|name|string|null: false|
|explain|text|null: false|
|detail|string|null: false|
|deliver|datetime|null: false|
|price|integer|null: false|
|comment|text||
|user_id|integer|null:false, foreign_key: true|
### Association
- belong_to :user
- belong_to :purchases


## sold-outsテーブル
|Column|Type|Options|
|------|----|-------|
|image|string|null:false|
### Association
- belong_to :user

## purchasesテーブル
|Column|Type|Options|
|------|----|-------|
|card-num|integer|null: false|
|expired|integer|null: false|
|secure|integer|null: false|
|postal|integer|null: false|
|prefecture|string|null: false|
|address1|string|null: false|
|address2|string|null: false|
|building|string||
|phone-num|integer|null: false|
### Association
- belong_to :items

## editsテーブル
|Column|Type|Options|
|------|----|-------|
|image|string|null: false|
|name|string|null: false|
|explain|text|null: false|
|detail|string|null: false|
|deliver|datetime|null: false|
|price|integer|null: false|
### Association
- belong_to :items
