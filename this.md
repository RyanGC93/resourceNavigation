Database Schema
===============

[](#users)`Users`
-----------------

| column name | data type | details |
| --- | --- | --- |
| `id` | integer | not null, primary key |
| `username` | string | not null, indexed, unique |
| `email` | string | not null, indexed, unique |
| `hashedPassword` | string | not null |
| `createdAt` | datetime | not null |
| `updatedAt` | datetime | not null |

*   unique index on `username`
*   unique index on `email`
*   Sequelize `hasMany` `Question` association
*   Sequelize `hasMany` `Votes` association
*   Sequelize `belongsToMany` `Question` through `Votes` as `LikedQuestion` association

[](#Question)`Question`
-------------------

| column name | data type | details |
| --- | --- | --- |
| `id` | integer | not null, primary key |
| `body` | string | not null |
| `authorId` | integer | not null, indexed, foreign key |
| `createdAt` | datetime | not null |
| `updatedAt` | datetime | not null |

*   `authorId` references `Users` table
*   index on `authorId`
*   Sequelize `belongsTo` `Users` association
*   Sequelize `hasMany` `Votes` association
*   Sequelize `belongsToMany` `Users` through `Votes` as `LikedUsers` association

[](#Votes)`Votes`
-----------------

| column name | data type | details |
| --- | --- | --- |
| `id` | integer | not null, primary key |
| `userId` | integer | not null, indexed, foreign key |
| `chirpId` | integer | not null, indexed, foreign key |
| `createdAt` | datetime | not null |
| `updatedAt` | datetime | not null |

*   `userId` references `Users` table
*   `chirpId` references `Question` table
*   unique index on `[chirpId, userId]`
*   Sequelize `belongsTo` `Users` association
*   Sequelize `belongsTo` `Question` association

[](#Comments)`Comments`
-----------------

| column name | data type | details |
| --- | --- | --- |
| `id` | integer | not null, primary key |
| `userId` | integer | not null, indexed, foreign key |
| `chirpId` | integer | not null, indexed, foreign key |
| `createdAt` | datetime | not null |
| `updatedAt` | datetime | not null |

*   `userId` references `Users` table
*   `chirpId` references `Question` table
*   unique index on `[chirpId, userId]`
*   Sequelize `belongsTo` `Users` association
*   Sequelize `belongsTo` `Question` association

> unique index on `[chirpId, userId]` will only not allow a chirp to be liked by the same user more than once.

> We don't need a separate index for `chirpId` or `userId` because the index on `[chirpId, userId]` adds it for us.

### DATABASE SCHEMA DESIGN
![schema](https://i.stack.imgur.com/AyIkW.png)