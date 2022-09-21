create database IETDAVV_DB1;

use ietdavv_DB1;

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;


CREATE TABLE `subject_table` (
  `id` bigint(20) NOT NULL,
  `subject_code` varchar(10) NOT NULL,
  `subject_name` varchar(100) NOT NULL,
  `theory_credits` int(1) DEFAULT '0',
  `practical_credits` int(1) DEFAULT '0',
  `department_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subject_table`
--

INSERT INTO `subject_table` (`id`, `subject_code`, `subject_name`, `theory_credits`, `practical_credits`, `department_id`) VALUES
(48, 'ACR1C2', 'Chemistry and Environment Science', 4, 1, 15),
(49, 'ACR3C1', 'Applied Mathematics-III ', 4, 0, 15),
(50, 'AIR3C1', 'Discrete Maths ', 4, 0, 15),
(51, 'AM1GE1', 'Computer Architecture & DCO', 4, 0, 7),
(52, 'AM1PC1', 'Algebra', 4, 0, 7),
(53, 'AM1PC2', 'Discrete Mathematics', 4, 0, 7),
(54, 'AM1PC3', 'Numerical Analysis & Integral Equations', 4, 0, 7),
(55, 'AM1SS1', 'Adavanced Communication Skills', 2, 0, 7),
(56, 'AM3GE1', 'Os / Microprocessor', 4, 0, 7),
(57, 'AM3PC1', 'Topology', 4, 0, 7),
(58, 'AM3PC2', 'Database Theory', 4, 0, 7),
(59, 'AM3PC3', 'Mathematical Statistics', 4, 0, 7),
(60, 'AM3SS2', 'Life Management Skills', 2, 0, 7),
(61, 'AMR1C1', 'Applied Mathematics - I', 4, 0, 15),
(62, 'AMR2C1', 'Applied Mathematics - II', 4, 0, 15),
(63, 'AMR3C1', 'Applied Mathematics-III', 4, 0, 15),
(65, 'APR2C2', 'Applied Physics', 4, 1, 15),
(66, 'ASR1S1', 'Soft Skills - I', 2, 0, 14),
(68, 'ASR2S2', 'Soft Skills - II', 2, 0, 14),
(69, 'ATR3C1', 'Applied Mathematics-III', 4, 0, 15),
(70, 'AVR3C1', 'Applied Mathematics - III', 4, 0, 15),
(71, 'CER3C2', 'Object Oriented Programming ', 4, 1, 9),
(72, 'CER3C3', 'Data Structure Using C ', 4, 1, 9),
(73, 'CER3C4', 'Digital Electronics ', 4, 1, 9),
(74, 'CER3G1', 'Computer Organisation & Arcitecture ', 4, 0, 9),
(75, 'COR2C5', ' Computer Programming', 4, 1, 9),
(76, 'DCR1C1', 'Modern Communication System', 4, 1, 12),
(77, 'DCR1C2', 'Embedded System Using Arm Microcontroller', 4, 1, 12),
(78, 'DCR1C3', 'Advance Computer Networking', 4, 1, 12),
(79, 'DCR1E2', 'Object Oriented Programming', 4, 1, 12),
(80, 'DCR1G1', 'Advance System Design', 4, 0, 12),
(81, 'DCR2C1', 'Modelling and Simulation', 4, 1, 12),
(82, 'DCR2C2', 'Mobile Comm. Networks', 4, 1, 12),
(83, 'DCR2C3', 'System Design Using Verilog', 4, 1, 12),
(84, 'DCR2E1', 'Elective - II', 4, 1, 12),
(87, 'DIR1C1', 'Industrial Transducers & Smart Sensors', 4, 1, 11),
(88, 'DIR1C2', 'Embedded Systems Using Arm Microcontroller', 4, 1, 11),
(89, 'DIR1C3', 'Modern Control Systems', 4, 1, 11),
(90, 'DIR1E2', 'Object Oriented Programming', 4, 1, 11),
(91, 'DIR1G1', 'Advance System Design', 4, 0, 11),
(92, 'DIR1G3', 'Advance Computer Networking', 4, 0, 11),
(93, 'DIR2C1', 'Digital Image Processing', 4, 1, 11),
(94, 'DIR2C2', 'Process Instru& Industrial C.', 4, 1, 11),
(95, 'DIR2C3', 'System Design Using Verilog', 4, 1, 11),
(96, 'DIR2G3', 'Generic Elective  - II Modelling', 4, 0, 11),
(97, 'DTP3C1', 'Machinary Fault Diagnosis & Signal Processesing', 4, 1, 3),
(98, 'DTP3C2', 'Advanced Refrigeration & Air Conditioning', 4, 1, 3),
(99, 'DTP3G1', 'Advanced Heat Tranfer', 4, 0, 3),
(100, 'DTR1C1', 'Tribology', 4, 1, 3),
(101, 'DTR1C2', 'Design of Internal Combustion Engine Systems', 4, 1, 3),
(102, 'DTR1C3', 'Advance Machine Design', 4, 1, 3),
(103, 'DTR1E1', 'Advanced Mechanics of Solids', 4, 1, 3),
(104, 'DTR1G1', 'Advance Thermodynamics', 4, 0, 3),
(105, 'DTR2C1', 'Machinery Fault Diagnosis & Signal Processing', 4, 1, 3),
(106, 'DTR2C2', 'Advanced Rac', 4, 1, 3),
(107, 'DTR2C3', 'Computer Aided Mechanism Design', 4, 1, 3),
(108, 'DTR2E1', 'M/C Vibrations Analysis', 4, 0, 3),
(109, 'DTR2G1', 'Advanced Heat Transfer', 4, 0, 3),
(110, 'EIR1C4', 'Basics Electronics', 4, 1, 5),
(111, 'EIR2C4', ' Electrical Engineering', 4, 1, 5),
(112, 'AER3C1', 'Applied Mathematics-III', 4, 0, 15),
(113, 'EIR3C2', 'Digital Electronics', 4, 1, 5),
(114, 'EIR3C3', 'Data Structure', 4, 1, 5),
(115, 'EIR3C4', 'Network Analysis', 4, 1, 5),
(116, 'EIR3G1', 'Electronic Devices & Fabrication', 4, 0, 5),
(117, 'ETR1C4', 'Basic Electronics', 4, 1, 6),
(118, 'ETR3C2', 'Digital Electronics', 4, 1, 6),
(119, 'ETR3C3', 'Data Structure', 4, 1, 6),
(120, 'ETR3C4', 'Network Analysis', 4, 1, 6),
(121, 'ETR3G1', 'Electronic Devices & Fabrication', 4, 0, 6),
(122, 'IMP3C1', 'Financial Management', 4, 1, 3),
(123, 'IMP3C2', 'Materials Management', 4, 1, 3),
(124, 'IMP3G1', 'Project Management', 4, 0, 3),
(125, 'IMR1C1', 'Productivity & Technology Management', 4, 1, 3),
(126, 'IMR1C2', 'Quantitative Techniques for Management', 4, 1, 3),
(127, 'IMR1C3', 'Production & Operations Management', 4, 1, 3),
(128, 'IMR1E1', 'Statistical Quality Control and Total Quality Management', 4, 1, 3),
(129, 'IMR1G1', 'Principles & Practices of Management', 4, 0, 3),
(130, 'IMR2C1', 'Financial Management', 4, 1, 3),
(131, 'IMR2C2', 'Materials Management', 4, 1, 3),
(132, 'IMR2C3', 'Supply Chain Management', 4, 1, 3),
(133, 'IMR2E1', 'Marketing Management', 4, 1, 3),
(134, 'IMR2G1', 'Project Management', 4, 0, 3),
(135, 'ISR1C1', 'Advance Algorithms', 4, 1, 1),
(136, 'ISR1C2', 'Secure Computing Techniques', 4, 1, 1),
(137, 'ISR1C3', 'Advance Computer Networks', 4, 1, 1),
(138, 'ISR1E1', 'Data Security', 4, 1, 1),
(139, 'ISR1G1', 'Advance Database Management Systems', 4, 0, 1),
(140, 'ISR2C1', 'Information Security and Management', 4, 1, 1),
(141, 'ISR2C2', 'Digital Forencics & Security Audit', 4, 1, 1),
(142, 'ISR2C3', 'Security Wireless Network', 4, 1, 1),
(143, 'ISR2E1', 'Biometric System and Security', 4, 1, 1),
(144, 'ISR2G2', 'Applied Cryptography', 4, 0, 1),
(145, 'ITR3C2', 'Object Oriented Programming  ', 4, 1, 8),
(146, 'ITR3C3', 'Data Structures  ', 4, 1, 8),
(147, 'ITR3C4', 'Digital Electronics  ', 4, 1, 8),
(148, 'ITR3G1', 'Computer Organization & Architecture', 4, 0, 8),
(149, 'MER1C3', 'Elements of Mechanical Engineering', 4, 1, 10),
(150, 'MER2C3', 'Engineering Drawing', 3, 2, 10),
(151, 'MER3C2', 'Strength of Materials', 4, 1, 10),
(152, 'MER3C3', 'Material Science', 4, 1, 10),
(153, 'MER3C4', 'Manufacturing Processes', 4, 1, 10),
(154, 'MER3G1', 'Applied Thermodynamics', 4, 0, 10),
(155, 'MTR3S3', 'Effective Communication Skills', 2, 0, 15),
(156, 'SCR3S3', 'Environmental Studies ', 2, 0, 15),
(157, 'SEP3C1', 'Software Project Planning and Management', 4, 1, 2),
(158, 'SEP3C2', 'Design Pattern', 4, 1, 2),
(159, 'SEP3C4', 'Software Project Planning & Mgmt', 4, 1, 2),
(160, 'SEP3C5', 'Design Pattern', 4, 0, 2),
(161, 'SEP3G1', 'Data Mining & Warehousing', 4, 0, 2),
(162, 'SER1C1', 'Advance Algorithms', 4, 1, 2),
(163, 'SER1C2', 'Objet Oriented Analysis & Design', 4, 1, 2),
(164, 'SER1C3', 'Software Construction', 4, 1, 2),
(165, 'SER1E1', 'Database Engineering', 4, 1, 2),
(166, 'SER1G1', 'Soft Computing', 4, 0, 2),
(167, 'SER2C1', 'Software Project Planning & Mgmt', 4, 1, 2),
(168, 'SER2C2', 'Design Patterns', 4, 1, 2),
(169, 'SER2C3', 'Software Testing & Qa', 4, 1, 2),
(171, 'SER2G1', 'Data Mining and Warehousing', 4, 0, 2),
(172, 'SIR3S1', 'Life  Skills Management ', 2, 0, 15),
(173, 'SIR3S3', 'Life Skills Management', 2, 0, 15),
(174, 'SSR1S1', 'Technical English', 4, 0, 15),
(175, 'SSR2S2', 'Humanities', 2, 0, 15),
(176, 'STR3S3', 'Effective Communication Skills', 2, 0, 15),
(177, 'SVR3S3', 'Life Management Skills', 2, 0, 15),
(178, 'VLR3C2', 'Applied Mechanics & Strength of Material', 4, 1, 4),
(179, 'VLR3C3', 'Surveying', 4, 1, 4),
(180, 'VLR3C4', 'Construction Material & Technology', 4, 1, 4),
(181, 'VLR3G1', 'Structural Mechanics', 4, 0, 4),
(337, 'CER4C1', 'Discrete Structures', 4, 0, 9),
(338, 'CER4C2', 'Operating System', 4, 1, 9),
(339, 'CER4C3', 'Abstraction & Paradigms of Prog.', 4, 1, 9),
(340, 'CER4C$', 'Database Management System', 0, 0, 9),
(341, 'CER4C4', 'Database Management System', 4, 1, 9),
(342, 'CER4G2', 'Digital Signal Processing', 4, 0, 9),
(343, 'AIR4C1', 'Numerical & Optimization Techniques', 4, 0, 15),
(344, 'ITR4C2', 'Operating Systems', 4, 1, 8),
(345, 'ITR4C3', 'Software Engineering', 4, 1, 8),
(346, 'ITR4C4', 'Database Management System', 4, 1, 8),
(347, 'ITR4G2', 'Digital Communication Engineering', 4, 0, 8),
(348, 'VLR4C1', 'Engineering Geology', 4, 1, 4),
(349, 'VLR4C2', 'Fluid Mechanics - I', 4, 1, 4),
(350, 'VLR4C3', 'Advanced Surveying', 4, 1, 4),
(351, 'VLR4C4', 'Design of Rcc Strctures - I', 4, 1, 4),
(352, 'VLR4G2', 'Environmental Engineering - I', 4, 0, 4),
(353, 'MER4C1', 'Industrial Engineering & Management', 4, 0, 10),
(354, 'MER4C2', 'Theory of Machines', 4, 1, 10),
(355, 'MER4C3', 'Machine Design & Drawing', 4, 1, 10),
(356, 'MER4C4', 'Fluid Mechanics', 4, 1, 10),
(357, 'MER4G2', 'Mechatronics', 4, 0, 10),
(358, 'EIR4C1', 'Digital Computer Organization & Architecture', 4, 0, 5),
(359, 'EIR4C2', 'Electrical & Electronic Measurement', 4, 1, 5),
(360, 'EIR4C3', 'Analog Electronics', 4, 1, 5),
(361, 'EIR4C4', 'Sensor & Transducers', 4, 1, 5),
(362, 'EIR4G2', 'Signals & Systems', 4, 0, 5),
(363, 'ETR4C1', 'Computer Organization & Architecture', 4, 0, 6),
(364, 'ETR4C2', 'Electrical & Electronic Measurement', 4, 1, 6),
(365, 'ETR4C3', 'Analog Electronics', 4, 1, 6),
(366, 'ETR4C4', 'Analog Communications', 4, 1, 6),
(367, 'ETR4G2', 'Signals & Systems', 4, 0, 6),
(368, 'SIR4S4', 'Communication Skills', 2, 0, 15),
(369, 'SMR4S4', 'Engineering Economics', 2, 0, 15),
(371, 'SCR4S4', 'Engineering Economics', 2, 0, 15),
(372, 'SVR4S4', 'Communications Skills', 2, 0, 15),
(373, 'AM2PC1', 'Real Analysis/Measure Theory', 4, 0, 7),
(374, 'AM2PC2', 'Advance Differential Equations', 4, 0, 7),
(375, 'AM2PC3', 'Theory of Computation', 4, 0, 7),
(376, 'STR4S4', 'Engineering Economics', 2, 0, 15),
(379, 'SER4S4', 'Engineering Economics', 2, 0, 7),
(382, 'AM2EC2', 'Comp. Graphics /Multimedia', 3, 0, 7),
(383, 'AM2EM1', 'Operations Research-I', 3, 0, 7),
(384, 'AM4EC1', 'Advanced Java', 3, 0, 7),
(385, 'AM4EM1', 'Operations Research - II', 3, 0, 7),
(386, 'AM4PC1', 'Complex Analysis', 4, 0, 7),
(387, 'AM4PC2', 'Analysis of Algorithm', 4, 0, 7),
(388, 'AM4PC3', 'Functional Analysis', 4, 0, 7),
(389, 'SER2E1', 'Speech & Language Processing', 4, 1, 2),
(390, 'DIR2E1', 'Analog and Digital Cmos Circuit Design', 4, 1, 11),
(395, 'DCR2G1', 'Broadband Access Technology', 4, 0, 12),
(398, 'ETR5C1', 'Object Oriented Programming', 4, 0, 6),
(399, 'ETR5C2', 'Digital Communication', 4, 1, 6),
(400, 'ETR5C3', 'Emf and Transmission Line', 4, 1, 6),
(401, 'ETR5E1', 'Microcontrollers', 4, 1, 6),
(402, 'STR5S5', 'Principles of Management', 2, 0, 15),
(403, 'ETR5G3', 'Digital Signal Processing', 4, 0, 6),
(404, 'CER5C1', 'Theory of Computation', 4, 0, 9),
(405, 'CER5C2', 'Software Engineering', 4, 1, 9),
(406, 'CER5C3', 'Computer Network', 4, 1, 9),
(407, 'CER5E1', 'Server Side Programming', 4, 1, 9),
(408, 'CER5G3', 'Object Oriented Analysis & Design', 4, 0, 9),
(409, 'SCR5S5', 'Engineering Leadership', 2, 0, 15),
(410, 'SMR3S3', 'Effective Comm. Skill', 2, 0, 15),
(411, 'EIR5C1', 'Object Oriented Programming', 4, 0, 5),
(413, 'EIR5C2', 'Analog & Digital Comm.', 4, 1, 5),
(417, 'EIR5C3', 'Power Electronics', 4, 1, 5),
(418, 'EIR5E1', 'Microcontrollers', 4, 1, 5),
(421, 'SER5S5', 'Principles of Management', 2, 0, 15),
(422, 'EIR5G3', 'Digital Signal Processing', 4, 0, 5),
(423, 'EIR5L3', 'Software Workshop - II', 0, 1, 5),
(431, 'VLR5C1', 'Design of RCC Structures- II ', 4, 0, 4),
(432, 'VLR5C2', 'Fluid Mechanics - II', 4, 1, 4),
(433, 'VLR5C3', 'Quantity Surveying & Costing', 4, 1, 4),
(434, 'VLR5E1', 'Geotechnical Engineering - I', 4, 1, 4),
(435, 'VLR5G3', 'Water Resources Engineering', 4, 0, 4),
(436, 'SVR5S5', 'Professional Skills - I', 2, 0, 15),
(437, 'ITR5C1', 'Theory of Computation', 4, 0, 8),
(438, 'ITR5C2', 'Object Oriented Analysis & Design', 4, 1, 8),
(439, 'ITR5C3', 'Computer Network', 4, 1, 8),
(440, 'ITR5G3', 'Applied Statistics', 4, 0, 8),
(441, 'ITR5E1', 'Web Technologies', 4, 1, 8),
(442, 'SIR5S5', 'Principal of Management', 2, 0, 15),
(445, 'MER5C1', 'Dynamics of Machine', 4, 1, 10),
(446, 'MER5C2', 'Machine Design - I', 4, 0, 10),
(447, 'MER5C3', 'Heat & Mass Transfer', 4, 1, 10),
(448, 'MER5C4', 'IC Engines and Jet Propulsion', 4, 1, 10),
(449, 'MER5G1', 'Production Engineering ', 4, 0, 10),
(450, 'SMR5S5', 'Principles of Management', 2, 0, 15),
(451, 'SER1W1', 'Seminar/ Workshop/Research Tool', 0, 2, 2),
(452, 'CER6C1', 'Computer Graphics & Visualization', 4, 0, 9),
(453, 'CER6C2', 'Design and Analysis of Algorithm', 4, 1, 9),
(454, 'CER6C3', 'Compiler Techniques', 4, 1, 9),
(455, 'CER6E1', 'Data Warehousing & Mining', 4, 1, 9),
(456, 'CER6G4', 'Wireless and Mobile Networks', 4, 0, 9),
(457, 'SCR6S6', 'Professional Development', 2, 0, 15),
(458, 'AM2EC1', 'Object Oriented Prog. With Core Java', 3, 0, 7),
(459, 'AM2PR2', 'Computer Lab - II', 0, 2, 7),
(460, 'AM2CV2', 'Comprehensive Viva - II', 0, 4, 7),
(461, 'IMR2W2', 'Seminar/Res. Tool/Workshop - II', 0, 2, 3),
(462, 'IMR2V2', 'Comprehensive Viva - II', 0, 4, 3),
(463, 'ISR2W2', 'Seminar / Workshop - II', 0, 2, 1),
(464, 'ISR2V2', 'Comprehensive Viva - II', 0, 4, 1),
(465, 'SER2W2', 'Seminar / Workshop - II', 0, 2, 2),
(466, 'SER2V2', 'Comprehensive Viva - II', 0, 4, 2),
(467, 'DIR2W2', 'Seminar/Workshop/Research Tools - II', 2, 0, 11),
(468, 'DIR2V2', 'Comprehensive Viva - II', 0, 4, 11),
(469, 'DCR2W2', 'Seminar/Workshop/Research Tools - II', 2, 0, 12),
(470, 'DCR2V2', 'Comprehensive Viva - II', 0, 4, 12),
(471, 'DTR2W2', 'Seminar/Workshop/Research Tools - II', 0, 2, 3),
(472, 'DTR2V2', 'Comprehensive Viva - II', 0, 4, 3),
(473, 'BER2V2', 'Comprehensive Viva - II', 0, 4, 15),
(474, 'BER1V1', 'Comprehensive Viva - I', 0, 4, 15),
(475, 'CER4V4', 'Comprehensive Viva - Iv', 0, 4, 9),
(476, 'ITR4V4', 'Comprehensive Viva - Iv', 0, 4, 8),
(477, 'ITR4L2', 'Smart Systems Lab', 0, 1, 8),
(478, 'ETR4V4', 'Comprehensive Viva - Iv', 0, 4, 6),
(479, 'ETR4L2', 'Electronic Workshop - II', 0, 1, 6),
(480, 'EIR4L2', 'Electronic Workshop - II', 0, 1, 5),
(481, 'EIR4V4', 'Comprehensive Viva - Iv', 0, 4, 5),
(482, 'MER4V4', 'Comprehensive Viva - Iv', 0, 4, 10),
(483, 'MER4L2', 'Workshop/Mechatronics', 0, 1, 10),
(484, 'VLR4V4', 'Comprehensive Viva - Iv', 0, 4, 4),
(485, 'VLR4L2', 'Engineering Geology Lab', 0, 1, 4),
(486, 'CER6V6', 'Comprehensive Viva - Vi', 0, 4, 9),
(487, 'CER6L4', 'Computer Graphics Lab', 0, 1, 9),
(488, 'ITR6L4', 'Mobile Technology Lab', 0, 1, 8),
(489, 'ITR6V6', 'Comprehensive Viva - Vi', 0, 4, 8),
(490, 'ETR6V6', 'Comprehensive Viva - Vi', 0, 4, 6),
(491, 'ETR6L4', 'Design Workshop', 0, 1, 6),
(492, 'EIR6L4', 'Design Workshop', 0, 1, 5),
(493, 'EIR6V6', 'Comprehensive Viva - Vi', 0, 4, 5),
(494, 'MER6V6', 'Comprehensive Viva - Vi', 0, 4, 10),
(495, 'MER6L4', 'Workshop/Machine Design - II Lab', 0, 1, 10),
(496, 'VLR6L4', 'Technical Skills', 0, 1, 4),
(497, 'VLR6V6', 'Comprehensive Viva - Vi', 0, 4, 4),
(498, 'AVR4C1', 'Engineering Geology', 4, 0, 4),
(499, 'VLR6C1', 'Structural Analysis - I', 4, 0, 4),
(500, 'VLR6C2', 'Transportation Engineering - I', 4, 1, 4),
(501, 'VLR6C3', 'Design of Steel Structures - I', 4, 1, 4),
(502, 'VLR6E1', 'Geotechnical Engineering - II', 4, 1, 4),
(503, 'VLR6G4', 'Construction Planning & Management', 4, 0, 4),
(504, 'SVR6S6', 'Entrepreneurship Development & Ipr', 2, 0, 15),
(505, 'MER1C5', 'Workshop Practice', 0, 3, 10),
(506, 'EIR6C1', 'Vlsi Design', 4, 0, 5),
(507, 'EIR6C2', 'Medical & Analytical Instrumentation', 4, 1, 5),
(508, 'EIR6C3', 'Control System', 4, 1, 5),
(509, 'EIR6E1', 'Linear Integrated Circuit', 4, 1, 5),
(510, 'SER6S6', 'Entrepreneurship and IPR Development', 2, 0, 7),
(511, 'EIR6G4', 'Computer Network', 4, 0, 5),
(513, 'ETR6C1', 'Vlsi Design', 4, 0, 6),
(514, 'ETR6C2', 'Mobile & Wireless Communication', 4, 1, 6),
(515, 'ETR6C3', 'Control System', 4, 1, 6),
(516, 'ETR6E1', 'Linear Integrated Circuits', 4, 1, 6),
(517, 'STR6S6', 'Enterpreneurship and Ipr Development', 2, 0, 15),
(518, 'ETR6G4', 'Computer Networks', 4, 0, 6),
(519, 'AM4EC3', 'Computer Network - Internet & Web Technology', 3, 0, 7),
(520, 'AM4PR4', 'Computer Lab - Iv', 0, 2, 7),
(521, 'AM4CV4', 'Comprehensive Viva - Iv', 0, 4, 7),
(522, 'ITR6C1', 'Wireless Protocols and Mobile Networks', 4, 0, 8),
(523, 'ITR6C2', 'Design and Anlaysis of Algorithms', 4, 1, 8),
(524, 'ITR6C3', 'Network and Information Security', 4, 1, 8),
(525, 'ITR6G4', 'Compiler Design', 4, 0, 8),
(526, 'SIR6S6', 'Entrepreneurship Development & Ipr', 2, 0, 15),
(527, 'ITR6E1', 'Software Testing & Quality Assurance', 4, 1, 8),
(528, 'CER4L2', 'Hands-on Android Programming', 0, 1, 9),
(529, 'MER6C1', 'Machine Design - II', 4, 0, 10),
(530, 'MER6C2', 'Production Engineering - II', 4, 1, 10),
(531, 'MER6C3', 'Fluid Machines', 4, 1, 10),
(532, 'MER6C4', 'Energy Conversion System', 4, 1, 10),
(533, 'MER6G1', 'Materials Management', 4, 0, 10),
(534, 'SMR6S6', 'Entrepreneurship Development & Ipr', 2, 0, 15),
(535, 'ISR2G1', 'Advance Cloud Computing', 4, 0, 1),
(536, 'AMP1C1', 'Applied Mathematics - I', 3, 0, 15),
(537, 'ACP1C2', 'Chemistry & Environment Science', 3, 1, 15),
(538, 'MEP1C3', 'Elements of Mechanical Engineering', 3, 1, 10),
(539, 'ETP1C4', 'Basic Electrical Engineering', 3, 1, 6),
(540, 'MEP4C1', 'Theory of Machines', 3, 1, 10),
(541, 'MEP4C2', 'Mechatronics', 3, 1, 10),
(542, 'MEP4G1', 'Applied Thermodynamics', 3, 0, 10),
(543, 'MEP4E1', 'Fluid Mechanics', 3, 1, 10),
(544, 'MEP6C1', 'Production Engineering', 3, 1, 10),
(545, 'MEP6C2', 'Fluid Machines', 3, 1, 10),
(546, 'MEP6G1', 'Machine Design - II', 3, 0, 10),
(547, 'MEP6E1', 'Energy Conversion Systems', 3, 1, 10),
(548, 'SEP2C3', 'Software Construction', 4, 1, 2),
(549, 'SEP2E1', 'Database Engineering', 4, 1, 2),
(550, 'ASP2S1', 'Soft Skills - I', 2, 0, 14),
(551, 'SEP2W1', 'Seminar/Workshop/Research Tool', 2, 0, 2),
(552, 'SEP2V2', 'Comprehensive Viva - II', 0, 4, 2),
(553, 'DCP2C3', 'Advance Computer Networks', 4, 1, 12),
(554, 'DCP2E1', 'Satellite Communication', 4, 1, 12),
(555, 'DCP2W1', 'Seminar/Workshop/Research Tool', 0, 2, 12),
(556, 'DCP2V2', 'Comprehensive Viva - II', 0, 2, 12),
(557, 'IMP2C3', 'Production & Operations System', 4, 1, 3),
(558, 'IMP2E1', 'Sqc & Tqm', 4, 1, 3),
(559, 'IMP2W1', 'Research/Workshop/Research Tool', 2, 0, 3),
(560, 'IMP2V2', 'Comprehensive Viva - II', 0, 2, 3),
(561, 'DCP4C3', 'System Design Using Verilog', 4, 1, 12),
(562, 'DCP4E1', 'Analog & Digital Cmos Ckt', 4, 1, 12),
(563, 'DCP4W2', 'Seminar/Workshop/Research Tool', 2, 0, 12),
(564, 'DCP4V4', 'Comprehensive Viva - Iv', 0, 2, 12),
(565, 'IMP4C3', 'Supply Chain Management', 4, 1, 3),
(566, 'IMP4E1', 'Marketing Management', 4, 1, 3),
(567, 'ASP4S2', 'Soft Skills - II', 2, 0, 14),
(568, 'IMP4W2', 'Seminar/Workshop/Research Tool', 2, 0, 3),
(569, 'IMP4V4', 'Comprehensive Viva - Iv', 0, 2, 3),
(570, 'DTP4C3', 'Machine Vibrations Analysis', 4, 1, 3),
(571, 'DTP4E1', 'Computer Aided Mechanism Design', 4, 1, 3),
(572, 'DTP4W2', 'Seminar/Workshop/Research Tool', 2, 0, 3),
(573, 'DTP4V4', 'Comprehensive Viva - Iv', 0, 2, 3),
(574, 'BEP2V2', 'Comprehensive Viva - II', 0, 4, 10),
(575, 'BEP4V4', 'Comprehensive Viva - Iv', 0, 4, 10),
(576, 'BEP6V6', 'Comprehensive Viva - Vi', 0, 4, 10),
(577, 'DCP6V6', 'Comprehensive Viva - VI', 0, 4, 12),
(578, 'ISR4V4', 'Comprehensive Viva - Iv', 0, 4, 1),
(579, 'SER4V4', 'Comprehensive Viva - Iv', 0, 4, 2),
(580, 'SER3V3', 'Comprehensive Viva - III', 0, 4, 2),
(581, 'MEP3C1', 'Material Science', 3, 1, 10),
(582, 'DTR4V4', 'Comprehensive Viva - Iv', 0, 4, 3),
(583, 'VLR3L1', 'Drafting & Computational Skills', 0, 1, 4),
(584, 'VLR3V3', 'Comprehensive Viva - III', 0, 4, 4),
(585, 'MEP5C2', 'Heat Transfer', 4, 1, 10),
(586, 'MEP3G1', 'Machine Design & Drawing', 3, 0, 10),
(587, 'MEP3E1', 'Manufacturing Processes', 3, 1, 10),
(588, 'MEP3C2', 'Strength of Materials', 3, 1, 10),
(589, 'MEP5E1', 'Heat & Mass Transfer', 3, 1, 10),
(590, 'SEP6V6', 'Comprehensive Viva - Vi', 0, 4, 2),
(591, 'IMR4V4', 'Comprehensive Viva - Iv', 0, 4, 3),
(592, 'IMP6V6', 'Comprehensive Viva - Vi', 0, 4, 3),
(593, 'DTP6V6', 'Comprehensive Viva - Vi', 0, 4, 3),
(594, 'ITR7P1', 'Project Phase - I', 0, 7, 8),
(595, 'ITR7C1', 'Cloud Computing', 4, 1, 8),
(596, 'ITR7C2', 'Computer Graphics', 4, 1, 8),
(597, 'ITR7E1', 'Big Data Analytics', 4, 1, 8),
(598, 'ITR7G5', 'Artificial Intellignence', 4, 0, 8),
(599, 'ITR7V7', 'Comprehensive Viva - VII', 0, 4, 8),
(600, 'CER7P1', 'Project Phase - I', 0, 7, 9),
(601, 'CER7C1', 'Distributed Computing', 4, 0, 9),
(602, 'CER7C2', 'Cloud Computing', 4, 1, 9),
(603, 'CER7C3', 'Artificial Intelligence', 4, 1, 9),
(604, 'CER7E1', 'Machine Learning', 4, 1, 9),
(605, 'CER7V7', 'Comprehensive Viva - VII', 0, 4, 9),
(606, 'ETR7P1', 'Project Phase - I', 0, 7, 6),
(607, 'ETR7C2', 'Operating System', 4, 0, 6),
(608, 'ETR7C3', 'Antenna and Wave Propogation', 4, 1, 6),
(609, 'ETR7C4', 'Rf and Microwave Engineeirng', 4, 1, 6),
(610, 'ETR7E1', 'Circuit Design Using Hdl', 4, 1, 6),
(611, 'ETR7V7', 'Comprehensive Viva - VII', 0, 4, 6),
(612, 'EIR7P1', 'Project Phase - I', 0, 7, 5),
(613, 'EIR7C2', 'Operating System', 4, 0, 5),
(614, 'EIR7C3', 'Intelligent Instrumentation System', 4, 1, 5),
(615, 'EIR7C4', 'Process Instrumentation & Control', 4, 1, 5),
(616, 'EIR7E1', 'Circuit Design Using Hdl', 4, 1, 5),
(617, 'EIR7V7', 'Comprehensive Viva - VII', 0, 4, 5),
(618, 'MER7C1', 'Operations Research', 4, 0, 10),
(619, 'MER7C2', 'Machine Design - III', 4, 1, 10),
(620, 'MER7C3', 'Refrigeration & Air Conditioning', 4, 1, 10),
(621, 'MER7E1', 'SQC & TQM', 4, 1, 10),
(622, 'MER7P1', 'Project Phase - I', 0, 7, 10),
(623, 'MER7V7', 'Comprehensive Viva - VII', 0, 4, 10),
(624, 'VLR7P1', 'Project Phase - I', 0, 7, 4),
(625, 'VLR7C1', 'Transportation Engineering - II', 4, 1, 4),
(626, 'VLR7C2', 'Design of Steel Structures - II', 4, 1, 4),
(627, 'VLR7E1', 'Environmental Engineering - II', 4, 1, 4),
(628, 'VLR7G5', 'Structural Analysis - II', 4, 0, 4),
(629, 'VLR7V7', 'Comprehensive Viva -VII', 0, 4, 4),
(630, 'AMP2C1', 'Applied Mathematics - II', 3, 0, 15),
(631, 'APP2C2', 'Applied Physics', 3, 1, 15),
(632, 'MEP2C3', 'Engineering Drawing', 3, 1, 10),
(633, 'ETP2C4', 'Basic Electronics', 3, 1, 6),
(634, 'CER3V3', 'Comprehensive Viva - III', 0, 4, 9),
(635, 'CER5V5', 'Comprehensive Viva - V', 0, 4, 9),
(636, 'SER1V1', 'Comprehensive Viva - I', 0, 4, 2),
(637, 'ISR1V1', 'Comprehensive Viva - I', 0, 4, 1),
(638, 'ISR3V3', 'Comprehensive Viva - III', 0, 4, 1),
(639, 'MER3V3', 'Comprehensive Viva - III', 0, 4, 10),
(640, 'MER5V5', 'Comprehensive Viva - V', 0, 4, 10),
(641, 'VLR5L3', 'Design Skills', 0, 1, 4),
(642, 'MEP3V3', 'Comprehensive Viva - III', 0, 4, 10),
(643, 'MEP5C1', 'Dynamics of Machines', 3, 1, 10),
(644, 'MEP5C3', 'IC Engine and Jet Propulsion', 3, 1, 10),
(645, 'MEP5G1', 'Machine Design - I', 3, 0, 10),
(646, 'MEP5V5', 'Comprehensive Viva - V', 0, 4, 10),
(647, 'MEP7C1', 'Machine Design - III', 3, 0, 10),
(648, 'MEP7C2', 'Refrigeration and Air Conditioning', 3, 1, 10),
(649, 'MEP7E1', 'Automobile Engineering', 3, 1, 10),
(650, 'MEP7P1', 'Project Phase - I', 0, 4, 10),
(651, 'MEP7V7', 'Comprehensive Viva - VII', 0, 4, 10),
(652, 'ETR3V3', 'Comprehensive Viva - III', 0, 4, 6),
(653, 'ETR5V5', 'Comprehensive Viva - V', 0, 4, 6),
(654, 'DCR1V1', 'Comprehensive Viva - I', 0, 4, 12),
(655, 'DCR1E1', 'Satellite Communication', 3, 1, 12),
(656, 'DCR3V3', 'Comprehensive Viva - III', 0, 4, 12),
(657, 'DCP1C1', 'Modern Communication System', 3, 1, 12),
(658, 'DCP1C2', 'Embedded System Using Arm Microcontroller', 3, 1, 12),
(659, 'DCP1G1', 'Advance System Design', 4, 0, 12),
(660, 'DTR1V1', 'Comprehensive Viva - I', 0, 4, 3),
(661, 'IMR1V1', 'Comprehensive Viva - I', 0, 4, 3),
(662, 'DIR1V1', 'Comprehensive Viva - I', 0, 4, 11),
(663, 'SEP1C1', 'Advanced Algorithms', 4, 1, 2),
(664, 'SEP1C2', 'Object Oriented Analysis and Design', 4, 1, 2),
(665, 'SEP1G1', 'Soft Computing', 4, 0, 2),
(666, 'SEP1V1', 'Comprehensive Viva - I', 0, 2, 2),
(668, 'IMP1C1', 'Productivity and Technology Management', 4, 1, 3),
(669, 'IMP1C2', 'Quantitative Techniques for Management', 4, 1, 3),
(670, 'IMP1G1', 'Principles and Practice of Management', 4, 0, 3),
(671, 'IMP1V1', 'Comprehensive Viva - I', 0, 2, 3),
(672, 'DTP1C1', 'Tribology', 4, 1, 3),
(673, 'DTP1C2', 'Design of Internal Combustion Engine Systems', 4, 1, 3),
(674, 'DTP1G1', 'Advance Thermodynamics', 4, 0, 3),
(675, 'DTP1V1', 'Comprehensive Viva - I', 0, 2, 3),
(676, 'DCP1V1', 'Comprehensive Viva - I', 0, 4, 12),
(677, 'DCP3C1', 'Modelling and Simulation', 4, 1, 12),
(678, 'DCP3C2', 'Mobile Communication Networks', 4, 1, 12),
(679, 'DCP3G1', 'Broadband Access Technology', 4, 0, 12),
(680, 'DCP3V1', 'Comprehensive Viva - III', 0, 4, 12),
(681, 'DTP3V3', 'Comprehensive Viva - III', 0, 2, 3),
(682, 'IMP3V1', 'Comprehensive Viva - III', 0, 2, 3),
(683, 'SEP3V3', 'Comprehensive Viva - III', 0, 2, 2),
(684, 'SEP5V5', 'Comprehensive Viva - V', 0, 4, 2),
(685, 'IMP5V5', 'Comprehensive Viva - V', 0, 4, 3),
(686, 'DTP5V5', 'Comprehensive Viva - V', 0, 4, 3),
(687, 'DCP5V5', 'Comprehensive Viva - V', 0, 4, 12),
(688, 'VLR5V5', 'Comprehensive Viva - V', 0, 4, 4),
(689, 'DCP3G2', 'Nanodevices and Nanosensors', 4, 0, 12),
(690, 'AM1PR1', 'Computer Lab - I', 0, 2, 7),
(691, 'AM1CV1', 'Comprehensive Viva - I', 0, 4, 7),
(692, 'AM3CV3', 'Comprehensive Viva - III', 0, 4, 7),
(693, 'AM3PR3', 'Computer Lab - III', 0, 2, 7),
(694, 'ITR3V3', 'Comprehensive Viva - III', 0, 4, 8),
(695, 'ITR5V5', 'Comprehensive Viva - V', 0, 4, 8),
(696, 'ITR8V8', 'COMPREHENSIVE VIVA-VIII', 0, 4, 8),
(697, 'EIR3V3', 'Comprehensive Viva - III', 0, 4, 5),
(698, 'EIR5V5', 'Comprehensive Viva - V', 0, 4, 5),
(699, 'DIR3V3', 'Comprehensive Viva - III', 0, 4, 11),
(700, 'DIR4V4', 'Comprehensive Viva - V', 0, 4, 11),
(701, 'DCR4V4', 'Comprehensive Viva - IV', 0, 4, 12),
(702, 'DTR3V3', 'Comprehensive Viva - III', 0, 4, 3),
(703, 'IMR3V3', 'Comprehensive Viva - III', 0, 4, 3),
(704, 'DTP2V2', 'Comprehensive Viva - II', 0, 4, 3),
(705, 'MEP4V4', 'Comprehensive Viva - Iv', 0, 4, 10),
(706, 'MEP6V6', 'Comprehensive Viva - VI', 0, 4, 10),
(707, 'MEP8V8', 'Comprehensive Viva - VIIi', 0, 4, 10),
(708, 'CER3L1', 'Computer Hardware Lab', 0, 1, 9),
(709, 'ETP2V2', 'Comprehensive Viva - II', 0, 4, 6),
(710, 'ETR5L3', 'Software Workshop', 0, 1, 6),
(711, 'MEP3C3', 'Manufacturing Process', 3, 1, 10),
(712, 'ITR3L1', 'Computer Hardware Lab', 0, 1, 8),
(713, 'ITR5L3', 'Scripting Language Laboratory', 0, 1, 8),
(714, 'COP2C4', 'Computer Programming in C++', 3, 1, 9),
(715, 'CER5L3', 'Software Lab', 0, 1, 9),
(716, 'EIR3L1', 'Electronic Workshop - I', 0, 1, 5),
(717, 'ETR3L1', 'Electronic Workshop - I', 0, 1, 6),
(718, 'MER3L1', 'Workshop (App. Thermodyanamics)', 0, 1, 10),
(719, 'DIP1C1', 'Industrial Transducers & Smart Sensors', 4, 1, 11),
(720, 'DIP1C2', 'Embedded System using ARM Microcontroller', 4, 1, 11),
(721, 'DIP1G1', 'Advance System Design', 4, 0, 11),
(722, 'DIP1V1', 'Comprehensive Viva - I', 0, 2, 11),
(723, 'ISR1W1', 'Seminar/Workshop/Research Tool', 0, 2, 1),
(724, 'SER3S3', 'Effective Comm. Skills', 2, 0, 15),
(725, 'MER5L3', 'Workshop(Machine Design - I)', 0, 1, 10),
(726, 'BEP1V1', 'Comprehensive Viva - I', 0, 4, 10),
(727, 'CER8C1', 'INFORMATION RETREIVAL & EXTRACTION', 4, 0, 9),
(728, 'CER8C2', 'NETWORK &INFORMAION SECURITY', 4, 1, 9),
(729, 'CER8C3', 'DATA SCIENCES', 4, 1, 9),
(730, 'ERR8E1', 'SOFT COMPUTING', 4, 1, 9),
(731, 'CER8V8', 'COMPREHENSIVE VIVA-VIII', 0, 4, 9),
(732, 'CER8P2', 'PROJECT PHASE-II', 0, 7, 9),
(733, 'ITR8P2', 'PROJECT PHASE-II', 0, 7, 8),
(734, 'ITR8C1', 'DATA WAREHOUSING & MINING', 4, 1, 8),
(735, 'ITR8C2', 'HUMAN-COMPUTER INTERACTION', 4, 1, 8),
(736, 'ITR8E1', 'MACHINE LEARNING', 4, 1, 8),
(737, 'ITR8G6', 'PRINCIPLES OF MOBILE COMPUTING', 4, 0, 8),
(739, 'ETR8P2', 'PROJECT PHASE-II', 0, 7, 6),
(740, 'MER8C1', 'PRODUCTION & OPERATIONS MANAGEMENT', 4, 0, 10),
(741, 'MER8C2', 'VIBRATION & NOISE CONTROL', 4, 1, 10),
(742, 'MER8C3', 'AUTOMOBILE ENGINEERING', 4, 1, 10),
(743, 'MER8E1', 'CAD/CAM', 4, 1, 10),
(744, 'MER8P2', 'PROJECT PHASE-II', 0, 7, 10),
(745, 'MER8V8', 'COMPREHENSIVE VIVA-VIII', 0, 4, 10),
(746, 'VLR8P2', 'PROJECT PHASE-II', 0, 7, 4),
(747, 'VLR8C1', 'DESIGN OFHYDRAULIC & IRRIGATION STRUCTURE', 4, 1, 4),
(748, 'VLR8C2', 'BULIDING PLANNING & ARCHITECTURE', 4, 1, 4),
(749, 'VLR8E1', 'DISASTER MODELLING & MANAGEMENT', 4, 1, 4),
(750, 'VLR8G6', 'CONSTRUCTION TECHNIQUES', 4, 0, 4),
(751, 'VLR8V8', 'COMPREHENSIVE VIVA-VIII', 0, 4, 4),
(752, 'ETR8C1', 'TELECOM NETWORKS', 4, 0, 6),
(753, 'ETR8C2', 'OPTICAL COMMUNICATION', 4, 1, 6),
(754, 'ETR8C3', 'SATELLITE & NAVIGATION SYSTEM', 4, 1, 6),
(755, 'ETR8E1', 'INTERNET OF THINGS', 4, 1, 6),
(756, 'ETR8V8', 'COMPREHENSIVE VIVA-VIII', 0, 4, 6),
(757, 'EIR8P2', 'PROJECT PHASE-II', 0, 7, 5),
(758, 'EIR8C1', 'EMBEDDED SYSTEM', 4, 0, 5),
(759, 'EIR8C2', 'OPTICAL INSTRUMENTATION', 4, 1, 5),
(760, 'EIR8C3', 'INTERNET OF THINGS', 4, 1, 5),
(761, 'EIR8E1', 'NETWORK SECURITY', 4, 1, 5),
(762, 'EIR8V8', 'COMPREHENSIVE VIVA-VIII', 0, 4, 5),
(763, 'CER8E1', 'Soft Computing', 4, 1, 9),
(764, 'SEP4C6', 'Software Testing & Quality Assurance', 4, 1, 2),
(765, 'SEP4E4', 'Speech & Language Processing', 4, 1, 2),
(766, 'SEP4V4', 'Comprehensive Viva - IV', 0, 2, 2),
(767, 'SEP4W2', 'Seminar/ Workshop /Research Tool', 0, 2, 2),
(769, 'CER8I1', 'Industry Internship', 0, 20, 9),
(770, 'CER8G3', 'MOOC/SWAYAM Course - I (Data Analytics with Python)', 3, 0, 9),
(771, 'CER8G4', 'MOOC/SWAYAM Course - II (Deep Learning)', 3, 0, 9),
(772, 'CER8VI', 'Comprehensive Viva - VIII', 0, 4, 9),
(773, 'VLR8I1', 'Industry Internship', 0, 20, 4),
(774, 'VLR8VI', 'Comprehensive Viva - VIII', 0, 4, 4),
(775, 'VLR8G4', 'MOOC/SWAYAM Course - I (Maintenance and Repair of Concrete Strucutures)', 3, 0, 4),
(776, 'VLR8G5', 'MOOC/SWAYAM Course - II (Geosynthetics and Reinforced Soil Structures)', 3, 0, 4),
(777, 'ITR8I1', 'Industry Internship', 0, 20, 8),
(778, 'ITR8G3', 'MOOC/SWAYAM Course - I (Introduction to Industry 4.0 & IIoT)', 3, 0, 8),
(779, 'ITR8G7', 'MOOC/SWAYAM Course - II (Social Networks)', 3, 0, 8),
(780, 'ITR8VI', 'Comprehensive Viva - VIII', 0, 4, 8),
(781, 'ETR8I1', 'Industry Internship', 0, 20, 6),
(782, 'ETR8G4', 'MOOC/SWAYAM Course - I (Roadmap for Patent Creation)', 3, 0, 6),
(783, 'ETR8G3', 'MOOC/SWAYAM Course - II (Introduction to Internet of Things)', 3, 0, 6),
(784, 'ETR8VI', 'Comprehensive Viva - VIII', 0, 4, 6),
(785, 'EIR8I1', 'Industry Internship', 0, 20, 5),
(786, 'EIR8G4', 'MOOC/SWAYAM Course - I (Roadmap for Patent Creation)', 3, 0, 5),
(787, 'EIR8G3', 'MOOC/SWAYAM Course - II (Introduction to Internet of Things)', 3, 0, 5),
(788, 'EIR8VI', 'Comprehensive Viva - VIII', 0, 4, 5),
(789, 'MER8I1', 'Industry Internship', 0, 20, 10),
(790, 'MER8G2', 'MOOC/SWAYAM Course - I (Product Design and Manufacturing)', 3, 0, 10),
(791, 'MER8G4', 'MOOC/SWAYAM Course - II (Introduction to Robotics)', 3, 0, 10),
(792, 'MER8VI', 'Comprehensive Viva - VIII', 0, 4, 10),
(793, 'MEP8C1', 'Power Plant Engineering', 3, 0, 10),
(794, 'MEP8C2', 'Vibration & Noise Control', 3, 1, 10),
(795, 'MEP8E1', 'Production & Operations Management', 3, 1, 10),
(796, 'MEP8P2', 'Project Phase - II', 0, 4, 10),
(797, 'DIP2C3', 'Modern Control System', 4, 1, 11),
(798, 'DIP2W1', 'Seminar/Workshop/Research Tool', 0, 2, 11),
(799, 'DIP2E4', 'Advance Digital Signal Processing', 4, 1, 11),
(800, 'DIP2V2', 'Comprehensive Viva - II', 0, 2, 11),
(801, 'DTP2C3', 'Advance Machine Design', 4, 1, 3),
(802, 'DTP2E1', 'Advance Mechanics of Solids', 4, 1, 3),
(803, 'DTP2W1', 'Seminar/ Workshop/Research Tool', 0, 2, 3),
(805, 'MER8E4', 'Power Plant Engg', 4, 1, 10),
(806, 'MER7E4', 'Tribology', 4, 1, 10),
(807, 'ETP3C1', 'Digital Electronics', 4, 1, 6),
(808, 'ETP3C2', 'Elex. & Elec. Measurements', 4, 1, 6),
(809, 'ETP3C3', 'Network Analysis', 4, 1, 6),
(810, 'ETP3G2', 'Elec. Device & Fabrication', 4, 0, 6),
(811, 'ETP3V3', 'Comprehensive Viva - III', 0, 4, 6),
(813, 'AM3GE2', 'Integral Transform', 4, 0, 7),
(814, 'DIP3C1', 'Digital Image Processing', 4, 1, 11),
(815, 'DIP3C2', 'Process Instrumentation & Indus. Control', 4, 1, 11),
(816, 'DIP3G3', 'Modeling and Simulation', 4, 0, 11),
(817, 'DIP3V3', 'Comprehensive Viva - III', 0, 2, 11),
(818, 'DCR3D1', 'Dissertation Phase-I', 0, 12, 12),
(819, 'DCP5D1', 'Dissertation Phase-I', 0, 12, 12),
(820, 'DTR1W1', 'Seminar/ Workshop/Research Tool', 0, 2, 3),
(821, 'DIR1W1', 'Seminar/ Research Tool/WorkShop- 1', 0, 2, 11),
(822, 'IMR1W1', 'Seminar/ Research Tool/ WorkShop - 1', 0, 2, 3),
(823, 'DCR1W1', 'Seminar/Workshop/Research Tool', 0, 2, 12),
(825, 'ETP4C2', 'Computer Organization', 3, 1, 6),
(826, 'ETP4C3', 'Analog Electronics', 3, 1, 6),
(827, 'ETP4C4', 'Analog Communication', 3, 1, 6),
(828, 'ETP4G2', 'Signal and System', 3, 0, 6),
(829, 'ETP4V4', 'Comprehensive Viva - IV', 0, 4, 6),
(830, 'MER8E2', 'Reliability Engineering', 4, 1, 10),
(831, 'DIP4C3', 'System Design Using Verilog', 4, 1, 11),
(832, 'DIP4E2', 'Analytical Instrumentation', 4, 1, 11),
(833, 'DIP4V4', 'Comprehensive Viva - IV', 0, 2, 11),
(834, 'ETP5C1', 'Digital Communication', 3, 1, 6),
(835, 'ETP5C2', 'EMF & Transmission Line', 3, 1, 6),
(836, 'ETP5C3', 'Microcontrollers', 3, 1, 6),
(837, 'ETP5G1', 'Digital Signal Processing', 3, 0, 6),
(838, 'ETP5V5', 'Comprehensive Viva - V', 0, 4, 6),
(839, 'ETP6C1', 'VLSI Design', 3, 1, 6),
(840, 'ETP6C2', 'Mobile and Wireless Communication', 3, 1, 6),
(841, 'ETP6C3', 'Linear Integrated Circuits', 3, 1, 6),
(842, 'ETP6G1', 'Computer Networks', 3, 0, 6),
(843, 'ETP6V6', 'Comprehensive Viva - VI', 0, 4, 6),
(844, 'DIP5V5', 'Comprehensive Viva - V', 0, 4, 11),
(845, 'DIP6V6', 'Comprehensive Viva - VI', 0, 4, 11),
(846, 'ETP7C1', 'RF and Microwave', 3, 0, 6),
(847, 'ETP7C2', 'Antenna and Wave Propogation', 3, 1, 6),
(848, 'ETP7E1', 'Circuit Design using HDL', 3, 1, 6),
(849, 'ETP7P1', 'Project Phase - I', 0, 4, 6),
(850, 'ETP7V7', 'Comprehensive Viva - VII', 0, 4, 6),
(851, 'ET22G1', 'Introduction to IoT', 3, 0, 6),
(852, 'ET22G2', 'Patent Law for Engineers and Scientists', 3, 0, 6),
(853, 'CE22G1', 'Deep Learning', 3, 0, 9),
(854, 'CE22G2', 'Blockchain and Its Applications', 3, 0, 9),
(855, 'IT22G1', 'Ethical Hacking', 3, 0, 8),
(856, 'IT22G2', 'Blockchain and Its Applications', 3, 0, 8),
(857, 'VL22G1', 'Maintenance and Repair of Concrete Structures', 3, 0, 4),
(858, 'VL22G2', 'Traffic Engineering', 3, 0, 4),
(859, 'EI22G1', 'Introduction to IoT', 3, 0, 5),
(860, 'EI22G2', 'Patent Law for Engineers and Scientists', 3, 0, 5),
(861, 'ME22G1', 'Product Design and Manufacturing', 3, 0, 10),
(862, 'ME22G2', 'Operations Management', 3, 0, 10),
(863, 'ETP8C1', 'Telecom Networks', 3, 0, 6),
(864, 'ETP8C2', 'Internet of Things', 3, 1, 6),
(865, 'ETP8E1', 'Satellite & Navigation System', 3, 1, 6),
(866, 'ETP8P2', 'Project Phase - II', 0, 4, 6),
(867, 'ETP8V8', 'Comprehensive Viva - VIII', 0, 4, 6),
(868, 'AM4DW1', 'Dissertation (Minor)', 0, 6, 7),
(869, 'AM4DS1', 'Seminar', 0, 2, 7);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `subject_table`
--
ALTER TABLE `subject_table`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `subject_code_UNIQUE` (`subject_code`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `subject_table`
--
ALTER TABLE `subject_table`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=870;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- desc subject_table;
-- select  * from subject_table;



-- FECULTY DETAILS BELOW --

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `IETDAVV_INDORE`
--

-- --------------------------------------------------------

--
-- Table structure for table `faculty_table`
--

CREATE TABLE `faculty_table` (
  `id` bigint(20) NOT NULL,
  `title` varchar(15) DEFAULT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `designation` varchar(50) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faculty_table`
--

INSERT INTO `faculty_table` (`id`, `title`, `first_name`, `last_name`, `designation`, `email`, `phone`) VALUES
(1, 'Dr.', 'Sapan', 'Tanted', 'Assistant', 'sapantanted99@gmail.com', '9039833963'),
(3, 'Mr.', 'Jai', 'Singh', '3', 'jaysingh@ietdavv.edu.in', '1234567962'),
(4, 'Ms.', 'Vinita', 'Ramchandani', '3', 'abc84@xyz.com', '1234567973'),
(5, 'Dr.', 'Sapanhello', 'Tanted', 'Hello', 'sapantanted90@gmail.com', '9039833963'),
(6, 'Mr.', 'Naman', 'Jain', 'Hll', 'Saan', 'sflskj'),
(7, 'Mr.', 'Ravindra', 'Yadav', '3', 'ryadav@ietdavv.edu.in', '1234568006'),
(8, 'Mr.', 'Amit', 'Mittal', '3', 'amittal@ietdavv.edu.in', '1234568017'),
(9, 'Mrs.', 'Reena', 'Disawal', '3', 'reenadisawal27@rediffmail.com', '1234568028'),
(10, 'Dr.', 'Shashi', 'Prakash', '3', 'sprakash@ietdavv.edu.in', '1234567891'),
(11, 'Ms.', 'Rubi', 'Jain', '3', 'abc13@xyz.com', '1234567902'),
(12, 'Dr.', 'Govind', 'Maheshwari', '3', 'gmaheshwari@ietdavv.edu.in', '1234567913'),
(13, 'Dr.', 'Sharad', 'Chaudhary', '3', 'schaudhary@ietdavv.edu.in', '1234567923'),
(14, 'Dr.', 'Ashesh', 'Tiwari', '3', 'atiwari@ietdavv.edu.in', '1234567931'),
(15, 'Dr.', 'Nagendra', 'Sohani', '3', 'nsohani@ietdavv.edu.in', '1234567932'),
(16, 'Dr.', 'Devendra', 'Verma', '3', 'dverma@ietdavv.edu.in', '1234567933'),
(17, 'Dr.', 'AmitKumar', 'Gupta', '3', 'akgupta@ietdavv.edu.in', '1234567934'),
(18, 'Dr.', 'Raksha', 'Upadhyay', '3', 'rupadhyay@ietdavv.edu.in', '1234567935'),
(19, 'Mr.', 'AmbikaPrasad', 'Shah', '3', 'abc47@xyz.com', '1234567936'),
(20, 'Mr.', 'Praveen', 'Singh', '3', 'psingh@ietdavv.edu.in', '1234567938'),
(21, 'Dr.', 'Priyadarshi', 'Ashok', '3', 'pdahat@ietdavv.edu.in', '1234567948'),
(22, 'Prof.', 'Kishore', 'Patil', '3', 'kishorpatiltembhi@gmail.com', '1234567954'),
(23, 'Prof.', 'Navneet', 'Shah', '3', 'navneetshah51@gmail.com', '1234567955'),
(24, 'Prof.', 'Raksha', 'Parulkar', '3', 'abc67@xyz.com', '1234567956'),
(25, 'Prof.', 'Ravindra', 'Kohli', '3', 'abc68@xyz.com', '1234567957'),
(26, 'Prof.', 'Vivek', 'Tiwari', '3', 'abc69@xyz.com', '1234567958'),
(27, 'Mr.', 'Lalit', 'Gehlod', '3', 'lgehlod@ietdavv.edu.in', '1234567959'),
(28, 'Dr.', 'G. L.', 'Prajapati', '3', 'glprajapati@ietdavv.edu.in', '1234567960'),
(29, 'Er.', 'Arpit', 'Agrawal', '3', 'aagrawal@ietdavv.edu.in', '1234567961'),
(30, 'Dr.', 'Anita', 'Seth', '3', 'aseth@ietdavv.edu.in', '1234567963'),
(31, 'Dr.', 'Ajay', 'Chhabaria', '3', 'alchhabria@gmail.com', '1234567964'),
(32, 'Ms.', 'Jasneet kaur', 'Monga', '3', 'abc76@xyz.com', '1234567965'),
(33, 'Mrs.', 'Madhvi', 'Jangalwa', '3', 'mjangalwa@ietdavv.edu.in', '1234567966'),
(34, 'Ms.', 'Shilpi', 'Jain', '3', 'abc78@xyz.com', '1234567967'),
(35, 'Mrs.', 'Pratibha', 'Singh', '3', 'abc79@xyz.com', '1234567968'),
(36, 'Mrs.', 'Shivangi', 'Bande', '3', 'sbande@ietdavv.edu.in', '1234567969'),
(37, 'Mrs.', 'Ankita', 'Neema', '3', 'ishankitagupta@gmail.com', '1234567970'),
(38, 'Dr.', 'Ashish', 'Jain', '3', 'ajain@ietdavv.edu.in', '1234567971'),
(40, 'Dr.', 'Vivek', 'Kapoor', '3', 'vkapoor@ietdavv.edu.in', '1234567974'),
(41, 'Dr.', 'Jagdish', 'Raikwal', '3', 'jraikwal@ietdavv.edu.in', '1234567975'),
(42, 'Dr.', 'Meena', 'Sharma', '3', 'msharma@ietdavv.edu.in', '1234567976'),
(43, 'Mr.', 'Vijay', 'Karma', '3', 'vkarma@ietdavv.edu.in', '1234567977'),
(44, 'Mr.', 'Ajeet', 'Bergalay', '3', 'abergaley@ietdavv.edu.in', '1234567978'),
(45, 'Dr.', 'Suwarna', 'Torgal', '3', 'storgal@ietdavv.edu.in', '1234567979'),
(46, 'Mr.', 'Ibrahim', 'Hussain', '3', 'ihussain@ietdavv.edu.in', '1234567980'),
(47, 'Dr.', 'Ravi', 'Sindal', '3', 'rsindal@ietdavv.edu.in', '1234567981'),
(48, 'Mr.', 'Shailendra', 'Pathak', '3', 'spathak@ietdavv.edu.in', '1234567982'),
(49, 'Mr.', 'Shahid', 'Khilji', '3', 'skhilji@ietdavv.edu.in', '1234567983'),
(50, 'Dr.', 'Uma', 'Bhatt', '3', 'umabhatt@ietdavv.edu.in', '1234567985'),
(51, 'Ms.', 'Divya', 'Kothari', '3', 'abc97@xyz.com', '1234567986'),
(52, 'Mr.', 'Girish', 'Patidar', '3', 'girishpatidar27@gmail.com', '1234567987'),
(53, 'Mr.', 'Gajendra', 'Verma', '3', 'gkverma64@gmail.com', '1234567988'),
(54, 'Mr.', 'Amit', 'Tiwari', '3', 'abc100@xyz.com', '1234567989'),
(55, 'Mrs.', 'Kasfina', 'Kapadiya', '3', 'abc101@xyz.com', '1234567990'),
(56, 'Mrs.', 'Monica', 'Dongliya', '3', 'abc102@xyz.com', '1234567991'),
(57, 'Dr.', 'Shaziya wasim', 'Khan', '3', 'abc103@xyz.com', '1234567992'),
(58, 'Dr.', 'Sufia', 'Aziz', '3', 'saziz@ietdavv.edu.in', '1234567993'),
(59, 'Dr.', 'Uday', 'Singh', '3', 'abc105@xyz.com', '1234567994'),
(60, 'Mr.', 'Girish', 'Parulkar', '3', 'abc107@xyz.com', '1234567996'),
(61, 'Mr.', 'Sudhanshu', 'Dubey', '3', 'abc108@xyz.com', '1234567997'),
(62, 'Dr.', 'Aarti', 'Saran', '3', 'asharan@ietdavv.edu.in', '1234567998'),
(63, 'Dr.', 'Rohit', 'Pathak', '3', 'rpathak@ietdavv.edu.in', '1234567999'),
(64, 'Dr.', 'Hemant', 'Makwana', '3', 'hmakwana@ietdavv.edu.in', '1234568000'),
(65, 'Dr.', 'Pratosh', 'Bansal', '3', 'pbansal@ietdavv.edu.in', '1234568001'),
(66, 'Mr.', 'Nitin', 'Chouhan', '3', 'abc113@xyz.com', '1234568002'),
(67, 'Mrs.', 'Mala', 'Dutta', '3', 'mdutta@ietdavv.edu.in', '1234568003'),
(68, 'Mrs.', 'Nachiket', 'Bhate', '3', 'nachiketbhate@gmail.com', '1234568004'),
(69, 'Er.', 'Somesh', 'Rathi', '3', 'abc116@xyz.com', '1234568005'),
(70, 'Ms.', 'Nidhi', 'Sharma', '3', '882nidhi@gmail.com', '1234568007'),
(71, 'Dr.', 'Pushpa', 'Raikwal', '3', 'praikwal@ietdavv.edu.in', '1234568008'),
(72, 'Mr.', 'Amit', 'Jha', '3', 'ajha@ietdavv.edu.in', '1234568009'),
(73, 'Ms.', 'Mansimran', 'Kaur', '3', 'abc121@xyz.com', '1234568010'),
(74, 'Mr.', 'Gopal', 'Yadav', '3', 'yadavgopal0902@gmail.com', '1234568011'),
(75, 'Er.', 'Pravin', 'Karma', '3', 'pkarma@ietdavv.edu.in', '1234568012'),
(76, 'Er.', 'Tapesh', 'Sarsodiya', '3', 'tsarsodia@ietdavv.edu.in', '1234568013'),
(77, 'Mr.', 'ChandraPrakash', 'Patidar', '3', 'cpatidar@ietdavv.edu.in', '1234568014'),
(78, 'Ms.', 'Urvi', 'Dharmsy', '3', 'abc126@xyz.com', '1234568015'),
(79, 'Mr.', 'Santosh', 'Kansal', '3', 'skansal@ietdavv.edu.in', '1234568016'),
(80, 'Mr.', 'Akhilesh', 'Lodwal', '3', 'alodwal@ietdavv.edu.in', '1234568018'),
(81, 'Mr.', 'Omprakash', 'Sondhiya', '3', 'osondhiya@ietdavv.edu.in', '1234568019'),
(82, 'Dr.', 'Ajay', 'Verma', '3', 'averma@ietdavv.edu.in', '1234568020'),
(83, 'Dr.', 'Sanjiv', 'Tokekar', '3', 'stokekar@ietdavv.edu.in', '1234568021'),
(84, 'Dr.', 'Vaibhav', 'Neema', '3', 'vneema@ietdavv.edu.in', '1234568022'),
(85, 'Ms.', 'Deepensha', 'Vaishnav', '3', 'deepensha@gmail.com', '1234568023'),
(86, 'Dr.', 'Dheeraj', 'Mandloi', '3', 'dmandloi@ietdavv.edu.in', '1234568024'),
(87, 'Mr.', 'Deepak', 'Batham', '3', 'dbatham@ietdavv.edu.in', '1234568025'),
(88, 'Ms.', 'Kamini', 'Agrawal', '3', 'abc137@xyz.com', '1234568026'),
(89, 'Dr.', 'Jitendra', 'Singh', '3', 'jsingh@ietdavv.edu.in', '1234568027'),
(90, 'Miss.', 'Tuhina', '', '3', 'abc140@xyz.com', '1234568029'),
(91, 'Mrs.', 'Sneha', 'Moghe', '3', 'smoghe@ietdavv.edu.in', '1234568030'),
(92, 'Dr.', 'Ruchi', 'Singh', '3', 'rsingh@ietdavv.edu.in', '1234568031'),
(93, 'Miss.', 'Soniya', 'Chabra', '3', 'abc143@xyz.com', '1234568032'),
(95, 'Dr.', 'Rachna', 'Gupta', '3', 'rgupta@ietdavv.edu.in', '1234568033'),
(97, 'Mr.', 'Jitendra', 'Soni', '3', 'jsoni@ietdavv.edu.in', '1234568034'),
(98, 'Mr.', 'Vivek', 'Vyas', '3', 'abc146@xyz.com', '1234568035'),
(99, 'Ms.', 'Sonam', 'Karodiya', '3', 'sonakash.2126@gmail.com', '1234568036'),
(100, 'Dr.', 'ShailendraSingh', 'Khinchi', '3', 'skhinchi@ietdavv.edu.in', '1234567892'),
(101, 'Dr.', 'Chandrashekhar', 'Chauhan', '3', 'cchauhan@ietdavv.edu.in', '1234567893'),
(102, 'Mr.', 'Suresh', 'Chandwani', '3', 'abc5@xyz.com', '1234567894'),
(103, 'Mr.', 'Manoj', 'Pawaiya', '3', 'mpawaiya@ietdavv.edu.in', '1234567895'),
(104, 'Mr.', 'Anuj', '', '3', 'abc7@xyz.com', '1234567896'),
(105, 'Dr.', 'Bhawna', 'Nigam', '3', 'bnigam@ietdavv.edu.in', '1234567897'),
(106, 'Ms.', 'Ankita', 'Nigam', '3', 'abc9@xyz.com', '1234567898'),
(107, 'Mr.', 'Vijay', 'Choudhary', '3', 'abc10@xyz.com', '1234567899'),
(108, 'Mr.', 'Madhur', 'Patidar', '3', 'abc11@xyz.com', '1234567900'),
(109, 'Mr.', 'Aditya', 'Nagdiya', '3', 'abc12@xyz.com', '1234567901'),
(110, 'Dr.', 'Deepshikha', 'Agrawal', '3', 'dr.deepshikhaashish@gmail.com', '1234567903'),
(111, 'Ms.', 'Binnie', 'Abraham', '3', 'abc15@xyz.com', '1234567904'),
(112, 'Dr.', 'Dheeraj', 'Nitnaware', '3', 'dnitnawwre@ietdavv.edu.in', '1234567905'),
(113, 'Mr.', 'Pawan', 'Makhija', '3', 'abc17@xyz.com', '1234567906'),
(114, 'Ms.', 'Shweta', 'Mourya', '3', 'abc18@xyz.com', '1234567907'),
(115, 'Mr.', 'Goutam', 'Verma', '3', 'abc19@xyz.com', '1234567908'),
(116, 'Ms.', 'Vedpriya', 'Dongre', '3', 'vdongre@ietdavv.edu.in', '1234567909'),
(117, 'Mrs.', 'Jyoti', 'Haweliya', '3', 'jhaweliya@ietdavv.edu.in', '1234567910'),
(118, 'Mrs.', 'Neha', 'Jaiswal', '3', 'abc22@xyz.com', '1234567911'),
(119, 'Mrs.', 'Meha', 'Sharma', '3', 'abc23@xyz.com', '1234567912'),
(120, 'Mrs.', 'Neha', 'Sharma', '3', 'abc25@xyz.com', '1234567914'),
(122, 'Mr.', 'Manish', 'Rajvaidya', '3', 'rajvaidyam@gmail.com', '1234567915'),
(123, 'Mr.', 'Dharmendra', 'Sharma', '3', 'abc27@xyz.com', '1234567916'),
(124, 'Mr.', 'Rahul', 'Tivari', '3', 'abc28@xyz.com', '1234567917'),
(125, 'Mr.', 'Bahm', 'Prakash', '3', 'abc29@xyz.com', '1234567918'),
(126, 'Ms.', 'Savita', 'Mourya', '3', 'savitamouryapimr1012@gmail.com', '1234567919'),
(127, 'Mr.', 'Manoj', 'Joshi', '3', 'abc31@xyz.com', '1234567920'),
(128, 'Dr.', 'Pushpa', 'Pathote', '3', 'kotwalpushpa@gmail.com', '1234567921'),
(129, 'Dr.', 'Neena', 'Sohani', '3', 'abc33@xyz.com', '1234567922'),
(130, 'Mr.', 'Vijay', 'Birccha', '3', 'abc35@xyz.com', '1234567924'),
(131, 'Mr.', 'Surendra', 'Shukla', '3', 'abc36@xyz.com', '1234567925'),
(132, 'Mr.', 'Anand', 'Prabhu', '3', 'abc37@xyz.com', '1234567926'),
(133, 'Ms.', 'Dhanshree', 'Kulkarni', '3', 'abc38@xyz.com', '1234567927'),
(134, 'Ms.', 'Tanushree', 'Agrawal', '3', 'tanushree.b.agrawal@gmail.com', '1234567928'),
(135, 'Ms.', 'Pallavi', 'Pandit', '3', 'abc40@xyz.com', '1234567929'),
(136, 'Dr.', 'S. C.', 'Bhatnagar', '3', 'sudhish.bhatnagar@gmail.com', '1234567930'),
(201, 'Ms.', 'Rewa', 'Bochare', '3', 'abc50@xyz.com', '1234567939'),
(202, 'Dr.', 'Kamna', 'Lad', '3', 'kamnalad@gmail.com', '1234567940'),
(203, 'Ms.', 'Sandeepa', 'Jayaswal', '3', 'abc52@xyz.com', '1234567941'),
(204, 'Ms.', 'Sonam', 'Yadav', '3', 'sonam.yadav1804@gmail.com', '1234567942'),
(205, 'Ms.', 'Monika', 'Dagliya', '3', 'abc54@xyz.com', '1234567943'),
(206, 'Mrs.', 'Jyoti', 'Soni', '3', 'jyotisoni@ietdavv.edu.in', '1234567944'),
(207, 'Mrs.', 'Nanda', 'Page', '3', 'pagenanda@gmail.com', '1234567945'),
(208, 'Dr.', 'A. N.', 'Patel', '3', 'abc57@xyz.com', '1234567946'),
(209, 'Mr.', 'Sachin', 'Karma', '3', 'abc58@xyz.com', '1234567947'),
(210, 'Mr.', 'Ankit', 'Soni', '3', 'abc60@xyz.com', '1234567949'),
(211, 'Mrs.', 'Shilpa', 'Mahajan', '3', 'mahajanshilpa69@gmail.com', '1234567950'),
(212, 'Mrs.', 'Poonam', 'Tejwani', '3', 'poonam_tejwani09@yahoo.com', '1234567951'),
(213, 'Ms.', 'Sonia', 'Chhabda', '3', 'abc63@xyz.com', '1234567952'),
(214, 'Mrs.', 'Seema', 'Chouhan', 'Lecturer', 'schouhan@ietdavv.edu.in', '9827255224'),
(997, 'Dr.', 'Pragya', 'Shukla', '3', 'pshukla@ietdavv.edu.in', '1234567995'),
(998, 'Dr.', 'Vrinda', 'Tokekar', '3', 'vtokekar@ietdavv.edu.in', '1234567984'),
(999, 'Dr.', 'Vaibhav', 'Jain', '3', 'vjain@ietdavv.edu.in', '1234567890'),
(1000, 'Ms.', 'Alka', 'Aman', 'Lecturer', 'aaman@ietdavv.edu.in', '9900990099'),
(1003, 'Mr.', 'Shyam', 'Maheshwari', 'Lecturer', 'smaheshwari@ietdavv.edu.in', '9900990099'),
(1004, 'Mr.', 'Ravindra', 'Verma', 'Lecturer', 'rverma@ietdavv.edu.in', '9900990099'),
(1005, 'Ms.', 'Ankita', 'Chourasiya', 'Lecturer', 'achourasia@ietdavv.edu.in', '9900990099'),
(1006, 'Mr.', 'Aditya', 'Makwe', 'Lecturer', 'amakwe@ietdavv.edu.in', '9900990099'),
(1007, 'Ms.', 'Harshita', 'Sharma', 'Lecturer', 'hsharma@ietdavv.edu.in', '9900990099'),
(1008, 'Mrs.', 'Nilima', 'Karankar', '3', 'nkarankar@ietdavv.edu.in', '9900990099'),
(1009, 'Mrs.', 'Priyanka', 'Sharma', 'Lecturer', 'psharma@ietdavv.edu.in', '9900990099'),
(1010, 'Mr. ', 'Malhar', 'Jog', 'Professor', 'jogmalhar@gmail.com', '8888888888'),
(1011, 'Ms.', 'Priya', 'Chouhan', 'Professor', 'cpriya14@gmail.com', '8888888888'),
(1012, 'Mr. ', 'Narendra', 'Solanki', 'Lecturer', 'nsolanki@ietdavv.edu.in', '8888888888'),
(1013, 'Mr.', 'Ashish', 'Panchal', 'Lecturer', 'apanchal@ietdavv.edu.in', '8888888888'),
(1014, 'Mr.', 'BrahmanSingh', 'Bhalavi', 'LECTURER', 'bbhalavi@ietdavv.edu.in', '9900990099'),
(1015, 'Ms.', 'Sangita', 'Solanki', 'LECTURER', 'ssolanki@ietdavv.edu.in', '9900990099'),
(1016, 'Ms.', 'Hemlata', 'Pal', 'LECTURER', 'hpal@ietdavv.edu.in', '9900990099'),
(1017, 'Ms.', 'Komal', 'Panwar', 'LECTURER', 'gef@xyz.com', '9900990099'),
(1018, 'Mr.', 'Ankit', 'Meshram', 'LECTURER', 'gfe@xyz.com', '9900990099'),
(1019, 'Mr.', 'Saurabh', 'Singh', 'LECTURER', 'eef@xyz.com', '9900990099'),
(1020, 'Mr.', 'Vijendra', 'Mishra', 'LECTURER', 'dde@xyz.com', '9900990099'),
(1021, 'Ms.', 'Alpa', 'Sharma', 'LECTURER', 'ffg@xyz.com', '9900990099'),
(1022, 'Mr.', 'Vikram', 'Dharkar', 'sf', 'vd@gmail.com', '1234567890'),
(1023, 'Mr.', 'Rishu', 'Jain', 'RJ', 'rj@gmai.com', '122323'),
(1024, 'Mr.', 'Deepak', 'Mathur', 'Lecturer', 'ddf@xyz.com', '9900990099'),
(1025, 'Mr. ', 'Sunny', 'Ganavadiya', 'Lecturer', 'test@abc.com', '9999999999'),
(1026, 'Ms.', 'Swati ', 'Bhagoriya', 'Lecturer', 'sbhagoriya@ietdavv.edu.in', '8888888888'),
(1027, 'Ms.', 'Shruti', 'Verma', 'Visiting', 'shruti.artprincess.verma@gmail.com', '8888888888'),
(1028, 'Mr.', 'Vikas', 'Wankhede', 'Lecturer', 'vvankhede@ietdavv.edu.in', '1234567890'),
(1030, 'Ms.', 'Krishnpriya', 'Neema', 'Lecturer', 'abc189@xyz.com', '1234567890'),
(1031, 'Mr.', 'Mayank', 'Devda', 'Lecturer', 'abc190@xyz.com', '1234567890'),
(1033, 'Mrs.', 'Avanti', 'Sharma', 'Lec.', 'asharma@ietdavv.edu.in', '9911991199'),
(1034, 'Mr.', 'Shashwat', 'Gupta', 'Lecturer', 'shashwatgupta5@gmail.com', '9922992233'),
(1037, 'Mrs.', 'Archana', 'Soni', 'Visiting', 'asoni_s@yahoo.com', '9999999999'),
(1038, 'Ms.', 'Deepshikha', 'Shukla', 'Lecturer', 'deepshikhashukla@yahoo.com', '0219276193'),
(1039, 'Ms.', 'Kashfina', 'Kapadia', 'Lecturer', 'kashfina@gmail.com', '123456892'),
(1040, 'Ms.', 'Divya', 'Gupta', 'Lecturer', 'divyaamodi1994@gmail.com', '2349729232'),
(1043, 'Ms.', 'Shazia', 'Umar', 'Lecturer', 'shazia.friends4@gmail.com', '9586284315'),
(1044, 'Mr.', 'Arif', 'Mirza', 'Lecturer', 'abcd889@xyx.com', '9827255224'),
(1045, 'Ms.', 'Pooja', 'Pandey', 'lect.', '123@Gmail.com', '9999997777'),
(1046, 'Mr.', 'Pranay', 'Chouhan', 'Visiting Prof', 'pranay.iet@gmail.com', '9999999999'),
(1047, 'Mr.', 'Test', 'Test', 'Visiting', 'abc444@gmail.com', '1111111111'),
(1048, 'Mr.', 'Jyotiprakash', 'Dwivedi', 'Visiting Prof', 'jp128dwivedi@gmail.com', '1111111111'),
(1052, 'Ms.', 'Sneha', 'Tank', 'Visiting Prof', 'sneha.tank25@yahoo.com', '1111111111'),
(1053, 'Ms.', 'Sneha', 'Nagar', 'Visiting Prof', 'nagarsneha07@gmail.com', '1111111111'),
(1054, NULL, ' ', 'Nigdha', 'Lecturer', 'webmaster@ietdavv.edu.in', NULL),
(1055, 'Ms.', 'Sonam', 'Nassikar', 'Visiting', 'sonamnasikkar23@gmail.com', '8888888888'),
(1056, 'Mr.', 'Rakesh', 'Verma', 'Visiting', 'rakeshverma3388@gmail.com', '8888888888'),
(1057, 'Mr.', 'Aditya', 'Sonwalkar', 'Visiting', 'abc13@xyz1.com', '8888888888'),
(1058, 'Mrs.', 'Sonali', 'Mandlik', 'Visiting', 'spathak11@gmail.com', '8888888888'),
(1059, 'Mr.', 'Ishwar', 'Kaushal', 'Visiting', 'ishwarkaushal72@gmail.com', '8888888888'),
(1060, 'Mr.', 'Nitesh', 'Karmarkar', 'Assistant Professor', 'niteshkarmakar27@gmail.com', NULL),
(1061, 'Mr.', 'Mayank', 'Sharma', 'Lecturer', 'leomayanksharma@gmail.com', NULL),
(1062, 'Mr.', 'Santosh', 'Patel', 'Lecturer', 'santosh.patel.cad@gmail.com', NULL),
(1063, 'Ms.', 'Kajol', 'Lodwal', 'Visiting', 'kajollodwal@gmail.com', NULL),
(1066, 'Mr.', 'Sameer', 'Bhave', 'Lecturer', 'sam132033@gmail.com', NULL),
(1067, 'Mr.', 'Neelesh', 'Sahu', 'Lecturer', 'neelesh.iet@gmail.com', NULL),
(1068, 'Ms.', 'Shikha', 'Dawre', 'Lecturer', 'shikhadawre5@gmail.com', NULL),
(1070, 'Ms.', 'Chanpreet', 'Kaur', 'Lecturer', 'chnprtkr24@gmail.com', NULL),
(1071, 'Dr.', 'Swarna', 'Shriya', 'Lecturer', 'swarnashriya@gmail.com', NULL),
(1073, 'Ms.', 'Abhilasha', 'Bhagwat', 'Lecturer', 'b_abhilasha@yahoo.com', NULL),
(1074, 'Dr.', 'Asmita', 'Vini', 'Lecturer', 'asmita.vini@gmail.com', '1111111111'),
(1075, 'Mrs.', 'Yogita', 'Tripathi', 'Lecturer', 'yogitatripathi22@gmail.com', NULL),
(1076, 'Ms.', 'Sipya', 'Khare', 'Lecturer', 'khare.93sipya@gmail.com', NULL),
(1077, 'Ms.', 'Yogita', 'Choudhary', 'Lecturer', 'rani33dalal@gmail.com', NULL),
(1079, 'Ms.', 'Sakina', 'Badshah', 'Lecturer', 'sbadshah@gmail.com', NULL),
(1083, 'Mr.', 'Bhupendra', 'Singh', 'Lecturer', 'bsingh@gmail.com', NULL),
(1084, 'Mr.', 'Pushpendra', 'Kushwah', 'Lecturer', 'pkushwah@gmail.com', NULL),
(1085, 'Ms.', 'Arpita', 'Bhatia', 'Lecturer', 'abhatia@gmail.com', NULL),
(1088, 'Mr.', 'Ankit', 'Yadav', 'Lecturer', 'ayankit1994@gmail.com', NULL),
(1089, NULL, 'Devendra', 'Dargaiya', 'Lecturer', 'dkdargaiya@ietdavv.edu.in', NULL),
(1090, 'Ms.', 'Pratibha', 'Umale', 'Lecturer', 'pratibhamarskole2004@gmail.com', NULL),
(1091, 'Mr.', 'Akhil', 'Parwal', 'Lecturer', 'inboxfakhil@gmail.com', NULL),
(1092, 'Ms.', 'Shushma', 'Khatri', 'Lecturer', 'skhatri10@gmail.com', NULL),
(1093, 'Ms.', 'Mariya', 'Johar', 'Lecturer', 'mariya1285@gmail.com', NULL),
(1094, 'Mr.', 'Himanshu', 'Bagwaiya', 'Lecturer', 'bagwaiya@gmail.com', NULL),
(1095, 'Mr.', 'Neeraj', 'Sharma', 'Lecturer', 'neerajdpsharma@gmail.com', NULL),
(1096, 'Ms.', 'Neha', 'Singh Rathore', 'Lecturer', 'nehasinghrathaur@gmail.com', NULL),
(1097, 'Ms.', 'Ayushi', '--', 'Lecturer', 'ayshigodara@gmail.com', NULL),
(1098, 'Dr.', 'Monika', 'Ahuja', 'Lecturer', 'ahujamonika9988@gmail.com', NULL),
(1099, 'Ms.', 'Shraddha', 'Jat', 'Lecturer', 'shraddhajat1704@gmail.com', '7987272816'),
(1100, 'Mr.', 'Nitin', 'Chouhan', 'Lecturer', '17phd792@ietdavv.edu.in', '9669522455'),
(1101, 'Ms.', 'Tanvi', 'Pareek', 'Lecturer', 'tanvipareek26@gmail.com', '9138100517'),
(1102, 'Ms.', 'Pratiksha', 'Sethi', 'Lecturer', 'pratikshasethi.1011@gmail.com', '9752145005');

--
-- desc faculty_table;
-- select  * from faculty_table;
--

--
-- Indexes for table `faculty_table`
--
ALTER TABLE `faculty_table`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email_col` (`email`),
  ADD KEY `id_col` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `faculty_table`
--
ALTER TABLE `faculty_table`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1103;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;



/*
CLASS_TABLE DETAILS
*/

CREATE TABLE `CLASS_TABLE`(
id bigint(20) primary key NOT NULL,
`subject_id` bigint(20) NOT NULL,
 Fac_id bigint(20) NOT NULL
);

ALTER TABLE class_table
 add foreign key (subject_id) references subject_table(id);
 
 ALTER TABLE class_table
 add foreign key (fac_id) references faculty_table(id);
 
/*to check details of foreign key in class_table*/

-- select * from information_schema.table_constraints
-- where table_name = 'class_table';

-- desc  class_table;
-- select  * from  class_table;


/* room_table Details Below*/

CREATE TABLE `ROOM_TABLE`(
`id` bigint(20) primary key NOT NULL,
`room_no` varchar(20),
`block_name` varchar(30),
`capacity` int(20)
  
);
-- desc  ROOM_table;
-- select  * from  ROOM_table;





/* TIME_SLOT TABLE DEATAILS*/

CREATE TABLE `TIME_SLOT_TABLE`(
`id` bigint(20) primary key NOT NULL,
`Start_time` time,
`End_time` time
  
);

-- desc  TIME_SLOT_TABLE;
-- select  * from  RTIME_SLOT_TABLE;

CREATE TABLE `DAY_BRANCH_TABLE`(

`class_id` bigint(20) NOT NULL,
`day` bigint(20),
`branch_sem_id` int(20) 
  
);

ALTER TABLE DAY_BRANCH_TABLE
 add foreign key (branch_sem_id) references BRANCH_SEM_TABLE(id);

CREATE TABLE `CLASS_INFO_TABLE`(
`id` bigint(20) not null,
`subject_id` bigint(20),
`room_id` bigint(20),
`time_slot_id`  bigint(20)
);

ALTER TABLE CLASS_INFO_TABLE
 add foreign key (subject_id) references class_table(id);


ALTER TABLE CLASS_INFO_TABLE
 add foreign key (room_id) references room_table(id);

ALTER TABLE CLASS_INFO_TABLE
 add foreign key (time_slot_id) references time_slot_table(id);

ALTER TABLE class_info_table
add foreign key (id) references day_branch_table(class_id);

-- desc   CLASS_INFO_TABLE;
-- select  * from   CLASS_INFO_TABLE;


/*
BRANCH_SEM_TABLE*/



CREATE TABLE `BRANCH_SEM_TABLE`(

`id` int(20) primary key NOT NULL,
`sem` bigint(20),
`branch` int(20) 
  
);






/*DAY_BRANCH_TABLE DETAILS*/


-- desc  DAY_BRANCH_TABLE;
-- select  * from  DAY_BRANCH_TABLE;



/*STATUS_TABLE */


CREATE TABLE `STATUS_TABLE`(


`date` datetime,
`subject_id` bigint(20), 
`status` int(20),
`message` varchar(200)
  
);

ALTER TABLE STATUS_TABLE
 add foreign key (subject_id) references CLASS_INFO_TABLE(subject_id);

insert into branch_sem_table values(1,6,9);

insert into day_branch_table (day,branch_sem_id,class_id) values
(1,1,1),
(2,1,2),
(3,1,3),
(4,1,4),
(5,1,5),
(6,1,6);

insert into class_table(id,subject_id,fac_id) values
(1,452,64),
(2,453,28),
(3,454,7),
(4,455,1007),
(5,456,1006),
(6,457,31);


-- +-----+--------------+-----------------------------------+----------------+-------------------+---------------+
-- | id  | subject_code | subject_name                      | theory_credits | practical_credits | department_id |
-- +-----+--------------+-----------------------------------+----------------+-------------------+---------------+
-- | 452 | CER6C1       | Computer Graphics & Visualization |              4 |                 0 |             9 |
-- | 453 | CER6C2       | Design and Analysis of Algorithm  |              4 |                 1 |             9 |
-- | 454 | CER6C3       | Compiler Techniques               |              4 |                 1 |             9 |
-- | 455 | CER6E1       | Data Warehousing & Mining         |              4 |                 1 |             9 |
-- | 456 | CER6G4       | Wireless and Mobile Networks      |              4 |                 0 |             9 |
-- | 457 | SCR6S6       | Professional Development          |              2 |                 0 |            15 |
-- +-----+--------------+-----------------------------------+----------------+-------------------+---------------+


-- +------+-------+------------+-----------+-------------+----------------------------+------------+
-- | id   | title | first_name | last_name | designation | email                      | phone      |
-- +------+-------+------------+-----------+-------------+----------------------------+------------+
-- |    7 | Mr.   | Ravindra   | Yadav     | 3           | ryadav@ietdavv.edu.in      | 1234568006 |
-- |   25 | Prof. | Ravindra   | Kohli     | 3           | abc68@xyz.com              | 1234567957 |
-- |   28 | Dr.   | G. L.      | Prajapati | 3           | glprajapati@ietdavv.edu.in | 1234567960 |
-- |   31 | Dr.   | Ajay       | Chhabaria | 3           | alchhabria@gmail.com       | 1234567964 |
-- |   64 | Dr.   | Hemant     | Makwana   | 3           | hmakwana@ietdavv.edu.in    | 1234568000 |
-- |   82 | Dr.   | Ajay       | Verma     | 3           | averma@ietdavv.edu.in      | 1234568020 |
-- |  109 | Mr.   | Aditya     | Nagdiya   | 3           | abc12@xyz.com              | 1234567901 |
-- | 1004 | Mr.   | Ravindra   | Verma     | Lecturer    | rverma@ietdavv.edu.in      | 9900990099 |
-- | 1006 | Mr.   | Aditya     | Makwe     | Lecturer    | amakwe@ietdavv.edu.in      | 9900990099 |
-- | 1007 | Ms.   | Harshita   | Sharma    | Lecturer    | hsharma@ietdavv.edu.in     | 9900990099 |
-- | 1057 | Mr.   | Aditya     | Sonwalkar | Visiting    | abc13@xyz1.com             | 8888888888 |
-- +------+-------+------------+-----------+-------------+----------------------------+------------+


insert into room_table(id,room_no,block_name,capacity) values
(1,6,"A",100);

insert into time_slot_table(id,start_time,end_time) VALUES
(1,"8:00","9:00"),
(2,"9:00","10:00"),
(3,"10:00","11:00"),
(4,"11:00","12:00"),
(5,"12:00","13:00"),
(6,"13:00","14:00"),
(7,"15:00","16:00"),
(8,"16:00","17:00");

insert into class_info_table(id,subject_id,room_id,time_slot_id) values
(1,1,1,2),
(1,2,1,3),
(1,3,1,4),
(1,4,1,6),
(1,2,1,7),
(2,1,1,2),
(2,2,1,3),
(2,5,1,4),
(2,4,1,6),
(2,6,1,7),
(3,4,1,2),
(3,5,1,3),
(3,3,1,4),
(3,6,1,6),
(3,1,1,7),
(4,1,1,2),
(4,2,1,3),
(4,3,1,4),
(4,4,1,6),
(5,1,1,2),
(5,2,1,3),
(5,3,1,4),
(5,4,1,6),
(5,5,1,7),
(6,1,1,2),
(6,3,1,3),
(6,5,1,5);