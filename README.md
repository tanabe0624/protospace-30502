# テーブル設計

## users テーブル

| Column     | Type   | options     |
| ---------- | -------| ----------- |
| email      | string | nill: false |
| password   | string | nill: false |
| name       | string | nill: false |
| profile    | text   | nill: false |
| occupation | text   | nill: false |
| position   | text   | nill: false |

### Association

- has_many :comments
- has_many :prototypes

## prototypes テープル 

| column     | Type       | options                        |
| -----------| -----------| ------------------------------ |
| title      | string     | nill: false                    |
| catch_copy | text       | nill: false                    |
| concept    | text       | nill: false                    |
| user       | references | nill: false, foreign_key: true |

### Association

- belongs_to :users
- has_many :comments

## comments テーブル

| column    | Type       | options                        |
| --------- | ---------- | ------------------------------ |
| text      | text       | nill: false                    |
| user      | references | nill: false, foreign_key: true |
| prototype | references | nill: false, foreign_key: true |

### Association

- belongs_to :users
- belongs_to :prototypes