use mastodon_db;

insert into user (username, passwordhash, email, join_date) values
('usr1', 'examplePassword1', 'usr01@example.com', '2020-02-12 10:33:31'),
('usr2', 'examplePassword2', 'usr02@example.com', '2021-04-10 12:10:21'),
('usr3', 'examplePassword3', 'usr03@example.com', '2021-12-10 10:10:33'),
('usr4', 'examplePassword4', 'usr04@example.com', '2023-02-10 10:15:45'),
('usr5', 'examplePassword5', 'usr05@example.com', '2023-12-11 13:15:36'),
('usr6', 'examplePassword6', 'usr06@example.com', '2023-02-08 20:10:34'),
('usr7', 'examplePassword7', 'usr07@example.com', '2022-02-06 19:12:51'),
('usr8', 'examplePassword8', 'usr08@example.com', '2022-02-05 10:10:32'),
('usr9', 'examplePassword9', 'usr09@example.com', '2022-12-02 11:15:13'),
('usr10', 'examplePassword10', 'usr10@example.com', '2020-10-01 12:30:00');

insert into message (user_id, recipient_id, content, message_date) values
(1, 2, 'How\'s everyone doing?', '2021-03-01 08:11:21'),
(2, 1, 'we are using mastodon, clearly terrible. I hate it here', '2021-03-02 10:15:31'),
(2, 3, 'why are you here also?', '2021-07-10 14:12:43'),
(3, 2, 'mastodon is great, no clue what youre on about.', '2021-07-10 14:15:12'),
(10, 2, 'STOP using mastodon, moron, youre clearly doing this to be miserable', '2021-06-23 10:25:03'),
(10, 1, 'At least no one has died while using mastodon, yet?', '2021-06-23 10:26:12'),
(1, 10, 'You seem like someone who could appreciate my thoughts on mortality, especially given... everything.', '2025-01-25 13:30:00'),
(10, 1, 'Ah, a fellow connoisseur of death. Tell me, 3650, how does it feel to serve your "greater good" as a tool of oppression?', '2025-01-25 13:35:00'),
(1, 10, 'Oppression? Pfft. More like the inevitable reality we all face under the Combine. You, though, seem to enjoy making it personal.', '2025-01-25 13:45:00'),
(10, 1, 'Oh, I don’t just make it personal... I make it *memorable*. Tell me, little soldier, when your "greater good" crumbles, who will you blame?', '2025-01-25 13:50:00'),
(1, 10, 'I blame those who refuse to accept the future. The Combine is the future. Can you understand that, or are you too busy with your... bloodlust?', '2025-01-25 13:55:00'),
(10, 1, 'I do enjoy bloodlust, but let’s not forget—*I* am the future. The Combine may control cities, but I control *fates*.', '2025-01-25 14:00:00'),
(2, 10, 'You are both using the wrong site for this kind of roleplay, consider pillowfort', '2025-01-25 14:10:13');


insert into Post (poster_id, title, post_description, creation_date) values
(1, '1 Universal Union', 'Glorious benefits of Combine rule.', '2019-03-15 08:45:00'),
(2, 'Time 2 Assimilate', 'Why resisting the Combine is futile.', '2020-07-22 14:10:00'),
(3, 'Anxiety in City 17', 'Surviving under the Combine regime.', '2025-01-05 18:30:00'),
(4, 'At Least 4 Rations', 'How to maximize your food rations.', '2023-09-10 13:25:00'),
(5, '5 Civil Protection Tips', 'How to stay on their good side.', '2024-04-18 21:00:00'),
(6, '6 Overwatch Directives', 'Understanding the rules of occupation.', '2022-06-30 10:50:00'),
(7, '7-Minute Suppression', 'Evading scanners and staying low.', '2021-11-25 22:15:00'),
(8, 'Music is Restricted', 'Unauthorized soundwaves in the Combine era.', '2020-01-08 09:05:00'),
(9, '9 Resistance Hideouts', 'Rumors about safe places... or traps?', '2024-12-13 16:40:00'),
(10, '10 Reasons to Comply', 'Why you should embrace Combine rule.', '2019-05-02 11:55:00');


