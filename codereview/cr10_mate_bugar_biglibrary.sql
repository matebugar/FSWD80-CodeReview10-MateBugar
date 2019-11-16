-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 16, 2019 at 04:30 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cr10_mate_bugar_biglibrary`
--

-- --------------------------------------------------------

--
-- Table structure for table `AdminTable`
--

CREATE TABLE `AdminTable` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `author_name` varchar(255) NOT NULL,
  `publish_date` date NOT NULL,
  `active` int(1) NOT NULL DEFAULT 0,
  `image` varchar(1000) NOT NULL,
  `isbn_code` varchar(13) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `publisher_name` varchar(255) NOT NULL,
  `category` varchar(100) NOT NULL,
  `status` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `AdminTable`
--

INSERT INTO `AdminTable` (`id`, `title`, `author_name`, `publish_date`, `active`, `image`, `isbn_code`, `description`, `publisher_name`, `category`, `status`) VALUES
(63, 'Harry Potter and the deathly hallows', 'J.K.Rowling', '2007-07-21', 0, 'https://images.unsplash.com/photo-1561384111-57fbcc33eaab?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80', '054501022-5', 'Is Harrys bravery enough to defeat Voldemort?', 'Bloomsbury', 'Novel Book', 'Available'),
(64, 'Lord of the rings -  <br>  The trilogy', 'Tolkien', '1955-10-20', 0, 'https://images.unsplash.com/photo-1523593288094-3ccfb6b2c192?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=657&q=80', '4352664', 'Tolkiens fantasy masterpiece about bravery and the eternal good-evil conflict.', 'Allen and Unwin', 'Novel Book', 'Available'),
(65, 'Grand Budapest <br>Hotel', 'Wes Anderson', '2014-02-06', 0, 'https://m.media-amazon.com/images/M/MV5BMzM5NjUxOTEyMl5BMl5BanBnXkFtZTgwNjEyMDM0MDE@._V1_.jpg', '000001314', 'Gustave H, a concierge, is wrongly framed for murder at the Grand Budapest Hotel. In the process of proving his innocence, he befriends a lobby boy.', 'Fox Pictures', 'Movie', 'Reserved'),
(66, 'Dunkirk:<br>the movie', 'Christopher Nolan', '2017-07-13', 0, 'https://images.unsplash.com/photo-1571840933517-88a527cd7008?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=931&q=80', '00u386768', 'During World War II, soldiers from the British Empire, Belgium and France try to evacuate from the town of Dunkirk during a arduous battle with German forces.', 'Warner Bros', 'Movie', 'Available'),
(67, 'Harry Potter and the Chamber of secrets', 'J.K.Rowling', '1998-02-16', 0, 'https://images.unsplash.com/photo-1571918372905-b98f68fe214a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=632&q=80', '253647', 'The second novel of the Harry Potter series.', 'Bloomsbury', 'Novel Book', 'Reserved'),
(68, '<br>The Snowman', 'Jo Nesbo', '1996-08-12', 0, 'https://images.unsplash.com/photo-1465838244287-96cccd978d9f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80', '3565486886', 'The Snowman is a novel by Norwegian crime-writer Jo Nesbø. It is the seventh entry in his Harry Hole series.', 'Aschehoug', 'Novel Book', 'Reserved'),
(69, 'Assassins Creed Odyssey', 'Ubisoft', '2018-10-05', 0, 'https://images.unsplash.com/photo-1569530593434-dde9ca56783b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80', '4635z53643', 'Join into the world of the Greek wars as a mercenary and discover the world of ancient Greece.', 'Ubisoft', 'Video Game', 'Reserved'),
(70, '<br>Dracula', 'Bram Stoker', '1897-01-04', 0, 'https://images.unsplash.com/photo-1517807955292-c4dcc9221e94?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=995&q=80', '5263475', 'Dracula is an 1897 Gothic horror novel by Irish author Bram Stoker. It introduced the character of Count Dracula, and established many conventions of subsequent vampire fantasy.', 'Archibald Company', 'Novel Book', 'Available'),
(71, '<br>NBA 2k20', '2k Sports', '2019-09-28', 0, 'https://images.unsplash.com/photo-1558648243-33c2ca3bf161?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=701&q=80', '4575757577', 'Sports game for basketball fans', '2k Sports', 'Video Game', 'Reserved'),
(72, '<br>AstroWorld', 'Travis Scott', '2018-11-10', 0, 'https://one37pm.imgix.net/one37pm-editor-dev-images/s3fs-public/user-images/2019-10/Travis-Scott-Hype-Corral-uni.jpg?ch=Width,DPR&auto=compress&q=60&w=412&fit=crop&h=446.19599999999997&dpr=2', '363566', 'Newest album of the American rapper', 'Cactus Jack', 'Music Album', 'Available');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userId` int(11) NOT NULL,
  `userName` varchar(30) NOT NULL,
  `userEmail` varchar(60) NOT NULL,
  `userPass` varchar(255) NOT NULL,
  `role` varchar(40) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userId`, `userName`, `userEmail`, `userPass`, `role`) VALUES
(3, 'User User', 'user@user.com', '96cae35ce8a9b0244178bf28e4966c2ce1b8385723a96a6b838858cdd6ca0a1e', 'user'),
(7, 'Admin', 'admin@admin.com', '96cae35ce8a9b0244178bf28e4966c2ce1b8385723a96a6b838858cdd6ca0a1e', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `AdminTable`
--
ALTER TABLE `AdminTable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userId`),
  ADD UNIQUE KEY `userEmail` (`userEmail`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `AdminTable`
--
ALTER TABLE `AdminTable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
