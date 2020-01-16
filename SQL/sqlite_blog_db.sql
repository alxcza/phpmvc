PRAGMA foreign_keys = OFF; --disable Foreign key check

--drop tables
DROP TABLE IF EXISTS `posts`;
DROP TABLE IF EXISTS `posts_posts`;
DROP TABLE IF EXISTS `users`;
DROP TABLE IF EXISTS `comments`;
DROP TABLE IF EXISTS `newsletter`;
DROP TABLE IF EXISTS `contact`;

--create tables
CREATE TABLE IF NOT EXISTS `posts` (
  `id` INTEGER PRIMARY KEY,
  `post_author`   NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `post_content` longtext  NOT NULL,
  `post_title` mediumtext  NOT NULL,
  `post_status` varchar(20)  NOT NULL DEFAULT 'publish',
  `post_name` varchar(200)  NOT NULL DEFAULT '',
  `post_type` varchar(20)  NOT NULL DEFAULT 'article',
  `post_category` tinytext ,
  FOREIGN KEY (post_author) REFERENCES users(id)
);

CREATE TABLE IF NOT EXISTS `posts_posts` (
  `post_id1`   NOT NULL,
  `post_id2`   NOT NULL,
  FOREIGN KEY (post_id1) REFERENCES posts(id),
  FOREIGN KEY (post_id2) REFERENCES posts(id)
);

CREATE TABLE IF NOT EXISTS `users` (
  `id`   INTEGER PRIMARY KEY,
  `user_login` varchar(60)  NOT NULL DEFAULT '',
  `user_pass` varchar(255)  NOT NULL DEFAULT ''
);

CREATE TABLE IF NOT EXISTS `comments` (
  `id` INTEGER PRIMARY KEY,
  `post_id`   NOT NULL,
  `comment_name` varchar(255)  NOT NULL,
  `comment_email` varchar(255)  NOT NULL,
  `comment_content` mediumtext  NOT NULL,
  `comment_date` datetime NOT NULL,
  FOREIGN KEY (post_id) REFERENCES posts(id)
);

CREATE TABLE IF NOT EXISTS `newsletter` (
  `id`   INTEGER PRIMARY KEY,
  `newsletter_email` int(11) NOT NULL
);

CREATE TABLE IF NOT EXISTS `contact` (
  `id`   INTEGER PRIMARY KEY,
  `contact_name` varchar(255)  NOT NULL,
  `contact_email` varchar(255)  NOT NULL,
  `contact_message` mediumtext  NOT NULL,
  `contact_date` datetime NOT NULL
);

-- insert data
INSERT INTO `users` (`id`, `user_login`, `user_pass`) VALUES
(1, 'admin', 'admin');

