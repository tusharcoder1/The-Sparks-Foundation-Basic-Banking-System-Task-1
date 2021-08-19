SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


-- Database: `sparks_bank`


-- --------------------------------------------------------


-- Table structure for table `transaction`

CREATE TABLE `transaction` (
  `sno` int(3) NOT NULL,
  `sender` text NOT NULL,
  `receiver` text NOT NULL,
  `balance` int(8) NOT NULL,
  `datetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- Dumping data for table `transaction`

INSERT INTO `transaction` (`sno`, `sender`, `receiver`, `balance`, `datetime`) VALUES
(1, 'Kailash', 'Seeta', 600, '2021-08-19 11:27:10'),
(2, 'Prakash', 'Pradeep', 5000, '2021-08-19 11:27:34'),
(3, 'Jhon', 'Kishore', 5000, '2021-02-15 11:38:49');

-----------------------------------------------------------


-- Table structure for table `users`


CREATE TABLE `users` (
  `id` int(3) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(30) NOT NULL,
  `balance` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- Data for table `users`


INSERT INTO `users` (`id`, `name`, `email`, `balance`) VALUES
(1, 'Austin', 'Austin@gmail.com', 48955),
(2, 'Prakash', 'Prakash@gmail.com', 35000),
(3, 'Seeta', 'Seeta@gmail.com', 40691),
(4, 'Pradeep', 'Pradeep@gmail.com', 48590),
(5, 'Jennifer', 'Jennifer@gmail.com', 40050),
(6, 'Jhon', 'Jhon@gmail.com', 30555),
(7, 'Kishore', 'Kishore@gmail.com', 49877),
(8, 'Pawan', 'Pawan@gmail.com', 36825),
(9, 'Arjun', 'Arjun@gmail.com', 30000),
(10, 'Kailash', 'Kailash@gmail.com', 50096);


-- Indexes for dumped tables


-- Indexes for table `transaction`

ALTER TABLE `transaction`
  ADD PRIMARY KEY (`sno`);


-- Indexes for table `users`

ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

-- AUTO_INCREMENT for dumped tables



-- AUTO_INCREMENT for table `transaction`

ALTER TABLE `transaction`
  MODIFY `sno` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

-- AUTO_INCREMENT for table `users`

ALTER TABLE `users`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

