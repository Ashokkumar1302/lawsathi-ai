Authentication Database Design
----------------
role table
-------
SQL
-------------------------------------
id              UUID
name            VARCHAR(50)
description     VARCHAR(255)
created_at      TIMESTAMP
updated_at      TIMESTAMP
------------------------------------
example
-------------
| Name        |
| ----------- |
| USER        |
| LAWYER      |
| ADMIN       |
| SUPER_ADMIN |
----------------
user table
------------------
id
first_name
last_name
email
password
phone_number
account_status
email_verified
role_id
created_at
updated_at
----------------------
Role (1)
|
|
|------< User (Many)
----------------------------------
refesh token
-------------
id
token
expiry_date
user_id
created_at
----------
User (1)
|
|
|------< RefreshToken
