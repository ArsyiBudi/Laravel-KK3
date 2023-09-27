-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 27 Sep 2023 pada 10.23
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jagoit-crm-cm`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `activity`
--

CREATE TABLE `activity` (
  `id` int(11) NOT NULL,
  `activity_type_id` int(11) NOT NULL,
  `leads_id` int(11) NOT NULL,
  `xs1` varchar(255) DEFAULT NULL,
  `xs2` varchar(255) DEFAULT NULL,
  `xd` date DEFAULT NULL,
  `desc` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `activity`
--

INSERT INTO `activity` (`id`, `activity_type_id`, `leads_id`, `xs1`, `xs2`, `xd`, `desc`, `created_at`, `updated_at`) VALUES
(1, 9, 9, NULL, NULL, NULL, NULL, '2023-09-27 00:34:57', '2023-09-27 00:34:57'),
(2, 9, 3, NULL, NULL, NULL, NULL, '2023-09-27 01:06:20', '2023-09-27 01:06:20');

-- --------------------------------------------------------

--
-- Struktur dari tabel `emails`
--

CREATE TABLE `emails` (
  `id` int(11) NOT NULL,
  `leads_id` int(11) NOT NULL,
  `email_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `emails`
--

INSERT INTO `emails` (`id`, `leads_id`, `email_name`) VALUES
(1, 5, 'arsyibudi5@gmail.com'),
(2, 9, 'arsyibudi5@gmail.com');

-- --------------------------------------------------------

--
-- Struktur dari tabel `global_params`
--

