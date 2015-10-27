# ProtoSpace

## Userモデル
  - profile
  - work
  - email
  - password
  - avatar
  - timestanps

## ProtoTypeモデル
  - title
  - catch_copy
  - concept
  - avatar
  - user_id
  - tag_id


## ProtoTypeImageモデル
  - prototype_id

## Commentsモデル
  - text
  - user_id

## LIkeモデル
  - user_id
  - product_id

# Associations

- users has_many :protos, :comments

- prototypes has_many :comments, :tags, :likes, prototypes_images

- comments belongs_to :user, :proto

- tags has_many :protos

- like belongs_to  :user

- prototypes_image belongs_to :prototypes