INSERT INTO `posts` (`id`, `post_author`, `post_date`, `post_content`, `post_title`, `post_status`, `post_name`, `post_type`, `post_category`) VALUES
(1, 1, '2018-12-15 00:00:00', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Tristique senectus et netus et malesuada fames ac turpis egestas. Ultrices dui sapien eget mi proin sed libero enim sed. Morbi tristique senectus et netus et malesuada fames ac turpis. Sapien eget mi proin sed libero. Gravida in fermentum et sollicitudin ac orci phasellus. Molestie ac feugiat sed lectus vestibulum mattis. Feugiat vivamus at augue eget arcu dictum varius. Varius quam quisque id diam vel quam elementum pulvinar etiam. Ultrices in iaculis nunc sed. Sed odio morbi quis commodo odio. Sit amet nisl suscipit adipiscing bibendum est ultricies integer. Tellus rutrum tellus pellentesque eu tincidunt tortor. Diam maecenas sed enim ut sem viverra aliquet. Parturient montes nascetur ridiculus mus mauris vitae ultricies. Ipsum consequat nisl vel pretium. Enim facilisis gravida neque convallis a cras semper. Iaculis urna id volutpat lacus. Vel facilisis volutpat est velit egestas dui. Tempus quam pellentesque nec nam aliquam sem et tortor.\r\n\r\nNisl nunc mi ipsum faucibus vitae aliquet nec. Porttitor lacus luctus accumsan tortor posuere. Lobortis feugiat vivamus at augue eget arcu. Varius vel pharetra vel turpis nunc eget lorem dolor. Elementum integer enim neque volutpat ac tincidunt vitae. Mi ipsum faucibus vitae aliquet nec ullamcorper sit amet risus. Donec et odio pellentesque diam volutpat commodo sed egestas egestas. Purus ut faucibus pulvinar elementum integer. Convallis aenean et tortor at risus viverra adipiscing. Donec massa sapien faucibus et molestie ac feugiat sed lectus.\r\n\r\nEt tortor consequat id porta nibh venenatis cras sed. Nunc faucibus a pellentesque sit amet porttitor eget dolor. Aliquet enim tortor at auctor urna. Sed cras ornare arcu dui vivamus arcu. Ultricies mi quis hendrerit dolor magna eget. Sit amet consectetur adipiscing elit ut aliquam purus sit. Ac odio tempor orci dapibus ultrices in iaculis. Nunc id cursus metus aliquam eleifend mi in. Ultrices tincidunt arcu non sodales neque sodales. Augue interdum velit euismod in pellentesque massa. Adipiscing diam donec adipiscing tristique risus nec feugiat. Enim neque volutpat ac tincidunt vitae. Dignissim convallis aenean et tortor at. Tincidunt eget nullam non nisi est. Diam vel quam elementum pulvinar. Egestas diam in arcu cursus euismod. Nibh praesent tristique magna sit amet.', 'Un super weekend en perspective', 'publish', 'un-super-weekend-en-perspective', 'article', 'news'),
(2, 1, '2018-12-21 00:00:00', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Sed libero enim sed faucibus turpis in. Nam at lectus urna duis convallis convallis. Ultrices eros in cursus turpis. Imperdiet sed euismod nisi porta lorem. Viverra maecenas accumsan lacus vel facilisis volutpat est velit egestas. Id neque aliquam vestibulum morbi blandit cursus risus at. Neque gravida in fermentum et sollicitudin ac orci phasellus. Feugiat pretium nibh ipsum consequat nisl vel pretium lectus quam. Odio pellentesque diam volutpat commodo sed egestas egestas fringilla phasellus. Augue mauris augue neque gravida in fermentum et. Diam quam nulla porttitor massa id neque. Lobortis elementum nibh tellus molestie nunc. At tellus at urna condimentum mattis pellentesque id nibh tortor.\r\n\r\nAmet tellus cras adipiscing enim eu turpis egestas. Porttitor massa id neque aliquam vestibulum. Condimentum lacinia quis vel eros donec ac odio tempor. Ac ut consequat semper viverra nam. Bibendum neque egestas congue quisque egestas diam. Ut ornare lectus sit amet est placerat in egestas erat. Donec adipiscing tristique risus nec feugiat in fermentum posuere urna. Ut enim blandit volutpat maecenas volutpat blandit aliquam etiam. Nulla posuere sollicitudin aliquam ultrices sagittis orci a. At tellus at urna condimentum mattis pellentesque. Tincidunt dui ut ornare lectus sit amet est placerat. Viverra suspendisse potenti nullam ac tortor vitae. Neque egestas congue quisque egestas diam in arcu. Fermentum et sollicitudin ac orci phasellus egestas. Cras fermentum odio eu feugiat. Nisi quis eleifend quam adipiscing vitae proin sagittis nisl rhoncus.', 'Un nouveau festival de musique', 'publish', 'un-nouveau-festival-de-musique', 'article', 'blog'),
(3, 1, '0000-00-00 00:00:00', '', 'Image principale pour un article', 'publish', '01_image_principale.png', 'file', NULL),
(4, 1, '0000-00-00 00:00:00', '', 'Image de couverture un article', 'publish', '02_festival.png', 'file', NULL),
(5, 1, '2019-01-16 10:29:57', '<p>Contenu de la page accueil</p>', 'Page Accueil', 'publish', 'accueil', 'page', NULL),
(6, 1, '2019-01-16 10:29:57', 'Page Mentions légales', 'Mentions Légales', 'publish', 'mentions-legales', 'page', NULL);


INSERT INTO `posts_posts` (`post_id1`, `post_id2`) VALUES
(1, 3),
(2, 4);

PRAGMA foreign_keys = ON; -- re-enable foreign keys