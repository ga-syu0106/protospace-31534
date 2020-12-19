# テーブルまとめ

## usersテーブル

| Column      | Type   | Options    |
| ----------- | ------ | ---------- |
| email       | string | nul: false |
| password    | string | nul: false |
| name        | string | nul: false |
| profile     | text   | nul: false |
| occupation  | text   | nul: false |
| position    | text   | nul: false |

### Association

- has_many :prototypes
- has_many :comments

## prototypesテーブル

| Column     | Type       | Options                        |
| ---------- | ---------- | ------------------------------ |
| title      | string     | nul: false                     |
| catch_copy | text       | nul: false                     |
| concept    | text       | nul: false                     |
| user       | references | null: false, foreign_key: true |

### Association

- be_longs :user
- has_many :comments

## commentsテーブル
| Column    | Type       | Options                        |
| --------- | ---------- | ------------------------------ |
| text      | string     | null: false                    |
| user      | references | null: false, foreign_key: true |
| prototype | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :prototype