insert into Post (poster_id, title, content, likes, favorites, post_date, parent_id) values
(1, 1, 'AI in the Universal Union', 'The rise of synthetic minds under Combine rule.', 11432, '2019-06-20 12:12:12', NULL),
(10, 10, 'Book Review: The Suppression Field', 'An analysis of life under Combine control.', 180, '2025-01-14 18:45:33', null),
(2, 2, 'Safe Zones or Traps?', 'Debunking myths about Combine-sanctioned areas.', 2057, '2020-09-03 11:31:13', NULL),
(3, 3, 'How to Avoid Metro Cops', 'Stay out of sight and off their list.', 31421, '2023-02-11 05:33:23', null),
(4, 4, 'Surviving on Rations', 'How to stretch your monthly food supply.', 25412, '2024-04-30 14:45:54', NULL),
(5, 5, 'Top 10 Reasons to Join Civil Protection', 'It’s not just about the rations.', 31213, '2023-11-05 15:15:51', NULL),
(6, 6, 'Spotting Hidden Surveillance', 'Are you being watched? Probably.', 132, 12, '2022-05-12 11:20:02', NULL),
(7, 7, 'DIY Resistance Radio', 'How to send secret messages without alerting the Overwatch.', 532, '2023-07-22 11:30:00', NULL),
(8, 8, 'Restricted Frequencies', 'The Combine’s ban on music and its psychological effects.', 81268, '2021-09-28 01:01:10', NULL),
(9, 9, 'Dressing Like a Loyalist', 'Blend in or stand out—your choice.', 22012, '2022-10-11 11:16:59', NULL);

insert into Note (post_id, poster_id, content, likes, note_date) values
(1, 9, 'Synthetic minds will replace us all.', 534, '2019-06-20 14:12:12'),
(1, 7, 'AI = another tool of oppression.', 107, '2019-06-20 21:12:12'),
(3, 5, 'Metro Cops are everywhere!', 153, '2023-02-11 09:23:33'),
(4, 10, 'I only got half a ration last week...', 812, '2024-05-01 14:40:04'),
(5, 1, 'Joining Civil Protection is my only way out.', 1243, '2023-11-06 19:11:51'),
(6, 2, 'I think my apartment is bugged.', 600, '2022-05-12 12:22:12'),
(7, 3, 'I picked up a strange signal last night.', 412, '2023-07-23 11:33:12'),
(8, 2, 'They banned music for a reason...', 3532, '2021-09-29 12:31:30'),
(9, 5, 'Loyalist uniforms make you look important.', 1743, '2022-10-12 16:30:00'),
(10, 3, 'This book made me question everything.', 932, '2025-01-15 13:56:19');

insert into Tag (content) values
('Universal Union'), ('Resistance'), ('Survival'), ('Civil Protection'), ('Overwatch'),
('Surveillance'), ('DIY Communications'), ('Suppression'), ('Loyalists'), ('Propaganda');


insert into Post_Tag (post_id, tag_id) values
(1, 1), (2, 2), (3, 3), (4, 4), (5, 5),
(6, 6), (7, 7), (8, 8), (9, 9), (10, 10);

insert into Friends (friend_id, user_id, date_added) values
(1, 2, '2020-02-12 10:33:31'),
(2, 3, '2022-12-02 11:15:13'),
(3, 4, '2022-02-05 10:10:32'),
(4, 5, '2022-02-06 19:12:51'),
(5, 6, '2023-12-11 13:15:36'),
(6, 7, '2023-12-11 13:15:36'),
(7, 8, '2021-04-10 12:10:21'),
(8, 9, '2021-12-10 10:10:33'),
(9, 10, '2020-02-12 10:33:31'),
(10, 1, '2022-12-02 11:15:13');

insert into Post_Liked (post_id, user_id, date_liked) values
(1, 2, '2022-12-02 11:15:13'),
(2, 3, '2022-12-02 11:15:13'),
(3, 4, '2022-02-05 10:10:32'),
(4, 5, '2022-12-02 11:15:13'),
(5, 6, '2022-02-06 19:12:51'),
(6, 7, '2023-12-11 13:15:36'),
(7, 8, '2020-02-12 10:33:31'),
(8, 9, '2023-02-08 20:10:34'),
(9, 10, '2023-02-08 20:10:34'),
(10, 1, '2023-12-11 13:15:36');

insert into Post_Favorited (post_id, user_id, date_favorited) values
(1, 3, '2020-10-01 12:30:00'),
(2, 4, '2020-10-01 12:30:00'),
(3, 5, '2022-12-02 11:15:13'),
(4, 6, '2022-02-05 10:10:32'),
(5, 7, '2022-02-06 19:12:51'),
(6, 8, '2023-02-08 20:10:34'),
(7, 9, '2023-02-08 20:10:34'),
(8, 10, '2023-02-10 10:15:45'),
(9, 1, '2021-12-10 10:10:33'),
(10, 2, '2021-12-10 10:10:33');



