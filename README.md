# Datebase Design

## Userモデル
  - prototos_id
  - profile
  - works
  - email
  - password
  - image_url

## ProtoTypeモデル
  - catch_copy
  - consept
  - tag
  - image_url

## Comments
  - text
  - product_id

## Tags
  - tag_name
  - product_id


# Associations

- users has_many :protos, :comments

- protos has_many :comments, :tags

- comments belongs_to :users, :protos

- tags has_many :protos
