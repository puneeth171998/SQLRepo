USE master

go 

DROP DATABASE IF EXISTS SnapChatDB

CREATE DATABASE SnapChatDB

GO

USE SnapChatDB

GO

DROP TABLE IF EXISTS Users

CREATE TABLE Users(
    user_id INT IDENTITY(1,1) PRIMARY KEY,
    username VARCHAR(50) UNIQUE,
    email VARCHAR(100) UNIQUE,
    phone VARCHAR(15),
    created_at DATETIME DEFAULT GETDATE()
)

GO

DROP TABLE IF EXISTS Friends

CREATE TABLE Friends(
    user_id INT NOT NULL REFERENCES Users(user_id),
    friend_id INT NOT NULL REFERENCES Users(user_id),
    since_date DATE,
    PRIMARY KEY(user_id,friend_id)
)



GO

DROP TABLE IF EXISTS Snaps

CREATE TABLE Snaps (
    snap_id INT IDENTITY(1,1) PRIMARY KEY,
    sender_id INT REFERENCES Users(user_id),
    receiver_id INT REFERENCES Users(user_id),
    media_url VARCHAR(255),
    sent_at DATETIME DEFAULT GETDATE(),
    expires_at DATETIME
)



GO

DROP TABLE IF EXISTS Stories

CREATE TABLE Stories (
    story_id INT IDENTITY(1,1) PRIMARY KEY,
    user_id INT REFERENCES Users(user_id),
    media_url VARCHAR(255),
    posted_at DATETIME DEFAULT GETDATE(),
    expires_at DATETIME DEFAULT DATEADD(HOUR, 24, GETDATE())
)



GO


DROP TABLE IF EXISTS Chats

CREATE TABLE Chats (
    chat_id INT IDENTITY(1,1) PRIMARY KEY,
    sender_id INT REFERENCES Users(user_id),
    receiver_id INT REFERENCES Users(user_id),
    message NVARCHAR(MAX),
    sent_at DATETIME DEFAULT GETDATE()
)


GO

DROP TABLE IF EXISTS Views

CREATE TABLE Views (
    view_id INT IDENTITY(1,1) PRIMARY KEY,
    user_id INT REFERENCES Users(user_id),
    snap_id INT NULL REFERENCES Snaps(snap_id),
    story_id INT NULL REFERENCES Stories(story_id),
    viewed_at DATETIME DEFAULT GETDATE()
)



GO

DROP TABLE IF EXISTS Streaks

CREATE TABLE Streaks (
    user1_id INT NOT NULL REFERENCES Users(user_id),
    user2_id INT NOT NULL REFERENCES Users(user_id),
    streak_count INT DEFAULT 0,
    last_updated DATE,
    PRIMARY KEY (user1_id, user2_id)
)


GO

DROP TABLE IF EXISTS Notifications

CREATE TABLE Notifications (
    notification_id INT IDENTITY(1,1) PRIMARY KEY,
    user_id INT REFERENCES Users(user_id),
    message NVARCHAR(MAX),
    seen BIT DEFAULT 0,
    created_at DATETIME DEFAULT GETDATE()
)


