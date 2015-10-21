# Datebase Design

users
  prototos_id
  profile
  works
  email
  password
  image_url

protos
  catch_copy
  consept
  tag
  image_url

comments
  text
  product_id

tags
  tag_name
  product_id


# Associations

users has_many :protos, :comments

protos has_many :comments, :tags

comments belongs_to :users, :protos

tags has_many :protos
