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
|birthday|date|null: false|
### Association
- has_many :items


## itemsテーブル
|Column|Type|Options|
|------|----|-------|
|image|string|null: false|
|name|text|null: false|
|explain|text|null: false|
|detail|string|null: false|
|deliver|datetime|null: false|
|price|integer|null: false|
|user_id|integer|null:false, foreign_key: true|
### Association
- belong_to :user


## sold-outsテーブル
|Column|Type|Options|
|------|----|-------|
|image|string|null:false|
### Association
- belong_to :user