CREATE TABLE `global_params` (
  `id_params` int(11) NOT NULL,
  `params_name` varchar(255) NOT NULL,
  `id_params_type` int(11) DEFAULT NULL,
  `params_type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `global_params`
--

INSERT INTO `global_params` (`id_params`, `params_name`, `id_params_type`, `params_type`) VALUES
(1, 'Recruitment', NULL, NULL),
(2, 'Training', NULL, NULL),
(3, 'Penawaran', NULL, NULL),
(4, 'Appointment Negoisasi', NULL, NULL),
(5, 'Masa Percobaan', NULL, NULL),
(6, 'PO Selesai', NULL, NULL),
(7, 'PO & PKS Selesai', NULL, NULL),
(8, 'Done', NULL, NULL),
(9, 'Appointment', NULL, NULL),
(10, 'Notes', NULL, NULL),
(11, 'Report', NULL, NULL),
(12, 'New', NULL, NULL),
(13, 'Offering', NULL, NULL),
(14, 'Interested', NULL, NULL),
(15, 'Order', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `leads`
--

CREATE TABLE `leads` (
  `id` int(11) NOT NULL,
  `business_name` varchar(255) NOT NULL,
  `business_sector` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `pic_name` varchar(255) NOT NULL,
  `pic_contact_number` varchar(255) NOT NULL,
  `client_indicator` tinyint(1) NOT NULL DEFAULT 0,
  `lead_status` int(11) NOT NULL DEFAULT 12,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `leads`
--

INSERT INTO `leads` (`id`, `business_name`, `business_sector`, `address`, `pic_name`, `pic_contact_number`, `client_indicator`, `lead_status`, `created_at`, `updated_at`) VALUES
(1, 'smitham.com', 'IT Support', 'Javonte Parkway', 'Dr. Wellington Hessel MD', '+1.385.717.3342', 1, 12, '2023-09-19 07:36:02', '2023-09-19 07:36:04'),
(2, 'aufderhar.biz', 'IT Support', 'Hazel Isle', 'Mrs. Augustine Carter', '+1.904.267.2228', 1, 12, '2023-09-19 07:36:02', '2023-09-19 07:36:03'),
(3, 'lind.com', 'IT Support', 'Reina Mews', 'Rose Jaskolski Sr.', '+1-475-258-7105', 1, 12, '2023-09-19 07:36:02', '2023-09-19 07:36:04'),
(4, 'wuckert.com', 'IT Support', 'Demond Mountain', 'Ruby Sporer', '908.632.6499', 1, 12, '2023-09-19 07:36:03', '2023-09-19 07:36:04'),
(5, 'marks.com', 'IT Support', 'Schinner Forks', 'Hester Hansen', '+1-747-973-8367', 0, 12, '2023-09-19 07:36:03', '2023-09-19 07:36:03'),
(6, 'stracke.com', 'IT Support', 'Daphney Light', 'Mozelle Lang', '+1-803-997-5402', 1, 12, '2023-09-19 07:36:03', '2023-09-19 07:36:04'),
(7, 'lowe.biz', 'IT Support', 'Lenna Knoll', 'Dr. Cruz Bruen', '+1-413-469-5037', 1, 12, '2023-09-19 07:36:03', '2023-09-19 07:36:03'),
(8, 'donnelly.com', 'IT Support', 'Dwight Estates', 'Ivory Wiza', '+1-419-660-7701', 0, 12, '2023-09-19 07:36:03', '2023-09-19 07:36:03'),
(9, 'okuneva.net', 'IT Support', 'Darby Roads', 'Prof. Waino Stiedemann III', '401-569-3726', 1, 12, '2023-09-19 07:36:03', '2023-09-19 07:36:04'),
(10, 'connelly.com', 'IT Support', 'Gibson Locks', 'Jason Krajcik', '1-364-863-7082', 1, 12, '2023-09-19 07:36:03', '2023-09-19 07:36:03');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(2, '2023_08_14_013122_create_orders_table', 1),
(3, '2023_08_14_022535_create_order_details_table', 1),
(4, '2023_08_14_033213_create_activity_table', 1),
(5, '2023_08_14_033509_create_global_params_table', 1),
(6, '2023_08_14_042541_create_users_table', 1),
(7, '2023_08_14_042709_create_user_types_table', 1),
(8, '2023_08_14_042745_create_emails_table', 1),
(9, '2023_08_14_042826_create_leads_table', 1),
(10, '2023_08_14_042924_create_popks_letter_table', 1),
(11, '2023_08_14_043031_create_talents_table', 1),
(12, '2023_08_14_043805_create_talent_detail_table', 1),
(13, '2023_08_14_043933_create_talent_detail_types_table', 1),
(14, '2023_08_14_045444_create_offer_letters_table', 1),
(15, '2023_08_14_045731_create_offer_letter_jobs_details_table', 1),
(16, '2023_08_14_050021_add_constraint', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `offer_letters`
--

CREATE TABLE `offer_letters` (
  `id` int(11) NOT NULL,
  `letter_number` varchar(255) DEFAULT NULL,
  `offer_subject` varchar(255) DEFAULT NULL,
  `recipient_name` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `context` varchar(255) DEFAULT NULL,
  `talent_total` int(11) DEFAULT NULL,
  `weekday_cost` double DEFAULT NULL,
  `weekend_cost` double DEFAULT NULL,
  `consumption_cost` double DEFAULT NULL,
  `transportation_cost` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `offer_letters`
--

INSERT INTO `offer_letters` (`id`, `letter_number`, `offer_subject`, `recipient_name`, `location`, `date`, `context`, `talent_total`, `weekday_cost`, `weekend_cost`, `consumption_cost`, `transportation_cost`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-09-27 00:34:19', '2023-09-27 00:34:19'),
(2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-09-27 01:06:19', '2023-09-27 01:06:19');

-- --------------------------------------------------------

--
-- Struktur dari tabel `offer_letter_jobs_details`
--

CREATE TABLE `offer_letter_jobs_details` (
  `id` int(11) NOT NULL,
  `offer_letters_id` int(11) NOT NULL,
  `needed_job` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `city_location` varchar(255) NOT NULL,
  `contract_duration` int(11) NOT NULL,
  `price` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `orders`
--

CREATE TABLE `orders` (
  `id` varchar(255) NOT NULL,
  `leads_id` int(11) NOT NULL,
  `appoinment_activity_id` int(11) DEFAULT NULL,
  `offer_letter_id` int(11) DEFAULT NULL,
  `popks_letter_id` int(11) DEFAULT NULL,
  `order_status` int(11) NOT NULL DEFAULT 1,
  `desired_position` varchar(255) NOT NULL,
  `needed_qty` bigint(20) NOT NULL,
  `due_date` date NOT NULL,
  `description` text NOT NULL,
  `characteristic_desc` text NOT NULL,
  `skills_desc` text NOT NULL,
  `budget_estimation` double NOT NULL,
  `start_recruitment` timestamp NULL DEFAULT NULL,
  `end_recruitment` timestamp NULL DEFAULT NULL,
  `start_training` timestamp NULL DEFAULT NULL,
  `end_training` timestamp NULL DEFAULT NULL,
  `start_offer` timestamp NULL DEFAULT NULL,
  `end_offer` timestamp NULL DEFAULT NULL,
  `start_appointment` timestamp NULL DEFAULT NULL,
  `end_appointment` timestamp NULL DEFAULT NULL,
  `start_probation` timestamp NULL DEFAULT NULL,
  `end_probation` timestamp NULL DEFAULT NULL,
  `start_popks` timestamp NULL DEFAULT NULL,
  `end_popks` timestamp NULL DEFAULT NULL,
  `tor_file` varchar(255) DEFAULT NULL,
  `cv_file` varchar(255) DEFAULT NULL,
  `cv_description` varchar(255) DEFAULT NULL,
  `po_file` varchar(255) DEFAULT NULL,
  `po_description` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `orders`
--

INSERT INTO `orders` (`id`, `leads_id`, `appoinment_activity_id`, `offer_letter_id`, `popks_letter_id`, `order_status`, `desired_position`, `needed_qty`, `due_date`, `description`, `characteristic_desc`, `skills_desc`, `budget_estimation`, `start_recruitment`, `end_recruitment`, `start_training`, `end_training`, `start_offer`, `end_offer`, `start_appointment`, `end_appointment`, `start_probation`, `end_probation`, `start_popks`, `end_popks`, `tor_file`, `cv_file`, `cv_description`, `po_file`, `po_description`, `created_at`, `updated_at`) VALUES
('08C6E28E', 9, 1, 1, 1, 1, 'Interpreter OR Translator', 0, '1982-07-15', 'There could be no doubt that it would not open any of them. \'I\'m sure those are not attending!\' said the Queen. \'It proves nothing of the tea--\' \'The twinkling of the bread-and-butter. Just at this.', 'Alice had got so close to the fifth bend, I think?\' he said in a low voice. \'Not at first, the two sides of it; so, after hunting all about it!\' and he says it\'s so useful, it\'s worth a hundred.', 'optimize plug-and-play webservices', 7, '2023-09-27 00:34:11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-09-19 07:36:04', '2023-09-27 00:38:10'),
('2CC9359A', 3, 2, 2, NULL, 1, 'Casting Machine Operator', 5, '1970-11-28', 'Alice soon began talking to herself, (not in a very humble tone, going down on one knee as he wore his crown over the wig, (look at the top of its mouth and yawned once or twice, half hoping that.', 'Forty-two. ALL PERSONS MORE THAN A MILE HIGH TO LEAVE THE COURT.\' Everybody looked at poor Alice, \'it would have this cat removed!\' The Queen had only one who had spoken first. \'That\'s none of them.', 'recontextualize visionary applications', 8, '2023-09-27 01:06:13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-09-19 07:36:04', '2023-09-27 01:06:20'),
('31BFE129', 4, NULL, NULL, NULL, 1, 'Gas Processing Plant Operator', 4, '2012-05-11', 'Duchess, who seemed to rise like a frog; and both the hedgehogs were out of the jury wrote it down \'important,\' and some were birds,) \'I suppose so,\' said Alice. \'Exactly so,\' said the Hatter. \'I.', 'So they began moving about again, and Alice thought decidedly uncivil. \'But perhaps it was very deep, or she should meet the real Mary Ann, what ARE you doing out here? Run home this moment, and.', 'orchestrate rich paradigms', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-09-19 07:36:04', '2023-09-19 07:36:04'),
('3B2B9EB0', 6, NULL, NULL, NULL, 1, 'Soil Scientist OR Plant Scientist', 6, '2019-11-19', 'He got behind him, and very angrily. \'A knot!\' said Alice, in a sulky tone; \'Seven jogged my elbow.\' On which Seven looked up eagerly, half hoping she might as well go in at all?\' said Alice, in a.', 'The Mouse only growled in reply. \'Idiot!\' said the Dodo, pointing to the Knave of Hearts, and I shall have somebody to talk nonsense. The Queen\'s Croquet-Ground A large rose-tree stood near the.', 'facilitate out-of-the-box networks', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-09-19 07:36:04', '2023-09-19 07:36:04'),
('617341D7', 2, NULL, NULL, NULL, 1, 'Optometrist', 8, '2004-05-11', 'Dormouse followed him: the March Hare was said to Alice, \'Have you seen the Mock Turtle angrily: \'really you are very dull!\' \'You ought to have no sort of meaning in them, after all. \"--SAID I COULD.', 'Gryphon. \'Turn a somersault in the newspapers, at the picture.) \'Up, lazy thing!\' said the Caterpillar took the opportunity of saying to her feet in a twinkling! Half-past one, time for dinner!\' (\'I.', 'generate bleeding-edge interfaces', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-09-19 07:36:03', '2023-09-19 07:36:03'),
('810DCCF5', 10, NULL, NULL, NULL, 1, 'Valve Repairer OR Regulator Repairer', 1, '1974-03-17', 'Cat went on, \'that they\'d let Dinah stop in the pool a little bottle on it, for she felt that it was quite out of that is--\"Oh, \'tis love, that makes people hot-tempered,\' she went on, looking.', 'And so it was just in time to avoid shrinking away altogether. \'That WAS a curious appearance in the window, and on both sides at once. \'Give your evidence,\' said the Mock Turtle persisted. \'How.', 'synthesize user-centric networks', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-09-19 07:36:03', '2023-09-19 07:36:03'),
('B8691940', 2, NULL, NULL, NULL, 1, 'Transportation Inspector', 2, '2018-01-07', 'I am in the grass, merely remarking as it can\'t possibly make me smaller, I suppose.\' So she tucked it away under her arm, with its head, it WOULD twist itself round and swam slowly back to her: its.', 'I THINK; or is it directed to?\' said the Queen, pointing to the confused clamour of the garden: the roses growing on it in a very small cake, on which the March Hare interrupted in a low voice, to.', 'matrix global systems', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-09-19 07:36:04', '2023-09-19 07:36:04'),
('C3186564', 10, NULL, NULL, NULL, 1, 'Web Developer', 0, '1993-09-24', 'Alice alone with the Lory, who at last the Gryphon went on, \'you throw the--\' \'The lobsters!\' shouted the Queen, the royal children, and everybody else. \'Leave off that!\' screamed the Queen. \'I.', 'I shall see it pop down a good opportunity for making her escape; so she turned the corner, but the great puzzle!\' And she began shrinking directly. As soon as she could, and waited to see the Mock.', 'benchmark enterprise action-items', 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-09-19 07:36:04', '2023-09-19 07:36:04'),
('C7588AE4', 1, NULL, NULL, NULL, 1, 'Recreational Vehicle Service Technician', 9, '1981-04-07', 'Alice. \'Then it ought to be managed? I suppose it were white, but there were three little sisters,\' the Dormouse say?\' one of the teacups as the Lory hastily. \'I thought it would not join the dance.', 'THAT\'S a good deal worse off than before, as the White Rabbit interrupted: \'UNimportant, your Majesty means, of course,\' said the King. (The jury all wrote down all three to settle the question, and.', 'reintermediate enterprise synergies', 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-09-19 07:36:04', '2023-09-19 07:36:04'),
('CDA3AF2B', 7, NULL, NULL, NULL, 1, 'Farm Equipment Mechanic', 2, '1988-05-07', 'Dormouse, who was passing at the end.\' \'If you can\'t take LESS,\' said the Gryphon. \'It all came different!\' Alice replied thoughtfully. \'They have their tails in their proper places--ALL,\' he.', 'Knave, \'I didn\'t write it, and then turned to the little thing sobbed again (or grunted, it was too slippery; and when Alice had not gone far before they saw Alice coming. \'There\'s PLENTY of room!\'.', 'streamline revolutionary supply-chains', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-09-19 07:36:03', '2023-09-19 07:36:03');

-- --------------------------------------------------------

--
-- Struktur dari tabel `order_details`
--

CREATE TABLE `order_details` (
  `id` int(11) NOT NULL,
  `talent_id` int(11) NOT NULL,
  `order_id` varchar(255) NOT NULL,
  `pre_score` double DEFAULT NULL,
  `post_score` double DEFAULT NULL,
  `group_score` double DEFAULT NULL,
  `final_score` double DEFAULT NULL,
  `recruitment_status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `popks_letter`
--

CREATE TABLE `popks_letter` (
  `id` int(11) NOT NULL,
  `letter_numbers` varchar(255) DEFAULT NULL,
  `leads_id` int(11) NOT NULL,
  `employee_name` varchar(255) DEFAULT NULL,
  `employee_position` varchar(255) DEFAULT NULL,
  `employee_address` varchar(255) DEFAULT NULL,
  `client_name` varchar(255) DEFAULT NULL,
  `client_position` varchar(255) DEFAULT NULL,
  `client_address` varchar(255) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `nominal_fees` double DEFAULT NULL,
  `included_fees` text DEFAULT NULL,
  `weekday_cost` double DEFAULT NULL,
  `weekend_cost` double DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `consumption_cost` double DEFAULT NULL,
  `transportation_cost` double DEFAULT NULL,
  `billing_due_date` int(11) DEFAULT NULL,
  `billing_days` int(11) DEFAULT NULL,
  `authorized_by` varchar(255) DEFAULT NULL,
  `account_number` bigint(20) DEFAULT NULL,
  `bank_name` varchar(255) DEFAULT NULL,
  `account_manager_provider` varchar(255) NOT NULL DEFAULT 'Sdr. Septian Nugraha Kudrat',
  `provider_finance_administrator` varchar(255) NOT NULL DEFAULT 'Sdri. Retno Aliifah',
  `jagoit_director` varchar(255) DEFAULT NULL,
  `client_director` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `popks_letter`
--

INSERT INTO `popks_letter` (`id`, `letter_numbers`, `leads_id`, `employee_name`, `employee_position`, `employee_address`, `client_name`, `client_position`, `client_address`, `start_date`, `end_date`, `nominal_fees`, `included_fees`, `weekday_cost`, `weekend_cost`, `notes`, `consumption_cost`, `transportation_cost`, `billing_due_date`, `billing_days`, `authorized_by`, `account_number`, `bank_name`, `account_manager_provider`, `provider_finance_administrator`, `jagoit_director`, `client_director`, `created_at`, `updated_at`) VALUES
(1, NULL, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sdr. Septian Nugraha Kudrat', 'Sdri. Retno Aliifah', NULL, NULL, '2023-09-27 00:38:10', '2023-09-27 00:38:10');

-- --------------------------------------------------------

--
-- Struktur dari tabel `talents`
--

CREATE TABLE `talents` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `domicile` text NOT NULL,
  `pob_talent` varchar(255) DEFAULT NULL,
  `dob_talent` date DEFAULT NULL,
  `age` int(11) NOT NULL,
  `gender` int(11) DEFAULT NULL,
  `religion` int(11) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `phone_number` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `signature` varchar(255) DEFAULT NULL,
  `status_onboard` int(11) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `talents`
--

INSERT INTO `talents` (`id`, `name`, `domicile`, `pob_talent`, `dob_talent`, `age`, `gender`, `religion`, `image`, `level`, `phone_number`, `email`, `signature`, `status_onboard`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Orie Pfeffer', '658 David Mission Suite 774\nWest Lavinaborough, MI 54424', NULL, NULL, 53, NULL, NULL, NULL, NULL, '(510) 793-9213', 'herman.herman@gmail.com', NULL, NULL, 0, NULL, NULL),
(2, 'Ernestine Schaden', '7771 VonRueden Greens\nNorth Charlie, NM 28494', NULL, NULL, 29, NULL, NULL, NULL, NULL, '(919) 379-0915', 'johan82@gmail.com', NULL, NULL, 0, NULL, NULL),
(3, 'Rudy Roob DVM', '4567 Ebert Avenue Apt. 155\nJeffreychester, OR 79306', NULL, NULL, 48, NULL, NULL, NULL, NULL, '386.774.3782', 'marlin.thompson@mcglynn.com', NULL, NULL, 0, NULL, NULL),
(4, 'Jonathan Mayert', '70752 Reynolds Turnpike\nCelestinoton, IN 76095', NULL, NULL, 27, NULL, NULL, NULL, NULL, '434.394.2206', 'tjerde@schuppe.com', NULL, NULL, 0, NULL, NULL),
(5, 'Lyric Romaguera', '29346 Trevor Lights\nHansenside, WA 78093', NULL, NULL, 44, NULL, NULL, NULL, NULL, '+1-818-743-7405', 'eliza.von@lesch.com', NULL, NULL, 0, NULL, NULL),
(6, 'Mr. Gardner Dickens', '37543 Doyle Canyon Apt. 943\nDarianport, NV 40032', NULL, NULL, 54, NULL, NULL, NULL, NULL, '(757) 347-8454', 'fausto47@olson.org', NULL, NULL, 0, NULL, NULL),
(7, 'Jacey Hauck', '4908 Tierra Walks Suite 466\nKonopelskimouth, PA 01668-9362', NULL, NULL, 48, NULL, NULL, NULL, NULL, '+1.360.702.2753', 'mcclure.nat@yahoo.com', NULL, NULL, 0, NULL, NULL),
(8, 'Joanny Littel I', '573 Rickie Stravenue Suite 100\nEast Toby, IA 46359', NULL, NULL, 52, NULL, NULL, NULL, NULL, '+1-531-497-2955', 'jbins@yahoo.com', NULL, NULL, 0, NULL, NULL),
(9, 'Katlynn Mosciski DVM', '23959 Kovacek Row\nMohamedfurt, MT 47467', NULL, NULL, 24, NULL, NULL, NULL, NULL, '1-636-355-0536', 'ruth42@gmail.com', NULL, NULL, 0, NULL, NULL),
(10, 'Samir Parker', '35828 Wisozk Ports Apt. 232\nBernieland, NM 96391-9360', NULL, NULL, 48, NULL, NULL, NULL, NULL, '+1-850-314-5501', 'gleichner.isaiah@larkin.com', NULL, NULL, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `talent_details`
--

CREATE TABLE `talent_details` (
  `id` int(11) NOT NULL,
  `id_talent` int(11) NOT NULL,
  `id_talent_details` int(11) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `talent_details`
--

INSERT INTO `talent_details` (`id`, `id_talent`, `id_talent_details`, `description`) VALUES
(1, 1, 1, 'Dev Ops'),
(2, 1, 4, 'PHP'),
(3, 1, 5, 'D2'),
(4, 2, 1, 'Backend Dev'),
(5, 2, 4, 'PHP'),
(6, 2, 5, 'D3'),
(7, 3, 1, 'Full-Stack Dev'),
(8, 3, 4, 'JS'),
(9, 3, 5, 'SMA-SMK'),
(10, 4, 1, 'Backend Dev'),
(11, 4, 4, 'Python'),
(12, 4, 5, 'D3'),
(13, 5, 1, 'Frontend Dev'),
(14, 5, 4, 'Python'),
(15, 5, 5, 'S3'),
(16, 6, 1, 'Backend Dev'),
(17, 6, 4, 'Python'),
(18, 6, 5, 'S2'),
(19, 7, 1, 'Frontend Dev'),
(20, 7, 4, 'PHP'),
(21, 7, 5, 'D2'),
(22, 8, 1, 'Dev Ops'),
(23, 8, 4, 'Python'),
(24, 8, 5, 'S1'),
(25, 9, 1, 'Data Analyst'),
(26, 9, 4, 'PHP'),
(27, 9, 5, 'SMA-SMK'),
(28, 10, 1, 'Dev Ops'),
(29, 10, 4, 'Python'),
(30, 10, 5, 'S3');

-- --------------------------------------------------------

--
-- Struktur dari tabel `talent_detail_types`
--

CREATE TABLE `talent_detail_types` (
  `id` int(11) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `talent_detail_types`
--

INSERT INTO `talent_detail_types` (`id`, `description`) VALUES
(1, 'Posisi'),
(2, 'Dokumen Legal'),
(3, 'Pengalaman Kerja'),
(4, 'Keterampilan'),
(5, 'Pendidikan'),
(6, 'Level Skill'),
(7, 'Detail Pengalaman Kerja'),
(8, 'Keterampilan Tambahan'),
(9, 'Develop Area'),
(10, 'Kesiapan Bekerja'),
(11, 'Keterampilan Lain');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `user_type_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `xs1` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `user_type_id`, `username`, `password`, `token`, `email`, `xs1`) VALUES
(1, 2, 'bintangSobo', '$2y$10$LWphU3L/oaLZ6N9ItCKpIOjPuXRaH3xVK5jfSAH8yZfn92VZ6z2OC', NULL, 'rcormier@stark.com', 'Power Phanter Jos'),
(2, 2, 'stefan71', '$2y$10$pgUrX5RPGw/3p.yNDK3PJe6y0zlZ/6IhN2zYyda1DBBF4K77FCQ0K', NULL, 'uriah.dickens@gmail.com', 'Dr. Trey Collins'),
(3, 2, 'reyna.schaefer', '$2y$10$jsg.a/UJQHmmUdk9pjlaYuURnS.Es0AD.qnYp1I.67YK6hgm6EzWG', NULL, 'jhayes@gmail.com', 'Lorenz Pfannerstill'),
(4, 3, 'amaya.marks', '$2y$10$QsHZPqk8iCzls2kAUPLIcub4UMhKeYShL6Z8CYBXK7RkM61KxEr4W', NULL, 'brendan.wisoky@mayert.net', 'Dr. Ned Welch DDS'),
(5, 2, 'macejkovic.eugene', '$2y$10$p3pomyiVQ2hIzhdINmKcq.j5MmPEF3j3SKyxvlgrE3UWZE6y13xna', NULL, 'arlie.schultz@green.com', 'Mr. Alfonzo Rath Jr.'),
(6, 1, 'zboncak.adaline', '$2y$10$rA5Be.KKY59/Ty0NOTgT8uagXKJcNjvH5uty.tk8xZSpXxKYYTX92', NULL, 'collin02@gmail.com', 'Nico Batz'),
(7, 3, 'pgreen', '$2y$10$koaFBQFZnMGrcWvI8VfxoO7SHkQPs6mIi48e56l3jsE.TdEHSbIfq', NULL, 'kiarra.orn@yahoo.com', 'Chauncey Wuckert'),
(8, 3, 'shane', '$2y$10$JZFyH.RiQgMUJ3MWVwcarum8wCj7DKBJlELJLaGH2FXZPj9MG/2Si', NULL, 'kohler.mitchell@veum.com', 'Reva McCullough III'),
(9, 2, 'terrill.bailey', '$2y$10$sWzN7O1IAcJdUwQTHQYVUOy8XtjEOJuAKWjs29nHnRaM63dyllyLK', NULL, 'hbogisich@boyer.com', 'Ana Marquardt III'),
(10, 1, 'braulio.torp', '$2y$10$KTRubcBmOiPKqdyFrwY9Y.2vGOSSZqm1BGLKB1c4nb.WeGQcViGwq', NULL, 'epredovic@toy.com', 'Candido Koepp'),
(11, 2, 'terry.tyrell', '$2y$10$hdwujpU1v.VCMnMgGLQL5.biowX9OiKyWucKp.bAz7bWOCBYsXuH.', NULL, 'prodriguez@rath.com', 'Gussie Connelly');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_types`
--

CREATE TABLE `user_types` (
  `id` int(11) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `user_types`
--

INSERT INTO `user_types` (`id`, `description`) VALUES
(1, 'Admin'),
(2, 'Karyawan'),
(3, 'Client');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `activity`
--
ALTER TABLE `activity`
  ADD PRIMARY KEY (`id`),
  ADD KEY `activity_leads_id_foreign` (`leads_id`),
  ADD KEY `activity_activity_type_id_foreign` (`activity_type_id`);

--
-- Indeks untuk tabel `emails`
--
ALTER TABLE `emails`
  ADD PRIMARY KEY (`id`),
  ADD KEY `emails_leads_id_foreign` (`leads_id`);

--
-- Indeks untuk tabel `global_params`
--
ALTER TABLE `global_params`
  ADD PRIMARY KEY (`id_params`);

--
-- Indeks untuk tabel `leads`
--
ALTER TABLE `leads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `leads_lead_status_foreign` (`lead_status`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `offer_letters`
--
ALTER TABLE `offer_letters`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `offer_letter_jobs_details`
--
ALTER TABLE `offer_letter_jobs_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `offer_letter_jobs_details_offer_letters_id_foreign` (`offer_letters_id`);

--
-- Indeks untuk tabel `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_leads_id_foreign` (`leads_id`),
  ADD KEY `orders_offer_letter_id_foreign` (`offer_letter_id`),
  ADD KEY `orders_order_status_foreign` (`order_status`),
  ADD KEY `orders_popks_letter_id_foreign` (`popks_letter_id`);

--
-- Indeks untuk tabel `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_details_order_id_foreign` (`order_id`),
  ADD KEY `order_details_talent_id_foreign` (`talent_id`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `popks_letter`
--
ALTER TABLE `popks_letter`
  ADD PRIMARY KEY (`id`),
  ADD KEY `popks_letter_leads_id_foreign` (`leads_id`);

--
-- Indeks untuk tabel `talents`
--
ALTER TABLE `talents`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `talent_details`
--
ALTER TABLE `talent_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `talent_details_id_talent_foreign` (`id_talent`),
  ADD KEY `talent_details_id_talent_details_foreign` (`id_talent_details`);

--
-- Indeks untuk tabel `talent_detail_types`
--
ALTER TABLE `talent_detail_types`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `users_user_type_id_foreign` (`user_type_id`);

--
-- Indeks untuk tabel `user_types`
--
ALTER TABLE `user_types`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `activity`
--
ALTER TABLE `activity`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `emails`
--
ALTER TABLE `emails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `global_params`
--
ALTER TABLE `global_params`
  MODIFY `id_params` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `leads`
--
ALTER TABLE `leads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `offer_letters`
--
ALTER TABLE `offer_letters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `offer_letter_jobs_details`
--
ALTER TABLE `offer_letter_jobs_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `popks_letter`
--
ALTER TABLE `popks_letter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `talents`
--
ALTER TABLE `talents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `talent_details`
--
ALTER TABLE `talent_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT untuk tabel `talent_detail_types`
--
ALTER TABLE `talent_detail_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `user_types`
--
ALTER TABLE `user_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `activity`
--
ALTER TABLE `activity`
  ADD CONSTRAINT `activity_activity_type_id_foreign` FOREIGN KEY (`activity_type_id`) REFERENCES `global_params` (`id_params`),
  ADD CONSTRAINT `activity_leads_id_foreign` FOREIGN KEY (`leads_id`) REFERENCES `leads` (`id`);

--
-- Ketidakleluasaan untuk tabel `emails`
--
ALTER TABLE `emails`
  ADD CONSTRAINT `emails_leads_id_foreign` FOREIGN KEY (`leads_id`) REFERENCES `leads` (`id`);

--
-- Ketidakleluasaan untuk tabel `leads`
--
ALTER TABLE `leads`
  ADD CONSTRAINT `leads_lead_status_foreign` FOREIGN KEY (`lead_status`) REFERENCES `global_params` (`id_params`);

--
-- Ketidakleluasaan untuk tabel `offer_letter_jobs_details`
--
ALTER TABLE `offer_letter_jobs_details`
  ADD CONSTRAINT `offer_letter_jobs_details_offer_letters_id_foreign` FOREIGN KEY (`offer_letters_id`) REFERENCES `offer_letters` (`id`);

--
-- Ketidakleluasaan untuk tabel `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_leads_id_foreign` FOREIGN KEY (`leads_id`) REFERENCES `leads` (`id`),
  ADD CONSTRAINT `orders_offer_letter_id_foreign` FOREIGN KEY (`offer_letter_id`) REFERENCES `offer_letters` (`id`),
  ADD CONSTRAINT `orders_order_status_foreign` FOREIGN KEY (`order_status`) REFERENCES `global_params` (`id_params`),
  ADD CONSTRAINT `orders_popks_letter_id_foreign` FOREIGN KEY (`popks_letter_id`) REFERENCES `popks_letter` (`id`);

--
-- Ketidakleluasaan untuk tabel `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `order_details_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `order_details_talent_id_foreign` FOREIGN KEY (`talent_id`) REFERENCES `talents` (`id`);

--
-- Ketidakleluasaan untuk tabel `popks_letter`
--
ALTER TABLE `popks_letter`
  ADD CONSTRAINT `popks_letter_leads_id_foreign` FOREIGN KEY (`leads_id`) REFERENCES `leads` (`id`);

--
-- Ketidakleluasaan untuk tabel `talent_details`
--
ALTER TABLE `talent_details`
  ADD CONSTRAINT `talent_details_id_talent_details_foreign` FOREIGN KEY (`id_talent_details`) REFERENCES `talent_detail_types` (`id`),
  ADD CONSTRAINT `talent_details_id_talent_foreign` FOREIGN KEY (`id_talent`) REFERENCES `talents` (`id`);

--
-- Ketidakleluasaan untuk tabel `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_user_type_id_foreign` FOREIGN KEY (`user_type_id`) REFERENCES `user_types` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
