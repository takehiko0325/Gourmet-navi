# README
# テーブル設計

## users テーブル

| Column             | Type   | Options     |
| ---------------    | ------ | ----------- |
| name               | string | null: false |
| email              | string | null: false |
| encrypted_password | string | null: false |
| first_name         | string | null: false |
| family_name        | string | null: false |
| birthday           | date   | null: false |

### Association
- has_many :shops
- has_many :comments
## shops テーブル

| Column                   | Type      | Options          |
| ----------------------   | ------    | --------------   |
| name                     | string    | null: false      |
| explanation              | text      | null: false      |
| Prefecture_id            | integer   | null: false      |
| shop_genre_id            | integer   | null: false      |
| city                     | string    | null: false      |
| price                    | integer   | null: false      |
| phone_number             | string    | null: false      |
| times                    | string    | null: false      |
| user                     | references|foreign_key: true |
| menu                     | references|foreign_key: true |

### Association

- belongs_to : user
- has_one :menu

## comments テーブル

| Column    | Type       | Options                        |
| --------- | ---------- | ------------------------------ |
| text      | text       | null: false                    |
| user      | references | foreign_key: true              |
| menu      | references | foreign_key: true              |

### Association
-belongs_to : user
-belongs_to : shop


## menu テーブル

| Column                 | Type       | Options           |
| ---------------------- | ---------  | --------------    |
| name                   | string     | null: false       |
| value                  | string     | null: false       |
| shop                   | references | foreign_key: true |
### Association
-has_many :comments
-belongs_to: shop

