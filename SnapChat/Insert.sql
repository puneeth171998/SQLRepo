
USE SnapChatDB


INSERT INTO Users (username, email, phone) VALUES
('puneeth', 'puneeth@snapchat.com', '9876543210'),
('pranav', 'pranav@snapchat.com', '9991112222'),
('animesh', 'animesh@snapchat.com', '8883334444'),
('bashu', 'bashu@snapchat.com', '7775559999'),
('hemanth', 'hemanth@snapchat.com', '9090909090'),
('ravi', 'ravi@snapchat.com', '8888888888'),
('lisha', 'lisha@snapchat.com', '7777777777'),
('ramya', 'ramya@snapchat.com', '6666666666'),
('bhagya', 'bhagya@snapchat.com', '5555555555'),
('nagesh', 'nagesh@snapchat.com', '4444444444')

SELECT * FROM Users

INSERT INTO Friends (user_id, friend_id, since_date) VALUES
(1, 2, '2024-01-01'),
(1, 3, '2024-01-02'), 
(1, 4, '2024-01-03'),
(2, 1, '2024-01-01'), 
(2, 5, '2024-01-04'), 
(3, 1, '2024-01-02'),
(4, 1, '2024-01-03'), 
(5, 2, '2024-01-04'), 
(6, 1, '2024-01-05'), 
(1, 6, '2024-01-05');

SELECT * FROM Friends


INSERT INTO Snaps (sender_id, receiver_id, media_url) VALUES
(1, 2, 'snap1.jpg'),
(3, 1, 'snap2.jpg'),
(1, 4, 'snap3.jpg'),
(2, 1, 'snap4.jpg'),
(4, 5, 'snap5.jpg'),
(5, 3, 'snap6.jpg'),
(1, 7, 'snap7.jpg'),
(1, 8, 'snap8.jpg'),
(9, 1, 'snap9.jpg'),
(10, 1, 'snap10.jpg');

SELECT * FROM Snaps



INSERT INTO Stories (user_id, media_url) VALUES
(1, 'story1.jpg'), 
(2, 'story2.jpg'), 
(3, 'story3.jpg'),
(4, 'story4.jpg'), 
(5, 'story5.jpg'), 
(6, 'story6.jpg'),
(7, 'story7.jpg'), 
(8, 'story8.jpg'), 
(9, 'story9.jpg'), 
(10, 'story10.jpg');

SELECT * FROM Stories


INSERT INTO Chats (sender_id, receiver_id, message) VALUES
(1, 2, 'Hi John!'), 
(2, 1, 'Hey Puneeth!'), 
(3, 1, 'Yo!'),
(1, 4, 'Good morning!'), 
(4, 1, 'Morning!'), 
(5, 1, 'Heya!'),
(1, 5, 'Wassup?'), 
(6, 1, 'Hello!'), 
(1, 6, 'Hi!'), 
(7, 1, 'Sup!');

SELECT * FROM Chats



INSERT INTO Views (user_id, snap_id, story_id) VALUES
(2, 1, NULL), 
(3, 2, NULL), 
(4, 3, NULL), 
(5, 4, NULL), 
(6, 5, NULL),
(7, 6, NULL), 
(8, 7, NULL), 
(9, NULL, 1), 
(10, NULL, 2), 
(1, NULL, 3);

SELECT * FROM Views




INSERT INTO Streaks (user1_id, user2_id, streak_count, last_updated) VALUES
(1, 2, 10, '2025-07-01'), 
(2, 3, 5, '2025-07-02'), 
(3, 4, 8, '2025-07-03'),
(4, 5, 2, '2025-07-01'), 
(5, 6, 7, '2025-07-01'), 
(6, 7, 3, '2025-07-01'),
(7, 8, 9, '2025-07-01'), 
(8, 9, 4, '2025-07-01'), 
(9, 10, 6, '2025-07-01'), 
(1, 10, 1, '2025-07-01');

SELECT * FROM Streaks



INSERT INTO Notifications (user_id, message, seen) VALUES
(1, 'John viewed your snap.', 0), 
(2, 'Emma sent you a snap.', 1),
(3, 'New story from Alex.', 0), 
(4, 'Snap from Puneeth expired.', 1),
(5, 'You have a new friend request.', 0), 
(6, 'Streak updated.', 1),
(7, 'Emma replied to your story.', 0), 
(8, 'Snap delivered.', 1),
(9, 'Alex sent a chat.', 0), 
(10, 'Reminder: Maintain your streak!', 0);

SELECT * FROM Notifications