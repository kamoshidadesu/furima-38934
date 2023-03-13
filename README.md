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

# テーブル設計


## usersテーブル

| Column             | Type   | Option                    |
| ------------------ | -------| ------------------------- |
| nickname           | string | null: false               |
| email              | string | null: false, unique: true |
| encrypted_password | string | null: false               |
| last_name          | string | null: false               |
| first_name         | string | null: false               |
| last_name_kana     | string | null: false               |
| first_name_kana    | string | null: false               |
| birth              | date   | null: false               |

### Association

- has_many :items
- has_many :buys


## itemsテーブル

| Column         | Type          | Option                         |
| -------------- | ------------- | ------------------------------ |
| name           | string        | null: false                    |
| description    | text          | null: false                    |
| category       | string        | null: false                    |
| condition      | string        | null: false                    |
| state          | string        | null: false                    |
| freight        | string        | null: false                    |
| price          | integer       | null: false                    |
| user           | references    | null: false, foreign_key :true |

### Association

- belongs_to :user
- has_one :buy


## buysテーブル

| Column         | Type          | Option                         |
| -------------- | ------------- | ------------------------------ |
| item           | references    | null: false, foreign_key :true |
| user           | references    | null: false, foreign_key :true |

### Association

- belongs_to :item
- belongs_to :user


## shippingsテーブル

| Column         | Type          | Option                         |
| -------------- | ------------- | ------------------------------ |
| zip            | string        | null: false                    |
| state          | string        | null: false                    |
| city           | string        | null: false                    |
| address        | string        | null: false                    |
| building_name  | string        |                                |
| phone          | string        | null: false                    |
| buy            | references    | null: false, foreign_key :true |


### Association

- belongs_to :buy

