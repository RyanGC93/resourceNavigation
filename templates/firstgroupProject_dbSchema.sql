create table users(
  id	integer	not null primary key,
    username	varchar	not null unique,
    email	varchar	not null  unique,
      hashedPassword	varchar	not null,
        createdAt	datetime	not null,
        updatedAt	datetime	not null
        );
        CREATE INDEX username_index ON users (username);
        CREATE INDEX email_index ON users (email);
        
        create table questions(
            id	integer	not null primary key,
    body	varchar	not null,
    authorId	integer	not null REFERENCES users(id),
        createdAt	datetime	not null,
        updatedAt	datetime	not null
    );
    
    create table answers(
        id	integer	not null primary key,
        body	string	not null,
        questionId	integer	not null REFERENCES questions(id),
            authorId	integer	not null REFERENCES users(id),
                createdAt	datetime	not null,
                    updatedAt	datetime	not null
                );
                CREATE INDEX authorId_index ON answers (authorId);
                
                create table votes(
                    id	integer	not null primary key,
                        userId	integer	not null REFERENCES users(id),
                            questionId	integer	not null REFERENCES questions(id),
                                answerId	integer	not null REFERENCES answers(id),
                                    voteType	varchar	not null,
                                    createdAt	datetime	not null,
    updatedAt	datetime	not null
    );
    CREATE INDEX userId_index ON votes (userId);
    CREATE INDEX questionId_index ON votes (questionId);
    CREATE INDEX answerId_index ON votes (answerId);
    
    create table comments(
        id	integer	not null primary key,
        userId	integer	not null REFERENCES users(id),
        questionId	integer	not null REFERENCES questions(id),
            answerId	integer	not null  REFERENCES answers(id),
                body	text	not null,
                    createdAt	datetime	not null,
                    updatedAt	datetime	not null
                    );
                    CREATE INDEX userId_index ON comments (userId);
                    CREATE INDEX questionId_index ON comments (questionId);
                    CREATE INDEX answerId_index ON comments (answerId);