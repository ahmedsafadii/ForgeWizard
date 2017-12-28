-- phpMyAdmin SQL Dump
-- version 4.4.15.5
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Dec 28, 2017 at 12:16 AM
-- Server version: 5.5.49-log
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `forgewizard`
--

-- --------------------------------------------------------

--
-- Table structure for table `builds`
--

CREATE TABLE IF NOT EXISTS `builds` (
  `id` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `keystones` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `rune_secondary_id` int(10) unsigned NOT NULL,
  `rune_main_id` int(10) unsigned NOT NULL,
  `patch_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `champion_id` int(10) unsigned NOT NULL,
  `top_player_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=176 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `builds`
--

INSERT INTO `builds` (`id`, `title`, `description`, `keystones`, `rune_secondary_id`, `rune_main_id`, `patch_id`, `role_id`, `user_id`, `champion_id`, `top_player_id`, `created_at`, `updated_at`) VALUES
(1, 'Dance in Their Ashes', 'Rapid jungle clear and neutral objective control.', '{"primary_data":[2,6,8,11],"secondary_data":[33,36]}', 3, 1, 2, 4, 3, 126, 2, '2017-12-24 17:16:36', '2017-12-24 17:16:36'),
(2, 'They Should Run Now', 'Back-line dive threat.', '{"primary_data":[2,6,8,11],"secondary_data":[44,41]}', 4, 1, 1, 4, 3, 126, 2, '2017-12-24 17:16:37', '2017-12-24 17:16:37'),
(3, 'Sacrifices Must be Made', 'Lane pressure with maximum Summoner Cooldown use.', '{"primary_data":[50,55,56,59],"secondary_data":[19,20]}', 2, 5, 2, 2, 3, 14, 2, '2017-12-24 17:16:37', '2017-12-24 17:16:37'),
(4, 'No More Hesitation', 'Massive bust damage and pseudo-assassination.', '{"primary_data":[14,19,20,23],"secondary_data":[6,11]}', 1, 2, 1, 2, 3, 14, 21, '2017-12-24 17:16:37', '2017-12-24 17:16:37'),
(5, 'I Make the Rules', 'Short lane trades and empowered sustain.', '{"primary_data":[27,30,33,35],"secondary_data":[44,49]}', 4, 3, 2, 2, 3, 105, 25, '2017-12-24 17:16:37', '2017-12-24 17:16:37'),
(6, 'Neutralized the Target', 'Lane dueling and sustain.', '{"primary_data":[2,5,9,12],"secondary_data":[44,48]}', 4, 1, 1, 2, 3, 105, 2, '2017-12-24 17:16:37', '2017-12-24 17:16:37'),
(7, 'Don’t Make the Yeti Angry', 'Neutral objective control and teamfight utility.', '{"primary_data":[40,43,46,48],"secondary_data":[33,36]}', 3, 4, 2, 4, 3, 45, 2, '2017-12-24 17:16:37', '2017-12-24 17:16:37'),
(8, 'Time for a Shakedown', 'Reliable skirmish sustain and lane safety.', '{"primary_data":[4,6,8,11],"secondary_data":[18,20]}', 2, 1, 2, 5, 3, 95, 19, '2017-12-24 17:16:37', '2017-12-24 17:16:37'),
(9, 'All About Them Headshots', 'Sustain and late game scaling.', '{"primary_data":[4,6,10,11],"secondary_data":[33,37]}', 3, 1, 2, 5, 3, 95, 2, '2017-12-24 17:16:37', '2017-12-24 17:16:37'),
(10, 'They Have Overstepped', 'Lane poke and sustained trading pattern.', '{"primary_data":[27,30,33,35],"secondary_data":[17,20]}', 2, 3, 2, 1, 3, 80, 1, '2017-12-24 17:16:37', '2017-12-24 17:16:37'),
(11, 'Superior Shurima Soldiers', 'Late-game soldiers hyper carry.', '{"primary_data":[3,7,8,11],"secondary_data":[32,37]}', 3, 1, 1, 1, 3, 80, 2, '2017-12-24 17:16:37', '2017-12-24 17:16:37'),
(12, 'The Clot Thickens', 'Summoner Spell spam and mid game power-spike.', '{"primary_data":[50,55,56,59],"secondary_data":[32,35]}', 3, 5, 2, 2, 3, 43, 2, '2017-12-24 17:16:37', '2017-12-24 17:16:37'),
(13, 'Vessel of Destruction', 'Efficient lane trading and empowered healing.', '{"primary_data":[28,31,32,35],"secondary_data":[18,23]}', 2, 3, 1, 1, 3, 43, 2, '2017-12-24 17:16:37', '2017-12-24 17:16:37'),
(14, 'Stack the Bodies Higher', 'Lane phase poke and harassment with Comet.', '{"primary_data":[27,30,32,35],"secondary_data":[44,49]}', 4, 3, 2, 2, 3, 23, 2, '2017-12-24 17:16:37', '2017-12-24 17:16:37'),
(15, 'Death Had Its Chance', 'Massive health stacking and tower smashing.', '{"primary_data":[38,42,46,47],"secondary_data":[30,35]}', 3, 4, 2, 2, 3, 23, 2, '2017-12-24 17:16:37', '2017-12-24 17:16:37'),
(16, 'Their Heartbeats Quicken', 'Maximum damage and target execution.', '{"primary_data":[14,19,20,23],"secondary_data":[6,11]}', 1, 2, 2, 4, 3, 113, 3, '2017-12-24 17:16:37', '2017-12-24 17:16:37'),
(17, 'Unleash the Blind Dragon', 'Scrappy skirmishes and snowball potential.', '{"primary_data":[14,19,22,25],"secondary_data":[32,36]}', 3, 2, 1, 4, 3, 113, 2, '2017-12-24 17:16:37', '2017-12-24 17:16:37'),
(18, 'Burn Away the Shadows', 'Lane poke, pressure, and kill-threat. By: Aphromoo', '{"primary_data":[27,30,34,35],"secondary_data":[54,59]}', 5, 3, 1, 3, 3, 19, 4, '2017-12-24 17:16:37', '2017-12-24 17:16:37'),
(19, 'Light Them Up', 'All-around utility and reliable damage.', '{"primary_data":[27,31,32,35],"secondary_data":[56,59]}', 5, 3, 1, 1, 3, 19, 2, '2017-12-24 17:16:37', '2017-12-24 17:16:37'),
(20, 'Their Time is Short', 'Summoner Spell cooldown abuse for aggressive picks with Flash->[R].', '{"primary_data":[50,55,56,59],"secondary_data":[33,35]}', 3, 5, 1, 1, 3, 10, 1, '2017-12-24 17:16:37', '2017-12-24 17:16:37'),
(21, 'Suppression Into Oblivion', 'Lane shove, early skirmishing, and [R] spam.', '{"primary_data":[27,31,33,35],"secondary_data":[59,56]}', 5, 3, 1, 1, 3, 10, 2, '2017-12-24 17:16:37', '2017-12-24 17:16:37'),
(22, 'Nothing More Than an Insect', 'Summoner Cooldown stacking for frequent Ghost/Flash engages.', '{"primary_data":[50,53,56,59],"secondary_data":[41,48]}', 4, 5, 1, 4, 3, 117, 2, '2017-12-24 17:16:37', '2017-12-24 17:16:37'),
(23, 'Bloodshed Carries a Price', 'Lethality focused long range poke with [Q].', '{"primary_data":[27,30,33,35],"secondary_data":[6,11]}', 1, 3, 1, 5, 3, 2, 5, '2017-12-24 17:16:37', '2017-12-24 17:16:37'),
(24, 'Blighted Arrow Dominance', 'Massive sustained shred damage.', '{"primary_data":[2,6,10,11],"secondary_data":[18,23]}', 2, 1, 1, 5, 3, 2, 6, '2017-12-24 17:16:38', '2017-12-24 17:16:38'),
(25, 'Nothing but Powder Monkeys', 'Lane harass pressure and late-game off-carry damage.', '{"primary_data":[27,30,33,37],"secondary_data":[17,20]}', 2, 3, 1, 3, 3, 46, 7, '2017-12-24 17:16:38', '2017-12-24 17:16:38'),
(26, 'Shock and Awe', 'Lane harass and massive execution damage.', '{"primary_data":[27,30,33,35],"secondary_data":[6,11]}', 1, 3, 1, 5, 3, 46, 8, '2017-12-24 17:16:38', '2017-12-24 17:16:38'),
(27, 'Why So Serious?', 'Maximum gank assassination and snowballing.', '{"primary_data":[14,19,22,25],"secondary_data":[8,11]}', 1, 2, 1, 4, 3, 68, 2, '2017-12-24 17:16:38', '2017-12-24 17:16:38'),
(28, 'Misery Loves Company', 'Reliable sustained trade damage.', '{"primary_data":[26,31,33,35],"secondary_data":[6,11]}', 1, 3, 1, 2, 3, 135, 2, '2017-12-24 17:16:38', '2017-12-24 17:16:38'),
(29, 'Sentence them to Death', 'Item efficiency and teamfight utility.', '{"primary_data":[39,43,44,49],"secondary_data":[57,59]}', 5, 4, 1, 3, 3, 62, 2, '2017-12-24 17:16:38', '2017-12-24 17:16:38'),
(30, 'Thresh Prince', 'Jack of all trades. Spam item actives.', '{"primary_data":[39,43,44,49],"secondary_data":[17,20]}', 2, 4, 1, 3, 3, 62, 2, '2017-12-24 17:16:38', '2017-12-24 17:16:38'),
(31, 'They Will Lose', 'Mid-game tankiness and teamfight strength/engagement.', '{"primary_data":[38,41,46,47],"secondary_data":[31,32]}', 3, 4, 1, 2, 3, 97, 2, '2017-12-24 17:16:38', '2017-12-24 17:16:38'),
(32, 'That’s Gotta Sting', 'Maximum lane pressure damage and harassment.', '{"primary_data":[26,31,33,35],"secondary_data":[8,11]}', 1, 3, 1, 2, 3, 26, 2, '2017-12-24 17:16:38', '2017-12-24 17:16:38'),
(33, 'Doom Build', 'On-hit lane pressure.', '{"primary_data":[51,54,57,60],"secondary_data":[34,35]}', 3, 5, 1, 2, 3, 26, 2, '2017-12-24 17:16:38', '2017-12-24 17:16:38'),
(34, 'Time to Start Some Trouble', 'Target acquisition, chasing, and spell vamp healing.', '{"primary_data":[51,55,58,59],"secondary_data":[19,23]}', 2, 5, 2, 1, 3, 35, 9, '2017-12-24 17:16:38', '2017-12-24 17:16:38'),
(35, 'Back to Going Forward', 'Mid-lane assassination and lane safety.', '{"primary_data":[14,19,20,23],"secondary_data":[31,32]}', 3, 2, 1, 1, 3, 35, 2, '2017-12-24 17:16:38', '2017-12-24 17:16:38'),
(36, 'We all grow up! Well, you died', 'Maximum damage, assassination, and one-shot threat.', '{"primary_data":[14,19,22,23],"secondary_data":[35,32]}', 3, 2, 1, 1, 3, 74, 2, '2017-12-24 17:16:38', '2017-12-24 17:16:38'),
(37, 'Sorry! Beauty Always Has Tears', 'Efficient lane trading/poking and mid game power spikes.', '{"primary_data":[27,31,32,35],"secondary_data":[19,20]}', 2, 3, 1, 1, 3, 74, 1, '2017-12-24 17:16:38', '2017-12-24 17:16:38'),
(38, 'This’ll be a Slaughter', 'Massive all-in 1v1 threat and split-pushing.', '{"primary_data":[3,5,8,13],"secondary_data":[19,21]}', 2, 1, 1, 2, 3, 48, 2, '2017-12-24 17:16:38', '2017-12-24 17:16:38'),
(39, 'Swinging from the Heels', 'Immovable and unstoppable frontline tank.', '{"primary_data":[38,41,46,49],"secondary_data":[6,9]}', 1, 4, 1, 2, 3, 122, 2, '2017-12-24 17:16:38', '2017-12-24 17:16:38'),
(40, 'Death by Steel', 'Unstoppable speedy ganks and active item spam.', '{"primary_data":[15,17,22,24],"secondary_data":[6,11]}', 1, 2, 1, 4, 3, 34, 2, '2017-12-24 17:16:38', '2017-12-24 17:16:38'),
(41, 'Another Body for the Gutter', 'Back-line execution damage and lane safety.', '{"primary_data":[14,19,20,25],"secondary_data":[6,11]}', 1, 2, 1, 1, 3, 12, 10, '2017-12-24 17:16:38', '2017-12-24 17:16:38'),
(42, 'Another Opponent, Another Disappointment', 'Lane harass and sustained teamfight damage.', '{"primary_data":[27,30,34,35],"secondary_data":[17,23]}', 2, 3, 1, 2, 3, 94, 2, '2017-12-24 17:16:38', '2017-12-24 17:16:38'),
(43, 'Fury of the Tiger', 'Tiger Stance: Massive jungle control and rapid bleed stacking.', '{"primary_data":[2,6,8,11],"secondary_data":[33,36]}', 3, 1, 1, 4, 3, 121, 2, '2017-12-24 17:16:38', '2017-12-24 17:16:38'),
(44, 'Teach ‘Em a Harsh Lesson', 'Lane sustain, pressure, and item scaling.', '{"primary_data":[52,54,56,61],"secondary_data":[19,23]}', 2, 5, 2, 2, 3, 77, 2, '2017-12-24 17:16:38', '2017-12-24 17:16:38'),
(45, 'Never Settle for Second', 'Effective and effortless assassination/burst damage.', '{"primary_data":[14,19,22,25],"secondary_data":[6,11]}', 1, 2, 1, 2, 3, 111, 2, '2017-12-24 17:16:38', '2017-12-24 17:16:38'),
(46, 'The Formula for Success', 'Oppressive lane pressure and item efficiency.', '{"primary_data":[27,31,32,35],"secondary_data":[55,59]}', 5, 3, 2, 2, 3, 118, 2, '2017-12-24 17:16:39', '2017-12-24 17:16:39'),
(47, 'Be Their Undoing', 'Oppressive lane harass and efficient power-spikes.', '{"primary_data":[27,30,32,35],"secondary_data":[56,59]}', 5, 3, 1, 3, 3, 125, 2, '2017-12-24 17:16:39', '2017-12-24 17:16:39'),
(48, 'The Brink of Infinity', 'Lane poke pressure and back-line teamfight damage.', '{"primary_data":[27,30,32,35],"secondary_data":[6,11]}', 1, 3, 1, 1, 3, 125, 2, '2017-12-24 17:16:39', '2017-12-24 17:16:39'),
(49, 'A Constant State of Paranoia', 'Constant ganks with Ultimate [R].', '{"primary_data":[14,19,22,25],"secondary_data":[31,32]}', 3, 2, 1, 4, 3, 99, 2, '2017-12-24 17:16:39', '2017-12-24 17:16:39'),
(50, 'Their Twilight Approaches', 'Hard hitting, less frequent ultimates.', '{"primary_data":[16,19,22,25],"secondary_data":[8,11]}', 1, 2, 1, 4, 3, 99, 2, '2017-12-24 17:16:39', '2017-12-24 17:16:39'),
(51, 'Show Them the Horns', 'Ranged matchups: Lane sustain and diving tankiness.', '{"primary_data":[39,41,44,48],"secondary_data":[30,33]}', 3, 4, 2, 2, 3, 15, 11, '2017-12-24 17:16:39', '2017-12-24 17:16:39'),
(52, 'Forge Fighting', 'Lane trading, sustain, and brawling.', '{"primary_data":[38,43,46,49],"secondary_data":[57,54]}', 5, 4, 1, 2, 3, 15, 2, '2017-12-24 17:16:39', '2017-12-24 17:16:39'),
(53, 'Here Comes the Boom', 'Snowballing ganks and massive burst. From Afreeca Freecs Spirit', '{"primary_data":[2,6,8,11],"secondary_data":[34,36]}', 3, 1, 1, 4, 3, 27, 12, '2017-12-24 17:16:39', '2017-12-24 17:16:39'),
(54, 'Super Rapid Fire', 'Maximum Attack Speed with Rapid Fire.', '{"primary_data":[3,6,8,11],"secondary_data":[55,56]}', 5, 1, 1, 5, 3, 27, 2, '2017-12-24 17:16:39', '2017-12-24 17:16:39'),
(55, 'Off to the Races', 'Maximum Movement Speed stacking and dive.', '{"primary_data":[15,19,20,25],"secondary_data":[33,36]}', 3, 2, 1, 4, 3, 30, 2, '2017-12-24 17:16:39', '2017-12-24 17:16:39'),
(56, 'Demacian Justice for All', 'Efficient early lane trades and kill secure with [R].', '{"primary_data":[38,41,46,49],"secondary_data":[6,11]}', 1, 4, 1, 2, 3, 139, 2, '2017-12-24 17:16:39', '2017-12-24 17:16:39'),
(57, 'Always Be Cleaving', 'Power-farm jungling and effective dueling. By: Riot Jatt', '{"primary_data":[40,42,46,47],"secondary_data":[17,23]}', 2, 4, 1, 4, 3, 69, 13, '2017-12-24 17:16:39', '2017-12-24 17:16:39'),
(58, 'The Terror Beneath', 'Maximum damage and kill execution.', '{"primary_data":[2,6,8,11],"secondary_data":[32,36]}', 3, 1, 1, 4, 3, 79, 14, '2017-12-24 17:16:39', '2017-12-24 17:16:39'),
(59, 'Fear the Ocean’s Weight', 'Lane sustain and teamfight utility.', '{"primary_data":[39,43,44,48],"secondary_data":[54,61]}', 5, 4, 1, 3, 3, 3, 2, '2017-12-24 17:16:39', '2017-12-24 17:16:39'),
(60, 'They’s About to Be Dead', 'Maximum damage output and dueling power.', '{"primary_data":[2,6,8,11],"secondary_data":[19,24]}', 2, 1, 1, 2, 3, 29, 15, '2017-12-24 17:16:39', '2017-12-24 17:16:39'),
(61, 'Carve Off a Souvenir', 'Maximum assassination and snowball.', '{"primary_data":[14,19,20,25],"secondary_data":[31,32]}', 3, 2, 1, 4, 3, 133, 16, '2017-12-24 17:16:39', '2017-12-24 17:16:39'),
(62, 'Die and Be Forgotten', 'All-in dives and roaming.', '{"primary_data":[2,6,8,11],"secondary_data":[19,25]}', 2, 1, 1, 2, 3, 76, 11, '2017-12-24 17:16:39', '2017-12-24 17:16:39'),
(63, 'There’s no turning back', 'Sustained fighting power and ramping damage.', '{"primary_data":[2,6,8,11],"secondary_data":[49,44]}', 4, 1, 1, 2, 3, 72, 17, '2017-12-24 17:16:39', '2017-12-24 17:16:39'),
(64, 'Cut Them Down', 'Powerful dueling and backline presence.', '{"primary_data":[2,5,9,11],"secondary_data":[19,20]}', 2, 1, 1, 2, 3, 72, 2, '2017-12-24 17:16:39', '2017-12-24 17:16:39'),
(65, 'The Crows are Circling', 'Heavy CDR and maximum engage potential.', '{"primary_data":[27,31,32,37],"secondary_data":[55,59]}', 5, 3, 1, 4, 3, 44, 2, '2017-12-24 17:16:39', '2017-12-24 17:16:39'),
(66, 'Someone’s About To Get Hurt', 'Early-to-mid game skirmishing and snowballing', '{"primary_data":[39,41,46,48],"secondary_data":[32,35]}', 3, 4, 1, 4, 3, 91, 2, '2017-12-24 17:16:39', '2017-12-24 17:16:39'),
(67, 'Another Frozen Corpse', 'Lane pressure harass and utility.', '{"primary_data":[27,31,34,35],"secondary_data":[54,57]}', 5, 3, 1, 1, 3, 40, 18, '2017-12-24 17:16:40', '2017-12-24 17:16:40'),
(68, 'Hit ’em Where It Hurts', 'Maximum damage and late game scaling.', '{"primary_data":[2,6,10,11],"secondary_data":[33,37]}', 3, 1, 1, 5, 3, 13, 19, '2017-12-24 17:16:40', '2017-12-24 17:16:40'),
(69, 'Something need killin’?', 'Life steal sustain, and raw damage execution.', '{"primary_data":[2,5,10,11],"secondary_data":[18,22]}', 2, 1, 1, 5, 3, 13, 2, '2017-12-24 17:16:40', '2017-12-24 17:16:40'),
(70, 'Their Fate is Sealed', 'Lane poke, all-in, and snowballing.', '{"primary_data":[26,30,33,35],"secondary_data":[19,22]}', 2, 3, 1, 2, 3, 132, 2, '2017-12-24 17:16:40', '2017-12-24 17:16:40'),
(71, 'It Hurts so Good', 'Lane harass and utility damage.', '{"primary_data":[27,30,33,35],"secondary_data":[54,59]}', 5, 3, 2, 5, 3, 107, 5, '2017-12-24 17:16:40', '2017-12-24 17:16:40'),
(72, 'Shall we dance?', 'Sustain and Attack Damage scaling.', '{"primary_data":[4,5,8,11],"secondary_data":[34,37]}', 3, 1, 1, 5, 3, 107, 2, '2017-12-24 17:16:40', '2017-12-24 17:16:40'),
(73, 'I’ve Seen Their Death', 'Wave clear pressure, roams, and maximum utility.', '{"primary_data":[50,55,58,59],"secondary_data":[31,32]}', 3, 5, 1, 1, 3, 51, 2, '2017-12-24 17:16:40', '2017-12-24 17:16:40'),
(74, 'Their Tomb Awaits', 'Massive tower pressure and lane dueling.', '{"primary_data":[38,42,46,49],"secondary_data":[9,11]}', 1, 4, 1, 2, 3, 136, 2, '2017-12-24 17:16:40', '2017-12-24 17:16:40'),
(75, 'Threading the Needle', 'Teamfight sustain and dueling power.', '{"primary_data":[3,6,8,11],"secondary_data":[32,37]}', 3, 1, 2, 5, 3, 60, 20, '2017-12-24 17:16:40', '2017-12-24 17:16:40'),
(76, 'Leave Nasty Scars', 'Tank shred and scaling damage.', '{"primary_data":[2,5,8,12],"secondary_data":[32,37]}', 3, 1, 1, 5, 3, 60, 2, '2017-12-24 17:16:40', '2017-12-24 17:16:40'),
(77, 'On the Prowl', 'Map mobility, power farming, and assassination.', '{"primary_data":[14,19,22,25],"secondary_data":[33,36]}', 3, 2, 1, 4, 3, 120, 2, '2017-12-24 17:16:40', '2017-12-24 17:16:40'),
(78, 'They are Obsolete', 'Lane harass and empowered trading.', '{"primary_data":[26,29,33,35],"secondary_data":[57,54]}', 5, 3, 1, 1, 3, 4, 2, '2017-12-24 17:16:40', '2017-12-24 17:16:40'),
(79, 'Frugal Falsetto', 'Super efficient item power-spikes and gold saving.', '{"primary_data":[52,54,56,59],"secondary_data":[30,35]}', 3, 5, 1, 3, 3, 70, 2, '2017-12-24 17:16:40', '2017-12-24 17:16:40'),
(80, 'Pull Their Strings', 'Lane poke and teamfight power.', '{"primary_data":[26,30,32,35],"secondary_data":[20,24]}', 2, 3, 1, 3, 3, 70, 2, '2017-12-24 17:16:40', '2017-12-24 17:16:40'),
(81, 'Savor the Misery', 'Top lane dominance and unstoppable tankiness.', '{"primary_data":[38,41,44,47],"secondary_data":[6,8]}', 1, 4, 1, 2, 3, 127, 2, '2017-12-24 17:16:40', '2017-12-24 17:16:40'),
(82, 'A Feast Awaits', 'AD Carry protection and safety.', '{"primary_data":[40,43,46,48],"secondary_data":[60,54]}', 5, 4, 2, 3, 3, 127, 7, '2017-12-24 17:16:40', '2017-12-24 17:16:40'),
(83, 'The Marin Special(ist)', 'All about the all-in. FLASHy engages. AP burst.', '{"primary_data":[50,55,57,59],"secondary_data":[31,33]}', 3, 5, 1, 2, 3, 138, 11, '2017-12-24 17:16:40', '2017-12-24 17:16:40'),
(84, 'Echoing from the Depths', 'Burst damage and meat grinder execution.', '{"primary_data":[2,6,9,11],"secondary_data":[33,31]}', 3, 1, 1, 2, 3, 41, 2, '2017-12-24 17:16:40', '2017-12-24 17:16:40'),
(85, 'Gotta Go Fast', 'Massive Movement Speed, roaming, and map pressure.', '{"primary_data":[15,19,22,25],"secondary_data":[33,29]}', 3, 2, 1, 2, 3, 56, 2, '2017-12-24 17:16:40', '2017-12-24 17:16:40'),
(86, 'Throw it in Their Face!', 'Stacking CDR and lane harassment.', '{"primary_data":[27,30,32,35],"secondary_data":[59,54]}', 5, 3, 1, 1, 3, 8, 2, '2017-12-24 17:16:40', '2017-12-24 17:16:40'),
(87, 'Death is in Bloom', 'Oppressive lane pressure and poke.', '{"primary_data":[26,30,34,35],"secondary_data":[20,17]}', 2, 3, 1, 3, 3, 75, 2, '2017-12-24 17:16:40', '2017-12-24 17:16:40'),
(88, 'A Little Star Fire', 'Map mobility pressure and teamfight scaling.', '{"primary_data":[28,29,33,36],"secondary_data":[7,11]}', 1, 3, 2, 1, 3, 61, 2, '2017-12-24 17:16:41', '2017-12-24 17:16:41'),
(89, 'Rest in Peace', 'Massive damage scaling and kill threat.', '{"primary_data":[27,31,34,37],"secondary_data":[11,7]}', 1, 3, 1, 1, 3, 63, 2, '2017-12-24 17:16:41', '2017-12-24 17:16:41'),
(90, 'Embrace the night', 'Lane safety and burst damage.', '{"primary_data":[14,19,20,25],"secondary_data":[29,35]}', 3, 2, 1, 1, 3, 55, 2, '2017-12-24 17:16:41', '2017-12-24 17:16:41'),
(91, 'Don’t Throw a Tantrum', 'Tank engage and teamfight utility.', '{"primary_data":[39,41,46,47],"secondary_data":[32,31]}', 3, 4, 2, 4, 3, 65, 2, '2017-12-24 17:16:41', '2017-12-24 17:16:41'),
(92, 'Try that Again', 'Reliable and strong lane harass. CDR and item safety.', '{"primary_data":[26,31,32,35],"secondary_data":[59,55]}', 5, 3, 1, 1, 3, 71, 2, '2017-12-24 17:16:41', '2017-12-24 17:16:41'),
(93, 'Rip Them to Bits', 'All-around dueling and map control.', '{"primary_data":[2,6,9,11],"secondary_data":[19,20]}', 2, 1, 1, 4, 3, 108, 2, '2017-12-24 17:16:41', '2017-12-24 17:16:41'),
(94, 'Who’s next?', 'Last game scaling and dueling split push.', '{"primary_data":[3,6,8,11],"secondary_data":[31,37]}', 3, 1, 1, 2, 3, 17, 2, '2017-12-24 17:16:41', '2017-12-24 17:16:41'),
(95, 'Bankplank Mid', 'Lane sustain, money stacking, and global pressure.', '{"primary_data":[52,55,57,59],"secondary_data":[31,32]}', 3, 5, 1, 1, 3, 84, 2, '2017-12-24 17:16:41', '2017-12-24 17:16:41'),
(96, 'Bankplank', 'Lane sustain, money stacking, and global pressure.', '{"primary_data":[52,55,57,59],"secondary_data":[31,32]}', 3, 5, 1, 2, 3, 84, 2, '2017-12-24 17:16:41', '2017-12-24 17:16:41'),
(97, 'Always on the Run', 'Roaming and map pressure with [R].', '{"primary_data":[27,31,33,35],"secondary_data":[25,17]}', 2, 3, 2, 1, 3, 37, 2, '2017-12-24 17:16:41', '2017-12-24 17:16:41'),
(98, 'Who Wants a Piece?', 'Ramping damage and 1v1/split-push power.', '{"primary_data":[2,6,9,11],"secondary_data":[41,49]}', 4, 1, 1, 2, 3, 49, 2, '2017-12-24 17:16:41', '2017-12-24 17:16:41'),
(99, 'Beaten By a Little Girl', 'Massive burst damage and roaming.', '{"primary_data":[14,17,20,25],"secondary_data":[31,32]}', 3, 2, 1, 1, 3, 32, 2, '2017-12-24 17:16:41', '2017-12-24 17:16:41'),
(100, 'No Boots No Problem', 'Kiting Movement Speed and late game scaling.', '{"primary_data":[28,30,33,37],"secondary_data":[7,11]}', 1, 3, 1, 1, 3, 116, 2, '2017-12-24 17:16:41', '2017-12-24 17:16:41'),
(101, 'Consider Them Spanked', 'Lane safety and massive scaling damage.', '{"primary_data":[4,6,9,11],"secondary_data":[37,29]}', 3, 1, 1, 1, 3, 85, 2, '2017-12-24 17:16:41', '2017-12-24 17:16:41'),
(102, 'Stay Dead', 'Ramping damage and tank shredding.', '{"primary_data":[2,5,10,11],"secondary_data":[19,20]}', 2, 1, 1, 5, 3, 7, 2, '2017-12-24 17:16:41', '2017-12-24 17:16:41'),
(103, 'Deadly Disintegration Damage', 'Maximum AP and 1-shot potential.', '{"primary_data":[14,17,20,23],"secondary_data":[34,37]}', 3, 2, 1, 1, 3, 103, 2, '2017-12-24 17:16:41', '2017-12-24 17:16:41'),
(104, 'Their Lives are Forfeit', 'Ramping damage and backline pressure.', '{"primary_data":[2,6,9,11],"secondary_data":[41,49]}', 4, 1, 1, 4, 3, 39, 2, '2017-12-24 17:16:41', '2017-12-24 17:16:41'),
(105, 'Life’s Cheap, Death Pays', 'Heavy sustain, life steal, and safety.', '{"primary_data":[4,5,10,12],"secondary_data":[18,20]}', 2, 1, 1, 5, 3, 24, 2, '2017-12-24 17:16:41', '2017-12-24 17:16:41'),
(106, 'Those in Glass Houses', 'Well-rounded lane presence and late-game scaling.', '{"primary_data":[27,30,33,35],"secondary_data":[6,11]}', 1, 3, 2, 1, 3, 104, 22, '2017-12-24 17:16:41', '2017-12-24 17:16:41'),
(107, 'End of the Line', 'Massive burst damage and dueling.', '{"primary_data":[14,19,20,23],"secondary_data":[8,11]}', 1, 2, 2, 4, 3, 129, 2, '2017-12-24 17:16:42', '2017-12-24 17:16:42'),
(108, 'Blaze a Trail', 'Massive damage on slowed targets.', '{"primary_data":[27,30,34,35],"secondary_data":[17,23]}', 2, 3, 2, 3, 3, 112, 2, '2017-12-24 17:16:42', '2017-12-24 17:16:42'),
(109, 'Bird is the Word', 'Massive scaling damage and Zhonya''s safety.', '{"primary_data":[27,30,32,37],"secondary_data":[55,59]}', 5, 3, 1, 1, 3, 67, 2, '2017-12-24 17:16:42', '2017-12-24 17:16:42'),
(110, 'Another Unworthy Opponent', 'Maximum damage, kill threat, and efficient power spikes.', '{"primary_data":[14,19,22,23],"secondary_data":[55,57]}', 5, 2, 1, 1, 3, 137, 2, '2017-12-24 17:16:42', '2017-12-24 17:16:42'),
(111, 'Hip Hop a Potamus', 'Maximum execute damage.', '{"primary_data":[2,5,10,11],"secondary_data":[19,21]}', 2, 1, 1, 5, 3, 82, 2, '2017-12-24 17:16:42', '2017-12-24 17:16:42'),
(112, 'Nature’s Grasping at Straws', 'Engage, tankiness, and massive team-wide healing.', '{"primary_data":[39,43,46,48],"secondary_data":[55,56]}', 5, 4, 1, 2, 3, 100, 2, '2017-12-24 17:16:42', '2017-12-24 17:16:42'),
(113, 'You lose', 'Mobility, scaling, and item efficiency.', '{"primary_data":[28,30,32,37],"secondary_data":[59,55]}', 5, 3, 1, 1, 3, 22, 2, '2017-12-24 17:16:42', '2017-12-24 17:16:42'),
(114, 'Wash the Pain Away', 'Aggressive lane trading and mobility.', '{"primary_data":[26,30,33,35],"secondary_data":[20,17]}', 2, 3, 1, 3, 3, 78, 2, '2017-12-24 17:16:42', '2017-12-24 17:16:42'),
(115, 'Ask Questions Later', 'Burst damage and snowball potential.', '{"primary_data":[14,19,22,25],"secondary_data":[6,11]}', 1, 2, 1, 4, 3, 57, 2, '2017-12-24 17:16:42', '2017-12-24 17:16:42'),
(116, 'Keep Punching', 'Dive, blow up your target, and get out alive.', '{"primary_data":[39,41,44,47],"secondary_data":[8,11]}', 1, 4, 1, 4, 3, 57, 2, '2017-12-24 17:16:42', '2017-12-24 17:16:42'),
(117, 'Classic Misdirection', 'Assasination and well-rounded utility.', '{"primary_data":[14,19,22,23],"secondary_data":[32,31]}', 3, 2, 1, 1, 3, 42, 2, '2017-12-24 17:16:42', '2017-12-24 17:16:42'),
(118, 'I’m Just Trolling', 'Heavy split-push and healing.', '{"primary_data":[38,42,44,48],"secondary_data":[8,5]}', 1, 4, 1, 2, 3, 89, 2, '2017-12-24 17:16:42', '2017-12-24 17:16:42'),
(119, 'Give Up Now', 'Maximum burst and scaling.', '{"primary_data":[14,17,21,23],"secondary_data":[37,32]}', 3, 2, 1, 1, 3, 88, 2, '2017-12-24 17:16:42', '2017-12-24 17:16:42'),
(120, 'Slice ‘Em and Dice ‘Em', 'Good mix of offensive and defensive power.', '{"primary_data":[2,5,9,11],"secondary_data":[49,44]}', 4, 1, 1, 2, 3, 101, 2, '2017-12-24 17:16:42', '2017-12-24 17:16:42'),
(121, 'Act With Conviction', 'Mix of utility and early-game strength.', '{"primary_data":[26,31,32,35],"secondary_data":[59,56]}', 5, 3, 1, 3, 3, 86, 2, '2017-12-24 17:16:42', '2017-12-24 17:16:42'),
(122, 'Scrap and Equalize', 'Lane bullying and mid-game scaling.', '{"primary_data":[27,31,34,35],"secondary_data":[55,57]}', 5, 3, 1, 2, 3, 115, 2, '2017-12-24 17:16:42', '2017-12-24 17:16:42'),
(123, 'A True Display of Damage', 'Hyper-scaling and late-game carry.', '{"primary_data":[2,5,10,13],"secondary_data":[32,37]}', 3, 1, 1, 5, 3, 134, 2, '2017-12-24 17:16:42', '2017-12-24 17:16:42'),
(124, 'Money in the Bank', 'Money-making, weak early, and accelerated item scaling.', '{"primary_data":[52,54,57,59],"secondary_data":[6,11]}', 1, 5, 1, 5, 3, 134, 2, '2017-12-24 17:16:42', '2017-12-24 17:16:42'),
(125, 'Gimmie All Those Chimes', 'Map Roaming and kill pressure.', '{"primary_data":[14,17,20,25],"secondary_data":[35,30]}', 3, 2, 1, 3, 3, 92, 2, '2017-12-24 17:16:42', '2017-12-24 17:16:42'),
(126, 'Truly Outrageous', 'Powerful Heals, Shields, and Active Items.', '{"primary_data":[40,43,44,48],"secondary_data":[24,20]}', 2, 4, 1, 3, 3, 87, 2, '2017-12-24 17:16:42', '2017-12-24 17:16:42'),
(127, 'They Will Suffer', 'All-around versatility and efficiency.', '{"primary_data":[27,30,32,35],"secondary_data":[55,59]}', 5, 3, 1, 3, 3, 50, 2, '2017-12-24 17:16:42', '2017-12-24 17:16:42'),
(128, 'Breach the Gates', 'Split push, scaling, and opening the gates.', '{"primary_data":[28,31,32,37],"secondary_data":[42,49]}', 4, 3, 1, 2, 3, 119, 2, '2017-12-24 17:16:43', '2017-12-24 17:16:43'),
(129, 'Moss Builds Character', 'Early skirmishing and empowering teammates.', '{"primary_data":[26,31,32,35],"secondary_data":[48,46]}', 4, 3, 1, 4, 3, 81, 2, '2017-12-24 17:16:43', '2017-12-24 17:16:43'),
(130, 'Ok.', 'Maximum tank and target acquisition.', '{"primary_data":[39,41,46,47],"secondary_data":[17,25]}', 2, 4, 2, 4, 3, 66, 2, '2017-12-24 17:16:43', '2017-12-24 17:16:43'),
(131, 'Agonizing Allure', 'Pure assassination and map presence.', '{"primary_data":[14,19,22,25],"secondary_data":[31,33]}', 3, 2, 2, 4, 3, 53, 2, '2017-12-24 17:16:43', '2017-12-24 17:16:43'),
(132, 'Let’s Dance', 'Teamfight initiation and survivability.', '{"primary_data":[39,43,46,48],"secondary_data":[32,31]}', 3, 4, 1, 3, 3, 58, 2, '2017-12-24 17:16:43', '2017-12-24 17:16:43'),
(133, 'Where Do You Think You’re going?', 'Lane dominance, chase, and kill potential.', '{"primary_data":[51,55,57,60],"secondary_data":[8,11]}', 1, 5, 1, 2, 3, 90, 2, '2017-12-24 17:16:43', '2017-12-24 17:16:43'),
(134, 'Hip Hop Hyper', 'Split-push dueling and tower pressure.', '{"primary_data":[2,6,8,11],"secondary_data":[42,46]}', 4, 1, 1, 2, 3, 90, 2, '2017-12-24 17:16:43', '2017-12-24 17:16:43'),
(135, 'From the Shadows', 'Split push and map pressure with ult.', '{"primary_data":[38,42,46,47],"secondary_data":[32,31]}', 3, 4, 1, 2, 3, 18, 2, '2017-12-24 17:16:43', '2017-12-24 17:16:43'),
(136, 'How About a Drink?', 'Split-push, lane sustain, and summoner spell spam.', '{"primary_data":[50,54,56,61],"secondary_data":[41,44]}', 4, 5, 1, 2, 3, 52, 2, '2017-12-24 17:16:43', '2017-12-24 17:16:43'),
(137, 'Unbreakable Freljord Heart', 'Shields, heals, and all about the tankiness.', '{"primary_data":[40,43,44,49],"secondary_data":[61,56]}', 5, 4, 2, 3, 3, 106, 2, '2017-12-24 17:16:43', '2017-12-24 17:16:43'),
(138, 'Try to Leave a Dent', 'Lane dominance kill threat and map roaming', '{"primary_data":[39,42,46,49],"secondary_data":[17,25]}', 2, 4, 2, 3, 3, 1, 4, '2017-12-24 17:16:43', '2017-12-24 17:16:43'),
(139, 'Can’t Milk Those', 'Engage and teamfight power with item actives.', '{"primary_data":[39,43,44,48],"secondary_data":[20,24]}', 2, 4, 1, 3, 3, 21, 2, '2017-12-24 17:16:43', '2017-12-24 17:16:43'),
(140, 'Bring down the Guillotine', 'Resets on resets. Snowball and solo carry.', '{"primary_data":[16,17,22,23],"secondary_data":[48,46]}', 4, 2, 1, 2, 3, 33, 2, '2017-12-24 17:16:43', '2017-12-24 17:16:43'),
(141, 'Decimate the Competition', 'Run down and Decimate the enemy.', '{"primary_data":[28,30,33,37],"secondary_data":[48,46]}', 4, 3, 1, 2, 3, 33, 2, '2017-12-24 17:16:43', '2017-12-24 17:16:43'),
(142, 'Feel the Thunder', 'Lane bullying and mana sustain', '{"primary_data":[2,7,9,12],"secondary_data":[32,30]}', 3, 1, 1, 2, 3, 38, 2, '2017-12-24 17:16:43', '2017-12-24 17:16:43'),
(143, 'Honor, Death, and Hangovers', 'Lane sustain/Life Steal and tank shredding', '{"primary_data":[2,5,10,12],"secondary_data":[44,48]}', 4, 1, 1, 2, 3, 93, 2, '2017-12-24 17:16:43', '2017-12-24 17:16:43'),
(144, 'No More Running', 'Glass cannon and kill threat', '{"primary_data":[2,6,8,11],"secondary_data":[19,21]}', 2, 1, 1, 1, 3, 93, 2, '2017-12-24 17:16:43', '2017-12-24 17:16:43'),
(145, 'Dodge this!', 'Teamfight initiation and tankiness.', '{"primary_data":[39,43,46,48],"secondary_data":[53,59]}', 5, 4, 1, 4, 3, 123, 2, '2017-12-24 17:16:43', '2017-12-24 17:16:43'),
(146, 'Taste Their Fear', 'Assassination and pure reset potential.', '{"primary_data":[16,19,22,24],"secondary_data":[11,6]}', 1, 2, 1, 4, 3, 31, 2, '2017-12-24 17:16:43', '2017-12-24 17:16:43'),
(147, 'Spider Queen', 'Assassination and jungle dominance', '{"primary_data":[14,19,22,23],"secondary_data":[32,36]}', 3, 2, 1, 4, 3, 109, 2, '2017-12-24 17:16:43', '2017-12-24 17:16:43'),
(148, 'Primal Domination', 'Great mix of damage and tankiness.', '{"primary_data":[2,5,9,11],"secondary_data":[41,46]}', 4, 1, 1, 4, 3, 28, 2, '2017-12-24 17:16:43', '2017-12-24 17:16:43'),
(149, 'Wuju Bladesman', 'Raw power and snowball.', '{"primary_data":[3,6,8,11],"secondary_data":[19,22]}', 2, 1, 1, 4, 3, 20, 2, '2017-12-24 17:16:43', '2017-12-24 17:16:43'),
(150, 'Pure Cataclysm', 'Full offensive kill potential.', '{"primary_data":[14,19,22,25],"secondary_data":[6,8]}', 1, 2, 1, 4, 3, 102, 23, '2017-12-24 17:16:44', '2017-12-24 17:16:44'),
(151, 'Stuns for Days', 'Maximum utility and ability spam.', '{"primary_data":[4,5,8,12],"secondary_data":[31,32]}', 3, 1, 1, 5, 3, 47, 2, '2017-12-24 17:16:44', '2017-12-24 17:16:44'),
(152, 'Make It Count', 'Massive damage and teamfight presence.', '{"primary_data":[2,5,8,11],"secondary_data":[17,21]}', 2, 1, 1, 5, 3, 47, 2, '2017-12-24 17:16:44', '2017-12-24 17:16:44'),
(153, 'They’re Not Laughing', 'Hyper-scaling damage and reset damage.', '{"primary_data":[3,6,8,11],"secondary_data":[33,37]}', 3, 1, 1, 5, 3, 124, 19, '2017-12-24 17:16:44', '2017-12-24 17:16:44'),
(154, 'Artillery of the Living', 'Maximum Attack Speed and shred.', '{"primary_data":[3,6,8,12],"secondary_data":[21,23]}', 2, 1, 1, 5, 3, 16, 2, '2017-12-24 17:16:44', '2017-12-24 17:16:44'),
(155, 'Rat-Ta-Tat', 'Assassination and teamfight takeover.', '{"primary_data":[3,6,8,12],"secondary_data":[19,21]}', 2, 1, 1, 5, 3, 54, 2, '2017-12-24 17:16:44', '2017-12-24 17:16:44'),
(156, 'Rough and Tumble', 'Lane sustain, mobility, and dueling.', '{"primary_data":[4,6,8,11],"secondary_data":[19,23]}', 2, 1, 1, 5, 3, 114, 6, '2017-12-24 17:16:44', '2017-12-24 17:16:44'),
(157, 'Playfully Trick ‘Em', 'Balance of damage and utility.', '{"primary_data":[14,19,22,24],"secondary_data":[32,29]}', 3, 2, 2, 1, 3, 130, 22, '2017-12-24 17:16:44', '2017-12-24 17:16:44'),
(158, 'All About Them Resets', 'Assassinate, reset, and repeat.', '{"primary_data":[14,19,22,23],"secondary_data":[6,11]}', 1, 2, 1, 1, 3, 98, 24, '2017-12-24 17:16:44', '2017-12-24 17:16:44'),
(159, 'Unleash Power', 'Lane dominance and AP scaling.', '{"primary_data":[14,17,21,23],"secondary_data":[34,37]}', 3, 2, 1, 1, 3, 59, 2, '2017-12-24 17:16:44', '2017-12-24 17:16:44'),
(160, 'Contempt for Mages', 'Difficult AP matchups.', '{"primary_data":[14,19,22,25],"secondary_data":[32,29]}', 3, 2, 1, 1, 3, 11, 2, '2017-12-24 17:16:44', '2017-12-24 17:16:44'),
(161, 'What Was That?!', 'Maximum damage and abuse squishys.', '{"primary_data":[14,19,22,25],"secondary_data":[6,11]}', 1, 2, 2, 1, 3, 11, 2, '2017-12-24 17:16:44', '2017-12-24 17:16:44'),
(162, 'Like Clockwork', 'Lane dominance and teamfight utility.', '{"primary_data":[26,30,32,35],"secondary_data":[55,59]}', 5, 3, 2, 1, 3, 110, 2, '2017-12-24 17:16:44', '2017-12-24 17:16:44'),
(163, 'I Lend My Aid', 'Heals, heals, and more heals.', '{"primary_data":[26,30,33,35],"secondary_data":[48,43]}', 4, 3, 2, 3, 3, 25, 2, '2017-12-24 17:16:44', '2017-12-24 17:16:44'),
(164, 'Rhaast the Bruiser', 'Duel and wear-down your opponents.', '{"primary_data":[16,19,22,23],"secondary_data":[48,46]}', 4, 2, 1, 4, 3, 73, 2, '2017-12-24 17:16:44', '2017-12-24 17:16:44'),
(165, 'The Shadow Assassin', 'See. Seek. Kill.', '{"primary_data":[16,19,22,23],"secondary_data":[6,11]}', 1, 2, 1, 4, 3, 73, 2, '2017-12-24 17:16:44', '2017-12-24 17:16:44'),
(166, 'Go Go Golem', 'Cheese, kill, and snowball.', '{"primary_data":[39,42,44,49],"secondary_data":[53,57]}', 5, 4, 2, 3, 3, 96, 2, '2017-12-24 17:16:44', '2017-12-24 17:16:44'),
(167, 'All About Them Shields and Heals', 'Heavy focus on empowered shield/heals.', '{"primary_data":[26,30,32,36],"secondary_data":[48,44]}', 4, 3, 1, 3, 3, 83, 2, '2017-12-24 17:16:44', '2017-12-24 17:16:44'),
(168, 'Colossally Smashing Lane', 'Dominate lane & pressure the map.', '{"primary_data":[39,41,45,49],"secondary_data":[30,32]}', 3, 4, 1, 2, 3, 36, 2, '2017-12-24 17:16:44', '2017-12-24 17:16:44'),
(169, 'Colossal teamfighter', 'Lane bully and skirmishing.', '{"primary_data":[39,41,45,49],"secondary_data":[30,32]}', 3, 4, 1, 1, 3, 36, 2, '2017-12-24 17:16:44', '2017-12-24 17:16:44'),
(170, 'Grand Challenge and Carry', 'Raw damage and snowball potential.', '{"primary_data":[2,6,10,11],"secondary_data":[19,22]}', 2, 1, 1, 2, 3, 6, 2, '2017-12-24 17:16:44', '2017-12-24 17:16:44'),
(171, 'Scrap, Stun, and Succeed', 'Health stacking and map control.', '{"primary_data":[39,43,44,47],"secondary_data":[20,25]}', 2, 4, 1, 4, 3, 5, 2, '2017-12-24 17:16:45', '2017-12-24 17:16:45'),
(172, 'Poke, Pressure, and Pix!', 'Poke, skirmishing, and lane dominance.', '{"primary_data":[26,31,32,35],"secondary_data":[20,17]}', 2, 3, 1, 3, 3, 9, 2, '2017-12-24 17:16:45', '2017-12-24 17:16:45'),
(173, 'Health Stack on Health Stack', 'Doubling down on health stacking and tankiness.', '{"primary_data":[38,42,46,47],"secondary_data":[6,9]}', 1, 4, 1, 2, 3, 64, 2, '2017-12-24 17:16:45', '2017-12-24 17:16:45'),
(174, 'The Poking Fox', 'Consistent lane pressure and item efficiency.', '{"primary_data":[27,31,32,35],"secondary_data":[55,56]}', 5, 3, 1, 1, 3, 128, 2, '2017-12-24 17:16:45', '2017-12-24 17:16:45'),
(175, 'Burst. Snowball. Carry.', 'Kill and carry potential.', '{"primary_data":[14,19,22,23],"secondary_data":[35,32]}', 3, 2, 1, 1, 3, 128, 2, '2017-12-24 17:16:45', '2017-12-24 17:16:45');

-- --------------------------------------------------------

--
-- Table structure for table `champions`
--

CREATE TABLE IF NOT EXISTS `champions` (
  `id` int(10) unsigned NOT NULL,
  `champion_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `champion_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `champion_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `champion_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `champion_isFree` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=140 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `champions`
--

INSERT INTO `champions` (`id`, `champion_id`, `champion_key`, `champion_name`, `champion_title`, `champion_isFree`, `created_at`, `updated_at`) VALUES
(1, '89', 'Leona', 'Leona', 'the Radiant Dawn', '0', '2017-12-18 22:35:33', '2017-12-18 22:35:33'),
(2, '110', 'Varus', 'Varus', 'the Arrow of Retribution', '0', '2017-12-18 22:35:33', '2017-12-18 22:35:33'),
(3, '111', 'Nautilus', 'Nautilus', 'the Titan of the Depths', '0', '2017-12-18 22:35:33', '2017-12-18 22:35:33'),
(4, '112', 'Viktor', 'Viktor', 'the Machine Herald', '0', '2017-12-18 22:35:33', '2017-12-18 22:35:33'),
(5, '113', 'Sejuani', 'Sejuani', 'Fury of the North', '0', '2017-12-18 22:35:33', '2017-12-18 22:35:33'),
(6, '114', 'Fiora', 'Fiora', 'the Grand Duelist', '0', '2017-12-18 22:35:33', '2017-12-18 22:35:33'),
(7, '236', 'Lucian', 'Lucian', 'the Purifier', '0', '2017-12-18 22:35:33', '2017-12-18 22:35:33'),
(8, '115', 'Ziggs', 'Ziggs', 'the Hexplosives Expert', '0', '2017-12-18 22:35:33', '2017-12-18 22:35:33'),
(9, '117', 'Lulu', 'Lulu', 'the Fae Sorceress', '0', '2017-12-18 22:35:33', '2017-12-18 22:35:33'),
(10, '90', 'Malzahar', 'Malzahar', 'the Prophet of the Void', '0', '2017-12-18 22:35:33', '2017-12-18 22:35:33'),
(11, '238', 'Zed', 'Zed', 'the Master of Shadows', '0', '2017-12-18 22:35:33', '2017-12-18 22:35:33'),
(12, '91', 'Talon', 'Talon', 'the Blade''s Shadow', '0', '2017-12-18 22:35:33', '2017-12-18 22:35:33'),
(13, '119', 'Draven', 'Draven', 'the Glorious Executioner', '1', '2017-12-18 22:35:33', '2017-12-18 22:35:37'),
(14, '92', 'Riven', 'Riven', 'the Exile', '0', '2017-12-18 22:35:33', '2017-12-18 22:35:33'),
(15, '516', 'Ornn', 'Ornn', 'The Fire below the Mountain', '0', '2017-12-18 22:35:33', '2017-12-18 22:35:33'),
(16, '96', 'KogMaw', 'Kog''Maw', 'the Mouth of the Abyss', '0', '2017-12-18 22:35:33', '2017-12-18 22:35:33'),
(17, '10', 'Kayle', 'Kayle', 'The Judicator', '1', '2017-12-18 22:35:33', '2017-12-18 22:35:37'),
(18, '98', 'Shen', 'Shen', 'the Eye of Twilight', '0', '2017-12-18 22:35:33', '2017-12-18 22:35:33'),
(19, '99', 'Lux', 'Lux', 'the Lady of Luminosity', '0', '2017-12-18 22:35:33', '2017-12-18 22:35:33'),
(20, '11', 'MasterYi', 'Master Yi', 'the Wuju Bladesman', '0', '2017-12-18 22:35:33', '2017-12-18 22:35:33'),
(21, '12', 'Alistar', 'Alistar', 'the Minotaur', '0', '2017-12-18 22:35:33', '2017-12-18 22:35:33'),
(22, '13', 'Ryze', 'Ryze', 'the Rune Mage', '0', '2017-12-18 22:35:33', '2017-12-18 22:35:33'),
(23, '14', 'Sion', 'Sion', 'The Undead Juggernaut', '0', '2017-12-18 22:35:33', '2017-12-18 22:35:33'),
(24, '15', 'Sivir', 'Sivir', 'the Battle Mistress', '0', '2017-12-18 22:35:33', '2017-12-18 22:35:33'),
(25, '16', 'Soraka', 'Soraka', 'the Starchild', '1', '2017-12-18 22:35:33', '2017-12-18 22:35:37'),
(26, '17', 'Teemo', 'Teemo', 'the Swift Scout', '0', '2017-12-18 22:35:33', '2017-12-18 22:35:33'),
(27, '18', 'Tristana', 'Tristana', 'the Yordle Gunner', '0', '2017-12-18 22:35:33', '2017-12-18 22:35:33'),
(28, '19', 'Warwick', 'Warwick', 'the Uncaged Wrath of Zaun', '0', '2017-12-18 22:35:33', '2017-12-18 22:35:33'),
(29, '240', 'Kled', 'Kled', 'the Cantankerous Cavalier', '0', '2017-12-18 22:35:33', '2017-12-18 22:35:33'),
(30, '120', 'Hecarim', 'Hecarim', 'the Shadow of War', '0', '2017-12-18 22:35:33', '2017-12-18 22:35:33'),
(31, '121', 'Khazix', 'Kha''Zix', 'the Voidreaver', '0', '2017-12-18 22:35:33', '2017-12-18 22:35:33'),
(32, '1', 'Annie', 'Annie', 'the Dark Child', '1', '2017-12-18 22:35:33', '2017-12-18 22:35:37'),
(33, '122', 'Darius', 'Darius', 'the Hand of Noxus', '0', '2017-12-18 22:35:33', '2017-12-18 22:35:33'),
(34, '2', 'Olaf', 'Olaf', 'the Berserker', '0', '2017-12-18 22:35:33', '2017-12-18 22:35:33'),
(35, '245', 'Ekko', 'Ekko', 'the Boy Who Shattered Time', '0', '2017-12-18 22:35:33', '2017-12-18 22:35:33'),
(36, '3', 'Galio', 'Galio', 'the Colossus', '0', '2017-12-18 22:35:33', '2017-12-18 22:35:33'),
(37, '4', 'TwistedFate', 'Twisted Fate', 'the Card Master', '0', '2017-12-18 22:35:33', '2017-12-18 22:35:33'),
(38, '126', 'Jayce', 'Jayce', 'the Defender of Tomorrow', '0', '2017-12-18 22:35:33', '2017-12-18 22:35:33'),
(39, '5', 'XinZhao', 'Xin Zhao', 'the Seneschal of Demacia', '1', '2017-12-18 22:35:33', '2017-12-18 22:35:37'),
(40, '127', 'Lissandra', 'Lissandra', 'the Ice Witch', '0', '2017-12-18 22:35:33', '2017-12-18 22:35:33'),
(41, '6', 'Urgot', 'Urgot', 'the Dreadnought', '0', '2017-12-18 22:35:33', '2017-12-18 22:35:33'),
(42, '7', 'Leblanc', 'LeBlanc', 'the Deceiver', '0', '2017-12-18 22:35:33', '2017-12-18 22:35:33'),
(43, '8', 'Vladimir', 'Vladimir', 'the Crimson Reaper', '0', '2017-12-18 22:35:33', '2017-12-18 22:35:33'),
(44, '9', 'Fiddlesticks', 'Fiddlesticks', 'the Harbinger of Doom', '0', '2017-12-18 22:35:33', '2017-12-18 22:35:33'),
(45, '20', 'Nunu', 'Nunu', 'the Yeti Rider', '0', '2017-12-18 22:35:33', '2017-12-18 22:35:33'),
(46, '21', 'MissFortune', 'Miss Fortune', 'the Bounty Hunter', '0', '2017-12-18 22:35:33', '2017-12-18 22:35:33'),
(47, '22', 'Ashe', 'Ashe', 'the Frost Archer', '0', '2017-12-18 22:35:33', '2017-12-18 22:35:33'),
(48, '23', 'Tryndamere', 'Tryndamere', 'the Barbarian King', '0', '2017-12-18 22:35:33', '2017-12-18 22:35:33'),
(49, '24', 'Jax', 'Jax', 'Grandmaster at Arms', '0', '2017-12-18 22:35:33', '2017-12-18 22:35:33'),
(50, '25', 'Morgana', 'Morgana', 'Fallen Angel', '0', '2017-12-18 22:35:33', '2017-12-18 22:35:33'),
(51, '26', 'Zilean', 'Zilean', 'the Chronokeeper', '0', '2017-12-18 22:35:33', '2017-12-18 22:35:33'),
(52, '27', 'Singed', 'Singed', 'the Mad Chemist', '0', '2017-12-18 22:35:33', '2017-12-18 22:35:33'),
(53, '28', 'Evelynn', 'Evelynn', 'Agony''s Embrace', '0', '2017-12-18 22:35:33', '2017-12-18 22:35:33'),
(54, '29', 'Twitch', 'Twitch', 'the Plague Rat', '0', '2017-12-18 22:35:33', '2017-12-18 22:35:33'),
(55, '131', 'Diana', 'Diana', 'Scorn of the Moon', '0', '2017-12-18 22:35:33', '2017-12-18 22:35:33'),
(56, '133', 'Quinn', 'Quinn', 'Demacia''s Wings', '0', '2017-12-18 22:35:33', '2017-12-18 22:35:33'),
(57, '254', 'Vi', 'Vi', 'the Piltover Enforcer', '0', '2017-12-18 22:35:33', '2017-12-18 22:35:33'),
(58, '497', 'Rakan', 'Rakan', 'The Charmer', '0', '2017-12-18 22:35:33', '2017-12-18 22:35:33'),
(59, '134', 'Syndra', 'Syndra', 'the Dark Sovereign', '0', '2017-12-18 22:35:33', '2017-12-18 22:35:33'),
(60, '498', 'Xayah', 'Xayah', 'the Rebel', '0', '2017-12-18 22:35:33', '2017-12-18 22:35:33'),
(61, '136', 'AurelionSol', 'Aurelion Sol', 'The Star Forger', '0', '2017-12-18 22:35:33', '2017-12-18 22:35:33'),
(62, '412', 'Thresh', 'Thresh', 'the Chain Warden', '1', '2017-12-18 22:35:33', '2017-12-18 22:35:37'),
(63, '30', 'Karthus', 'Karthus', 'the Deathsinger', '0', '2017-12-18 22:35:33', '2017-12-18 22:35:33'),
(64, '31', 'Chogath', 'Cho''Gath', 'the Terror of the Void', '0', '2017-12-18 22:35:33', '2017-12-18 22:35:33'),
(65, '32', 'Amumu', 'Amumu', 'the Sad Mummy', '0', '2017-12-18 22:35:33', '2017-12-18 22:35:33'),
(66, '33', 'Rammus', 'Rammus', 'the Armordillo', '0', '2017-12-18 22:35:33', '2017-12-18 22:35:33'),
(67, '34', 'Anivia', 'Anivia', 'the Cryophoenix', '1', '2017-12-18 22:35:33', '2017-12-18 22:35:37'),
(68, '35', 'Shaco', 'Shaco', 'the Demon Jester', '0', '2017-12-18 22:35:33', '2017-12-18 22:35:33'),
(69, '36', 'DrMundo', 'Dr. Mundo', 'the Madman of Zaun', '0', '2017-12-18 22:35:33', '2017-12-18 22:35:33'),
(70, '37', 'Sona', 'Sona', 'Maven of the Strings', '0', '2017-12-18 22:35:33', '2017-12-18 22:35:33'),
(71, '38', 'Kassadin', 'Kassadin', 'the Void Walker', '0', '2017-12-18 22:35:33', '2017-12-18 22:35:33'),
(72, '39', 'Irelia', 'Irelia', 'the Will of the Blades', '0', '2017-12-18 22:35:33', '2017-12-18 22:35:33'),
(73, '141', 'Kayn', 'Kayn', 'the Shadow Reaper', '0', '2017-12-18 22:35:33', '2017-12-18 22:35:33'),
(74, '142', 'Zoe', 'Zoe', 'the Aspect of Twilight', '1', '2017-12-18 22:35:33', '2017-12-18 22:35:37'),
(75, '143', 'Zyra', 'Zyra', 'Rise of the Thorns', '0', '2017-12-18 22:35:33', '2017-12-18 22:35:33'),
(76, '266', 'Aatrox', 'Aatrox', 'the Darkin Blade', '0', '2017-12-18 22:35:33', '2017-12-18 22:35:33'),
(77, '420', 'Illaoi', 'Illaoi', 'the Kraken Priestess', '0', '2017-12-18 22:35:33', '2017-12-18 22:35:33'),
(78, '267', 'Nami', 'Nami', 'the Tidecaller', '0', '2017-12-18 22:35:33', '2017-12-18 22:35:33'),
(79, '421', 'RekSai', 'Rek''Sai', 'the Void Burrower', '0', '2017-12-18 22:35:33', '2017-12-18 22:35:33'),
(80, '268', 'Azir', 'Azir', 'the Emperor of the Sands', '0', '2017-12-18 22:35:33', '2017-12-18 22:35:33'),
(81, '427', 'Ivern', 'Ivern', 'the Green Father', '0', '2017-12-18 22:35:33', '2017-12-18 22:35:33'),
(82, '429', 'Kalista', 'Kalista', 'the Spear of Vengeance', '0', '2017-12-18 22:35:33', '2017-12-18 22:35:33'),
(83, '40', 'Janna', 'Janna', 'the Storm''s Fury', '0', '2017-12-18 22:35:33', '2017-12-18 22:35:33'),
(84, '41', 'Gangplank', 'Gangplank', 'the Saltwater Scourge', '0', '2017-12-18 22:35:33', '2017-12-18 22:35:33'),
(85, '42', 'Corki', 'Corki', 'the Daring Bombardier', '0', '2017-12-18 22:35:33', '2017-12-18 22:35:33'),
(86, '43', 'Karma', 'Karma', 'the Enlightened One', '0', '2017-12-18 22:35:33', '2017-12-18 22:35:33'),
(87, '44', 'Taric', 'Taric', 'the Shield of Valoran', '0', '2017-12-18 22:35:33', '2017-12-18 22:35:33'),
(88, '45', 'Veigar', 'Veigar', 'the Tiny Master of Evil', '0', '2017-12-18 22:35:33', '2017-12-18 22:35:33'),
(89, '48', 'Trundle', 'Trundle', 'the Troll King', '0', '2017-12-18 22:35:33', '2017-12-18 22:35:33'),
(90, '150', 'Gnar', 'Gnar', 'the Missing Link', '0', '2017-12-18 22:35:33', '2017-12-18 22:35:33'),
(91, '154', 'Zac', 'Zac', 'the Secret Weapon', '0', '2017-12-18 22:35:33', '2017-12-18 22:35:33'),
(92, '432', 'Bard', 'Bard', 'the Wandering Caretaker', '0', '2017-12-18 22:35:33', '2017-12-18 22:35:33'),
(93, '157', 'Yasuo', 'Yasuo', 'the Unforgiven', '0', '2017-12-18 22:35:33', '2017-12-18 22:35:33'),
(94, '50', 'Swain', 'Swain', 'the Master Tactician', '0', '2017-12-18 22:35:33', '2017-12-18 22:35:33'),
(95, '51', 'Caitlyn', 'Caitlyn', 'the Sheriff of Piltover', '0', '2017-12-18 22:35:33', '2017-12-18 22:35:33'),
(96, '53', 'Blitzcrank', 'Blitzcrank', 'the Great Steam Golem', '0', '2017-12-18 22:35:33', '2017-12-18 22:35:33'),
(97, '54', 'Malphite', 'Malphite', 'Shard of the Monolith', '1', '2017-12-18 22:35:33', '2017-12-18 22:35:37'),
(98, '55', 'Katarina', 'Katarina', 'the Sinister Blade', '0', '2017-12-18 22:35:33', '2017-12-18 22:35:33'),
(99, '56', 'Nocturne', 'Nocturne', 'the Eternal Nightmare', '0', '2017-12-18 22:35:33', '2017-12-18 22:35:33'),
(100, '57', 'Maokai', 'Maokai', 'the Twisted Treant', '0', '2017-12-18 22:35:33', '2017-12-18 22:35:33'),
(101, '58', 'Renekton', 'Renekton', 'the Butcher of the Sands', '0', '2017-12-18 22:35:33', '2017-12-18 22:35:33'),
(102, '59', 'JarvanIV', 'Jarvan IV', 'the Exemplar of Demacia', '0', '2017-12-18 22:35:33', '2017-12-18 22:35:33'),
(103, '161', 'Velkoz', 'Vel''Koz', 'the Eye of the Void', '0', '2017-12-18 22:35:33', '2017-12-18 22:35:33'),
(104, '163', 'Taliyah', 'Taliyah', 'the Stoneweaver', '1', '2017-12-18 22:35:33', '2017-12-18 22:35:37'),
(105, '164', 'Camille', 'Camille', 'the Steel Shadow', '0', '2017-12-18 22:35:33', '2017-12-18 22:35:33'),
(106, '201', 'Braum', 'Braum', 'the Heart of the Freljord', '0', '2017-12-18 22:35:33', '2017-12-18 22:35:33'),
(107, '202', 'Jhin', 'Jhin', 'the Virtuoso', '0', '2017-12-18 22:35:33', '2017-12-18 22:35:33'),
(108, '203', 'Kindred', 'Kindred', 'The Eternal Hunters', '0', '2017-12-18 22:35:33', '2017-12-18 22:35:33'),
(109, '60', 'Elise', 'Elise', 'the Spider Queen', '1', '2017-12-18 22:35:33', '2017-12-18 22:35:37'),
(110, '61', 'Orianna', 'Orianna', 'the Lady of Clockwork', '0', '2017-12-18 22:35:33', '2017-12-18 22:35:33'),
(111, '62', 'MonkeyKing', 'Wukong', 'the Monkey King', '0', '2017-12-18 22:35:33', '2017-12-18 22:35:33'),
(112, '63', 'Brand', 'Brand', 'the Burning Vengeance', '1', '2017-12-18 22:35:33', '2017-12-18 22:35:37'),
(113, '64', 'LeeSin', 'Lee Sin', 'the Blind Monk', '0', '2017-12-18 22:35:33', '2017-12-18 22:35:33'),
(114, '67', 'Vayne', 'Vayne', 'the Night Hunter', '0', '2017-12-18 22:35:33', '2017-12-18 22:35:33'),
(115, '68', 'Rumble', 'Rumble', 'the Mechanized Menace', '0', '2017-12-18 22:35:33', '2017-12-18 22:35:33'),
(116, '69', 'Cassiopeia', 'Cassiopeia', 'the Serpent''s Embrace', '0', '2017-12-18 22:35:33', '2017-12-18 22:35:33'),
(117, '72', 'Skarner', 'Skarner', 'the Crystal Vanguard', '1', '2017-12-18 22:35:33', '2017-12-18 22:35:37'),
(118, '74', 'Heimerdinger', 'Heimerdinger', 'the Revered Inventor', '0', '2017-12-18 22:35:33', '2017-12-18 22:35:33'),
(119, '75', 'Nasus', 'Nasus', 'the Curator of the Sands', '0', '2017-12-18 22:35:33', '2017-12-18 22:35:33'),
(120, '76', 'Nidalee', 'Nidalee', 'the Bestial Huntress', '0', '2017-12-18 22:35:33', '2017-12-18 22:35:33'),
(121, '77', 'Udyr', 'Udyr', 'the Spirit Walker', '0', '2017-12-18 22:35:33', '2017-12-18 22:35:33'),
(122, '78', 'Poppy', 'Poppy', 'Keeper of the Hammer', '0', '2017-12-18 22:35:33', '2017-12-18 22:35:33'),
(123, '79', 'Gragas', 'Gragas', 'the Rabble Rouser', '0', '2017-12-18 22:35:33', '2017-12-18 22:35:33'),
(124, '222', 'Jinx', 'Jinx', 'the Loose Cannon', '1', '2017-12-18 22:35:33', '2017-12-18 22:35:37'),
(125, '101', 'Xerath', 'Xerath', 'the Magus Ascendant', '0', '2017-12-18 22:35:33', '2017-12-18 22:35:33'),
(126, '102', 'Shyvana', 'Shyvana', 'the Half-Dragon', '0', '2017-12-18 22:35:33', '2017-12-18 22:35:33'),
(127, '223', 'TahmKench', 'Tahm Kench', 'the River King', '0', '2017-12-18 22:35:33', '2017-12-18 22:35:33'),
(128, '103', 'Ahri', 'Ahri', 'the Nine-Tailed Fox', '0', '2017-12-18 22:35:33', '2017-12-18 22:35:33'),
(129, '104', 'Graves', 'Graves', 'the Outlaw', '0', '2017-12-18 22:35:33', '2017-12-18 22:35:33'),
(130, '105', 'Fizz', 'Fizz', 'the Tidal Trickster', '0', '2017-12-18 22:35:33', '2017-12-18 22:35:33'),
(131, '106', 'Volibear', 'Volibear', 'the Thunder''s Roar', '0', '2017-12-18 22:35:33', '2017-12-18 22:35:33'),
(132, '80', 'Pantheon', 'Pantheon', 'the Artisan of War', '0', '2017-12-18 22:35:33', '2017-12-18 22:35:33'),
(133, '107', 'Rengar', 'Rengar', 'the Pridestalker', '0', '2017-12-18 22:35:33', '2017-12-18 22:35:33'),
(134, '81', 'Ezreal', 'Ezreal', 'the Prodigal Explorer', '0', '2017-12-18 22:35:33', '2017-12-18 22:35:33'),
(135, '82', 'Mordekaiser', 'Mordekaiser', 'the Iron Revenant', '0', '2017-12-18 22:35:33', '2017-12-18 22:35:33'),
(136, '83', 'Yorick', 'Yorick', 'Shepherd of Souls', '0', '2017-12-18 22:35:34', '2017-12-18 22:35:34'),
(137, '84', 'Akali', 'Akali', 'the Fist of Shadow', '0', '2017-12-18 22:35:34', '2017-12-18 22:35:34'),
(138, '85', 'Kennen', 'Kennen', 'the Heart of the Tempest', '0', '2017-12-18 22:35:34', '2017-12-18 22:35:34'),
(139, '86', 'Garen', 'Garen', 'The Might of Demacia', '0', '2017-12-18 22:35:34', '2017-12-18 22:35:34');

-- --------------------------------------------------------

--
-- Table structure for table `keystones`
--

CREATE TABLE IF NOT EXISTS `keystones` (
  `id` int(10) unsigned NOT NULL,
  `stone_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stone_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stone_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isKey` tinyint(1) NOT NULL,
  `stone_video` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `stone_long_description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `stone_short_description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `stone_taken_on` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `runes_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `keystones`
--

INSERT INTO `keystones` (`id`, `stone_id`, `stone_title`, `stone_image`, `isKey`, `stone_video`, `stone_long_description`, `stone_short_description`, `stone_taken_on`, `runes_id`, `created_at`, `updated_at`) VALUES
(2, '8005', 'Press the Attack', '8005', 1, 'render_PTA.mp4', '<p>Hitting an enemy champion with 3 consecutive basic attacks will deal 30 - 120 bonus adaptive damage (based on level) and makes them vulnerable, increasing the damage they take by 12% from all sources for 6s.</p>\n', '3 attack burst | Teammates deal bonus damage to target.', 'Irelia|Fiora|Ezreal|Draven|Lucian|Ashe', 1, '2017-12-18 22:41:01', '2017-12-21 21:43:46'),
(3, '8008', 'Lethal Tempo', '8008', 1, 'render_LethalTempo.mp4', '<p>1.5s after damaging a champion gain 30 - 80% Attack Speed (based on level) for 3s. Attacking a champion extends the effect to 6s.</p>\n<p>Cooldown: 6s</p>\n<p>Lethal Tempo allows you to temporarily exceed the attack speed limit.</p>\n', 'Tons of attack speed | Exceeds Attack Speed limit.', 'Jinx|Twitch|Xayah|Azir|Kayle|Kog''Maw', 1, '2017-12-18 22:41:01', '2017-12-21 21:43:46'),
(4, '8021', 'Fleet Footwork', '8021', 1, 'render_FleetFootwork.mp4', '<p>Attacking a moving builds Energy stacks. At 100 stacks, your next attack is Energized.</p>\n<p>Energized attacks heal you for 3 - 60 (+0.30 bonus AD, +0.40 AP) and grant 30% increased Movement Speed for 1s.</p>\n<p>Healing is 60% as effective when used on a minion.<br />\nIf the attack that activates Fleet Footwork is a critical hit, Fleet Footwork''s healing is increased by 40% of your critical damage modifier</p>\n', 'Lane sustain | Engage Movement. Think old Warlords.', 'Caitlyn|Ashe|Jhin|Sivir|Corki|Vayne', 1, '2017-12-18 22:41:01', '2017-12-21 21:43:46'),
(5, '9101', 'Overheal', '9101', 0, '', '<p>Excess healing on you becomes a shield, for up to 10% of your total health + 10.</p>\n<p>Shield is built up from 40% of excess healing from self, or 300% of excess healing from allies.</p>\n', 'Excess incoming heals become a shield (includes lifesteal etc.)', 'Draven|Jhin|Lucian|Kalista|Sivir|Renekton', 1, '2017-12-18 22:41:01', '2017-12-20 16:16:38'),
(6, '9111', 'Triumph', '9111', 0, '', '<p>Takedowns restore 12% of your missing health and grant an additional 25 gold.</p>\n', 'Kills / Assists restore health and give 25 gold. Think old Dangerous Game.', 'Xin Zhao|Draven|Cho''Gath|Corki|Ezreal|Kha''Zix', 1, '2017-12-18 22:41:01', '2017-12-20 16:16:38'),
(7, '8009', 'Presence of Mind', '8009', 0, '', '<p>For 7s after gaining a level or takedown the mana you spend on abilities is fully restored.</p>\n', 'Level ups / Kills / Assists give free mana for 5 seconds.', 'Jayce|Azir|Cassiopeia|Aurelion Sol|Karthus', 1, '2017-12-18 22:41:01', '2017-12-20 16:16:38'),
(8, '9104', 'Legend: Alacrity', '9104', 0, '', '<p>Gain 3% Attack Speed plus an additional 1.5% for every <em>Legend</em> stack (max 10 stacks).</p>\n<p>Earn progress toward <em>Legend</em> stacks for every champion takedown, epic monster takedown, large monster kill, and minion kill.</p>\n', 'Attack Speed stacks from CS / Kills / Assists', 'Shaco|Kog''Maw|Xayah|Graves|Kayle|Udyr', 1, '2017-12-18 22:41:01', '2017-12-20 16:16:38'),
(9, '9105', 'Legend: Tenacity', '9105', 0, '', '<p>Gain 5% tenacity plus an additional 1.5% for every <em>Legend</em> stack (max 10 stacks).</p>\n<p>Earn progress toward <em>Legend</em> stacks for every champion takedown, epic monster takedown, large monster kill, and minion kill.</p>\n', 'Tenacity stacks from CS / Kills / Assists', 'Warwick|Corki|Renekton|Kindred|Poppy|Camille', 1, '2017-12-18 22:41:01', '2017-12-20 16:16:38'),
(10, '9103', 'Legend: Bloodline', '9103', 0, '', '<p>Gain 0.8% life steal for every <em>Legend</em> stack (max 10 stacks).</p>\n<p>Earn progress toward <em>Legend</em> stacks for every champion takedown, epic monster takedown, large monster kill, and minion kill.</p>\n', 'Life Steal stacks from CS / Kills / Assists', 'Lucian|Fiora|Kalista|Ezreal|Varus|Draven', 1, '2017-12-18 22:41:01', '2017-12-20 16:16:38'),
(11, '8014', 'Coup De Grace', '8014', 0, '', '<p>Deal 9% more damage to champions who have less than 40% health.</p>\n<p>Additionally, takedowns on champions grant an <span>adaptive</span> bonus of 9 Attack Damage or 15 Ability Power for 10s.</p>\n', 'Execute damage | Kills / Assists grant temporary AP/AD', 'Ashe|Gnar|Shaco|Yorick|Master Yi|Karthus', 1, '2017-12-18 22:41:01', '2017-12-20 16:16:38'),
(12, '8017', 'Cut Down', '8017', 0, '', '<p>Deal 4% more damage to champions with 150 more max health than you, increasing to 10% at 2000 more max health.</p>\n', 'Tank killer', 'Twitch|Yasuo|Sivir|Jayce|Camille|Ashe', 1, '2017-12-18 22:41:01', '2017-12-20 16:16:38'),
(13, '8299', 'Last Stand', '8299', 0, '', '<p>Deal 5 - 12% increased damage to champions while you are below 60% health, maximum damage gained at 30% health.</p>\n', 'Extra damage when low health.', 'Tryndamere|Ezreal', 1, '2017-12-18 22:41:01', '2017-12-20 16:16:38'),
(14, '8112', 'Electrocute', '8112', 1, 'render_Electrocute.mp4', '<p>Hitting a champion with 3 <strong>separate</strong> attacks or abilities in 2s deals bonus <span>adaptive damage</span>.</p>\n<p>Damage: 40-220 (+0.50 Bonus AD, +0.30 AP) damage.</p>\n<p>Cooldown: 50-25s</p>\n', '3 attacks / abilities burst | Think old Thunderlords.', 'Zoe|Lee Sin|Syndra|Veigar|LeBlanc|Shaco', 2, '2017-12-18 22:41:01', '2017-12-21 21:43:46'),
(15, '8124', 'Predator', '8124', 1, 'render_Predator.mp4', '<p>Enchants your boots with the active effect ''Predator.''</p>\n<p>Channel for 1.5s out of combat to gain 45% Movement Speed for 15s. Damaging attacks or abilities end this effect, dealing 60 - 140 (+0.4 bonus AD)(+0.25 AP) bonus <span>adaptive damage</span>.</p>\n<p>Cooldown: 150 - 100s. Starts the game on cooldown and goes on cooldown if interrupted while channeling.</p>\n', 'Movement speed active on boots | Increased engage damage.', 'Hecarim|Olaf|Quinn', 2, '2017-12-18 22:41:01', '2017-12-21 21:43:46'),
(16, '8128', 'Dark Harvest', '8128', 1, 'render_DarkHarvest.mp4', '<p>Champions, large minions, and large monsters drop soul essence on death. Collecting a soul to become Soul Charged. Your next attack on a champion or structure consumes Soul Charged to deal bonus <span>adaptive damage</span>.</p>\n<p>Soul Charged lasts 20s, increased to 300s after collecting 150 soul essence.</p>\n<p>Bonus damage: 40 - 80 (+0.25 bonus AD) (+0.2 AP) + soul essence collected.</p>\n<p>Champion souls - 6 soul essence.<br />\nMonster souls - 2 soul essence.<br />\nMinion souls - 4 soul essence.</p>\n', 'Nearby dying large minions / monsters / champions grants burst damage.', 'Nocturne|Kayn|Kha''Zix|Kayn|Darius', 2, '2017-12-18 22:41:01', '2017-12-21 21:43:46'),
(17, '8126', 'Cheap Shot', '8126', 0, '', '<p>Damaging champions with impaired movement or actions deals 12 - 30 bonus true damage (based on level).</p>\n<p>Cooldown: 4s<br />\nApplies to damage occurring after the impairment.</p>\n', 'Bonus true damage to impaired (slowed etc.) champions.', 'Syndra|Leona|Azir|Ashe|Rammus|Vel''Koz', 2, '2017-12-18 22:41:01', '2017-12-20 16:16:38'),
(18, '8139', 'Taste of Blood', '8139', 0, '', '<p>Heal when you damage an enemy champion.</p>\n<p>Healing: 18 - 35 (+0.20 bonus AD, +0.1 AP) health (based on level).</p>\n<p>Cooldown: 20s</p>\n', 'Heal when you damage champions.', 'Vladimir|Sivir|Varus|Draven', 2, '2017-12-18 22:41:01', '2017-12-20 16:16:38'),
(19, '8143', 'Sudden Impact', '8143', 0, '', '<p>After exiting stealth or using a dash, leap, blink, or teleport, damage a champion to gain 10 Lethality and 8 Magic Penetration for 5s.</p>\n<p>Cooldown: 4s</p>\n', 'Gain magic pen / lethality when using a gap closer or stealth.', 'Ekko|Lucian|Ahri|Quinn|Irelia|Elise', 2, '2017-12-18 22:41:01', '2017-12-20 16:16:38'),
(20, '8136', 'Zombie Ward', '8136', 0, '', '<p>After killing an enemy ward, a friendly Zombie Ward is raised in its place. Additionally, when your wards expire, they resurrect as Zombie Wards.</p>\n<p>Zombie Wards are visible, last for 180s, and don''t count towards your ward limit.</p>\n', 'Wards you place / kill spawn a visible ward when they die.', 'Lulu|Riven|Zoe|Zyra|Hecarim|Vel''Koz', 2, '2017-12-18 22:41:01', '2017-12-20 16:16:38'),
(21, '8120', 'Ghost Poro', '8120', 0, '', '<p>Enter a brush to summon a poro after a brief channel. The poro will stay behind to give you vision until you summon a new one.</p>\n<p>If an enemy enters a brush with a poro in it, they scare it away, putting this effect on a 3s cooldown.</p>\n<p>Poro channel is interrupted if you enter combat with a champion.</p>\n', 'Entering a brush leaves temporary vision behind.', 'Ashe|Kalista|Yasuo|Twitch|Tryndamere|Kog''Maw', 2, '2017-12-18 22:41:01', '2017-12-20 16:16:38'),
(22, '8138', 'Eyeball Collection', '8138', 0, '', '<p>Collect eyeballs for champion and ward takedowns. Gain an adaptive bonus of 0.6 Attack Damage or 1 Ability Power, per eyeball collected.</p>\n<p>Upon completing your collection at 20 eyeballs, gain an adaptive bonus of 6 Attack Damage, or 10 Ability Power.</p>\n<p>Collect 2 eyeballs per champion takedown, 1 eyeball per ward takedown or assist.</p>\n', 'Kills / Assists on champions and wards grants AP or AD.', 'Lee Sin|Katarina|Kayn|Nocturne|Darius|JarvanIV', 2, '2017-12-18 22:41:01', '2017-12-20 16:16:38'),
(23, '8135', 'Ravenous Hunter', '8135', 0, '', '<p>Heal for a percentage of the damage dealt by your abilities.</p>\n<p>Healing: 2.5% + 2.5% per <em>Bounty Hunter</em> stack.</p>\n<p>Earn a <em>Bounty Hunter</em> stack the first time you get a takedown on each enemy champion.</p>\n<p><em>AoE:</em> Healing reduced to one third on AoE abilities.</p>\n', 'Spell Vamp stacks from unique kills / assists.', 'Ekko|Swain|Brand|Graves|LeBlanc|Dr. Mundo', 2, '2017-12-18 22:41:01', '2017-12-20 16:16:38'),
(24, '8134', 'Ingenious Hunter', '8134', 0, '', '<p>Gain 10% <strong>Active Item CDR</strong> plus an additional 6% per <em>Bounty Hunter</em> stack (includes Trinkets).</p>\n<p>Earn a <em>Bounty Hunter</em> stack the first time you get a takedown on each enemy champion.</p>\n', 'Item & Trinket CDR stacks from unique kills / assists.', 'Fizz|Olaf|Alistar|Taric|Kled|Kha''Zix', 2, '2017-12-18 22:41:01', '2017-12-20 16:16:38'),
(25, '8105', 'Relentless Hunter', '8105', 0, '', '<p>Gain 8 out of combat <strong>Movement Speed</strong> plus 8 per <em>Bounty Hunter</em> stack.</p>\n<p>Earn a <em>Bounty Hunter</em> stack the first time you get a takedown on each enemy champion.</p>\n', 'Out of Combat Move Speed stacks from unique kills / assists.', 'Blitzcrank|Hecarim|Leona|Diana|Aatrox|Zed', 2, '2017-12-18 22:41:01', '2017-12-20 16:16:38'),
(26, '8214', 'Summon Aery', '8214', 1, 'render_SummonAery.mp4', '<p>Your attacks and abilities send Aery to a target, damaging enemies or shielding allies.</p>\n<p>Damage: 15 - 40 based on level (+0.10 AP and +0.15 bonus AD)<br />\nShield: 30 - 80 based on level (+0.25 AP and +0.4 bonus AD)</p>\n<p>Aery cannot be sent out to again until she returns to you.</p>\n', 'Attacks/abilities summon Aery to damage enemies / shield allies.', 'Orianna|Zyra|Viktor|Sona|Karma|Mordekaiser', 3, '2017-12-18 22:41:01', '2017-12-21 21:43:46'),
(27, '8229', 'Arcane Comet', '8229', 1, 'render_Comet.mp4', '<p>Damaging a champion with an ability hurls a comet at their location, or, if Arcane Comet is on cooldown, reduces it’s remaining cooldown.</p>\n<p><span>Adaptive damage</span>: 30 - 100 based on level (+0.20 AP and +0.35 bonus AD)</p>\n<p>Cooldown: 20 - 8s</p>\n<p>Cooldown Reduction:<br />\n- Single Target: 20%<br />\n- Area of Effect: 10%<br />\n- Damage Over Time: 5%</p>\n', 'Hitting spells hurls a comet at enemies.', 'Karthus|Morgana|Ahri|Malzahar|Swain|Miss Fortune', 3, '2017-12-18 22:41:01', '2017-12-21 21:43:46'),
(28, '8230', 'Phase Rush', '8230', 1, 'render_PhaseRush.mp4', '<p>Hitting an enemy champion with 3 attacks or separate abilities within 3s grants 10 - 40% Movement Speed based on level.</p>\n<p>Duration: 3s<br />\nCooldown: 15s<br />\nAdditionally, gain 75% Slow Resistance or the duration.</p>\n', '3 attacks or abilities grants speed boost | Think old Stormraider''s.', 'Nasus|Vladimir|Cassiopeia|Darius|Aurelion Sol|Ryze', 3, '2017-12-18 22:41:01', '2017-12-21 21:43:46'),
(29, '8224', 'Nullifying Orb', '8224', 0, '', '<p>Upon taking magic damage that would reduce Health below 30%, grants a shield that absorbs 40 - 120 magic damage based on level (+0.10 AP and +0.15 bonus AD) for 4 seconds.</p>\n<p>Cooldown: 60s</p>\n', 'Grants a magic shield when taken to low health by magic damage.', 'Fizz|Corki|Diana|Viktor|Aurelion Sol|Quinn', 3, '2017-12-18 22:41:01', '2017-12-20 16:16:38'),
(30, '8226', 'Manaflow Band', '8226', 0, '', '<p>Every 75 seconds, your next ability used has its mana or energy cost refunded, and restores 10% of your missing mana or energy.</p>\n', 'Free spell cast every 60s and mana sustain.', 'Cassiopeia|Lux|Orianna|Ziggs|Ryze|Taliyah', 3, '2017-12-18 22:41:01', '2017-12-20 16:16:38'),
(31, '8243', 'The Ultimate Hat', '8243', 0, '', '<p>Your ultimate''s cooldown is reduced by 5%. This number is increased by 2% each time your ultimate goes on cooldown. Stacks up to 5 times.</p>\n', 'Scaling ultimate cooldown reduction.', 'Karma|Malzahar|Heimerdinger|Rumble|Nocturne|Lulu', 3, '2017-12-18 22:41:01', '2017-12-20 16:16:38'),
(32, '8210', 'Transcendence', '8210', 0, '', '<p>Gain 10% CDR when you reach level 10.</p>\n<p>Each percent of CDR exceeding the CDR limit is converted to an <span>adaptive</span> bonus of 1.2 Attack Damage or 2 Ability Power.</p>\n', 'Free 10% CDR at level 10 | Excess CDR becomes AP or AD.', 'Nasus|Lux|Galio|LeBlanc|Azir|Annie', 3, '2017-12-18 22:41:01', '2017-12-20 16:16:38'),
(33, '8234', 'Celerity', '8234', 0, '', '<p>Gain 3% increased Movement Speed and add 8% of your Bonus Movement Speed to your AP or AD (based on level), Adaptive.</p>\n', 'Move speed | Bonus move speed grants AP or AD.', 'Teemo|Hecarim|Darius|Varus|Caitlyn|Mordekaiser', 3, '2017-12-18 22:41:01', '2017-12-20 16:16:38'),
(34, '8233', 'Absolute Focus', '8233', 0, '', '<p>While above 70% health, gain an <span>adaptive</span> bonus of up to 24 Attack Damage or 40 Ability Power (based on level).</p>\n', 'When above 70% health, gain extra AP or AD.', 'Swain|Vel''Koz|Zyra|Syndra|Karthus|Brand', 3, '2017-12-18 22:41:01', '2017-12-20 16:16:38'),
(35, '8237', 'Scorch', '8237', 0, '', '<p>Your next ability hit sets champions on fire dealing 30 - 60 bonus magic damage based on level after 1s.</p>\n<p>Cooldown: 20s</p>\n', 'Extra Poke damage from abilities.', 'Xerath|Ahri|Sion|Sion|Nami|Jhin', 3, '2017-12-18 22:41:01', '2017-12-20 16:16:38'),
(36, '8232', 'Waterwalking', '8232', 0, '', '<p>Gain 25 Movement Speed and an <span>adaptive</span> bonus of up to 18 Attack Damage or 30 Ability Power (based on level) when in the river.</p>\n', 'Gain MS and AP or AD, when in the river.', 'Hecarim|Aurelion Sol|Udyr|Rek''Sai|Elise|Nidalee', 3, '2017-12-18 22:41:01', '2017-12-20 16:16:38'),
(37, '8236', 'Gathering Storm', '8236', 0, '', '<p>Every 10 min. gain AP or AD, <strong>Adaptive</strong>.</p>\n<p><em>10 min</em>: + 8 AP or 5 AD<br />\n<em>20 min</em>: + 24 AP or 14 AD<br />\n<em>30 min</em>: + 48 AP or 29 AD<br />\n<em>40 min</em>: + 80 AP or 48 AD<br />\n<em>50 min</em>: + 120 AP or 72 AD<br />\n<em>60 min</em>: + 168 AP or 101 AD<br />\netc...</p>\n', 'Every 10 minutes gain stacking AP or AD.', 'Vel''Koz|Cassiopeia|Xayah|Veigar|Azir|Miss Fortune', 3, '2017-12-18 22:41:01', '2017-12-20 16:16:38'),
(38, '8437', 'Grasp of the Undying', '8437', 1, 'render_Grasp.mp4', '<p>Every 4s in combat, your next basic attack on a champion will:</p>\n<ul>\n<li>Deal bonus damage equal to 4% of your max health</li>\n<li>Heal you for 2% of your max health</li>\n<li>Permanently increase your health by 5</li>\n</ul>\n<p><em>Ranged Champions:</em> Damage and healing are halved and gain 2 permanent health instead.</p>\n', 'Bonus damage / heal based on max health. Permanent max health.', 'Cho''Gath|Trundle|Shen|Tahm Kench|Yorick|Malphite', 4, '2017-12-18 22:41:01', '2017-12-21 21:43:46'),
(39, '8439', 'Aftershock', '8439', 1, 'render_Aftershock.mp4', '<p>After immobilizing an enemy champion, increase your current Armor and Magic Resist by 10 + 30% for 2.5s. Then, after 2.5s deal magic damage to nearby enemies.</p>\n<p>Damage: 40-140 (+3.5% your maximum health)<br />\nCooldown: 20s</p>\n', 'Immobilizations grant Armor / MR and casts explosion based on health.', 'Rakan|Blitzcrank|Maokai|Galio|Ornn|Sejuani', 4, '2017-12-18 22:41:01', '2017-12-21 21:43:46'),
(40, '8465', 'Guardian', '8465', 1, 'render_Guardian.mp4', '<p><em>Guard</em> allies within 175 units of you, and <em>Guard</em> allies you target with spells for 2.5s. While <em>Guarding</em>, if you or the ally would take damage, both of you gain a shield and are hasted for 1.5s.</p>\n<p>Cooldown: 45s<br />\nShield Strength: 60 - 150 (+0.20 AP) (+10% bonus health).<br />\nHaste: 20% increased Movement Speed</p>\n', 'Haste and shield allies you are near or cast a spell on.', 'Taric|Tahm Kench|Braum|Dr. Mundo', 4, '2017-12-18 22:41:01', '2017-12-21 21:43:46'),
(41, '8242', 'Unflinching', '8242', 0, '', '<p>Increase your Tenacity and Slow Resistance by 10% for each Summoner Spell on cooldown. After casting a Summoner Spell, gain 15% additional Tenacity and Slow Resistance for 10s.</p>\n', 'Tenacity and slow resist based on summoner skill cooldown/usage.', 'Skarner|Warwick|Amumu|Singed|Zac|Tahm Kench', 4, '2017-12-18 22:41:01', '2017-12-20 16:16:38'),
(42, '8446', 'Demolish', '8446', 0, '', '<p>Charge up a powerful attack against a tower over 4s, when within 600 range of it. The charged attack deals 125 (+30% of your max health) bonus physical damage.</p>\n<p>Cooldown: 45s</p>\n', 'Tower burst damage based on max health.', 'Yorick|Dr. Mundo|Gnar|Trundle|Shen|Sion', 4, '2017-12-18 22:41:01', '2017-12-20 16:16:38'),
(43, '8463', 'Font of Life', '8463', 0, '', '<p>Impairing the movement of an enemy champion marks them for 4s.</p>\n<p>Ally champions who attack marked enemies heal for 5 + 1% of your max health.</p>\n', 'Allies heal when attacking enemies you impair | Think old Stoneborne Pact.', 'Nautilus|Alistar|Maokai|Soraka|Tahm Kench|Thresh', 4, '2017-12-18 22:41:01', '2017-12-20 16:16:38'),
(44, '8430', 'Iron Skin', '8430', 0, '', '<p>Gain 5 Armor. Whenever you heal for at least 20 health or from a consumable''s effect, increase your Armor by 5% for 3 seconds.</p>\n', '+5 Armor | Healing increase Armor temporarily.', 'Trundle|Yasuo|Taric|Thresh|Singed|Amumu', 4, '2017-12-18 22:41:01', '2017-12-20 16:16:38'),
(45, '8435', 'Mirror Shell', '8435', 0, '', '<p>Gain 6 Magic Resist. Whenever you heal for at least 20 health or from a consumable''s effect, increase your Magic Resist by 5% for 3 seconds.</p>\n', '+5 MR | Healing increase MR temporarily.', 'Galio|Galio', 4, '2017-12-18 22:41:01', '2017-12-20 16:16:38'),
(46, '8429', 'Conditioning', '8429', 0, '', '<p>After 10 min gain +8 Armor and +8 Magic Resist and increase your total Armor and Magic Resist by 5%.</p>\n', 'After 10 minutes gain Armor and MR.', 'Gragas|Ivern|Malphite|Warwick|Yorick|Sion', 4, '2017-12-18 22:41:01', '2017-12-20 16:16:38'),
(47, '8451', 'Overgrowth', '8451', 0, '', '<p>Every 8 monsters or enemy minions that die near you permanently increases your max health by 0.2%.</p>\n<p>Range: 1400 units</p>\n', 'Minions that die nearby give max health.', 'Tahm Kench|Dr. Mundo|Sion|Vi|Malphite|Blitzcrank', 4, '2017-12-18 22:41:01', '2017-12-20 16:16:38'),
(48, '8453', 'Revitalize', '8453', 0, '', '<p>Heals and shields are 5% stronger and increased by an additional 10% on targets below 40% health.  </p>\n<p>*Include heals and shields cast on yourself*</p>\n', 'Stronger heals and shields.', 'Rakan|Trundle|Ornn|Darius|Yasuo|Kayn', 4, '2017-12-18 22:41:01', '2017-12-20 16:16:38'),
(49, '8444', 'Second Wind', '8444', 0, '', '<p>After taking damage from an enemy champion heal for 4%  of your missing health over 10 seconds.</p>\n', 'Getting hit restores missing health over time.', 'Sion|Yorick|Thresh|Poppy|Leona|Galio', 4, '2017-12-18 22:41:01', '2017-12-20 16:16:38'),
(50, '8326', 'Unsealed Spellbook', '8326', 1, 'render_Spellbook.mp4', '<p>Gain a Summoner Shard at 2 minutes and another every 6 min after (max 2 shards).</p>\n<p>While near the shop, you can exchange 1 Summoner Shard to replace a Summoner Spell with a different one.</p>\n<p>Additionally, your Summoner Spell cooldowns are reduced by 25%.</p>\n<p><strong>Smite:</strong> Buying Smite won''t grant access to Smite items<br />\nYou cannot have two of the same Summoner Spell</p>\n', 'Swap summoner spells in game. 25% Summoner CDR.', 'Vladimir|Kennen|Skarner|Zilean|Singed|Malzahar', 5, '2017-12-18 22:41:01', '2017-12-21 21:43:46'),
(51, '8351', 'Glacial Augment', '8351', 1, 'render_GlacialAugment.mp4', '<p>Basic attacking a champion slows them for 2s. The slow increases in strength over its duration.</p>\n<ul>\n<li><em>Ranged attacks</em> slow by up to 20%-40%  </li>\n<li><em>Melee attacks</em> slow by up to 40%-50%</li>\n</ul>\n<p>Slowing a champion with active items shoots a freeze ray through them, freezing the nearby ground for 5s, slowing all units inside by 50%</p>\n<p>Cooldown: 7-4s second per-unit cooldown</p>\n', 'Slow enemies on hit. Active slows cast AoE slow.', 'Gnar|Ekko|Teemo', 5, '2017-12-18 22:41:01', '2017-12-21 21:43:46'),
(52, '8359', 'Kleptomancy', '8359', 1, 'render_Klepto.mp4', '<p>After using an ability, your next attack on a champion grants bonus gold. There''s a chance you''ll also gain a consumable.</p>\n', 'Attacks after spells on champions grant gold and consumables | Procs like Sheen.', 'Gangplank|Gangplank|Ezreal|Sona|Illaoi', 5, '2017-12-18 22:41:01', '2017-12-21 21:43:46'),
(53, '8306', 'Hextech Flashtraption', '8306', 0, '', '<p>While Flash is on cooldown it is replaced by Hexflash.</p>\n<p>Hexflash: Channel for 2.5 seconds to blink to a new location.</p>\n<p>Cooldown: 20 seconds. Goes on a 10 second cooldown when you enter champion combat.</p>\n', 'Gain a channel flash while flash is on cooldown.', 'Gragas|Skarner', 5, '2017-12-18 22:41:01', '2017-12-20 16:16:38'),
(54, '8345', 'Biscuit Delivery', '8345', 0, '', '<p>Biscuit Delivery: Gain a Total Biscuit of Everlasting will every 3 minutes, until 12 minutes.</p>\n<p>Biscuits restore 15% of your missing health and mana and increase your mana cap by 40 mana permanently.</p>\n<p>Champions without mana restore 20%  missing energy instead.</p>\n', 'Periodically gain a biscuit with strong Health/Mana regen.', 'Viktor|Lissandra|Ziggs|Ornn|Teemo|Tahm Kench', 5, '2017-12-18 22:41:01', '2017-12-20 16:16:38'),
(55, '8313', 'Perfect Timing', '8313', 0, '', '<p>Start the game with a Commencing Stopwatch that transforms into a Stopwatch after 6 min. Stopwatch has a one time use Stasis active.</p>\n<p>Reduces the cooldown of Zhonyas Hourglass, Guardian Angel, and Gargoyle''s Stoneplate by 15%.</p>\n', 'After 6 minutes gain a one-time use Zhonya’s active.', 'Orianna|Ekko|Zilean|Gangplank|Ryze|Maokai', 5, '2017-12-18 22:41:01', '2017-12-20 16:16:38'),
(56, '8304', 'Magical Footwear', '8304', 0, '', '<p>You get Slightly Magical Boots at 10 min, but you cannot buy boots before then. For each takedown you acquire the boots 30s sooner.</p>\n', 'Free boots at 10 minutes.', 'Malzahar|Ahri|Karma|Vladimir|Tristana|Maokai', 5, '2017-12-18 22:41:01', '2017-12-20 16:16:38'),
(57, '8321', 'Future''s Market', '8321', 0, '', '<p>You can enter debt to buy items. The amount you can borrow increases over time.</p>\n<p>Debt limit: 150 + 5/min<br />\nLending Fee: 50 gold per item</p>\n', 'Enter debt to buy items early.', 'Viktor|Kennen|Lissandra|Gangplank|Akali|Thresh', 5, '2017-12-18 22:41:01', '2017-12-20 16:16:38'),
(58, '8316', 'Minion Dematerializer', '8316', 0, '', '<p>Start the game with 6 Minion Dematerializers that kill and absorb lane minions instantly. Minion Dematerializers are on cooldown for the first 155s of the game.</p>\n<p>Absorbing a minion increases your damage by +4% against that type of minion permanently, and an extra +1% for each additional minion of that type absorbed.</p>\n', 'Kill 6 minions for free and gain bonus minion damage.', 'Zilean|Ekko', 5, '2017-12-18 22:41:01', '2017-12-20 16:16:38'),
(59, '8347', 'Cosmic Insight', '8347', 0, '', '<p>+5% CDR<br />\n+5% Max CDR<br />\n+5% Summoner Spell CDR<br />\n+5% Item CDR</p>\n', '5% CDR for spells, Summoners, Items, and max CDR. ', 'Ziggs|Gragas|Lux|Orianna|Anivia|Kassadin', 5, '2017-12-18 22:41:01', '2017-12-20 16:16:38'),
(60, '8410', 'Approach Velocity', '8410', 0, '', '<p>Gain 10% Movement Speed towards nearby allies that are movement impaired or enemies that you impair.</p>\n<p>Range: 1000</p>\n', 'Movement speed towards impaired allies / enemies.', 'Teemo|Tahm Kench|Gnar', 5, '2017-12-18 22:41:01', '2017-12-20 16:16:38'),
(61, '8339', 'Celestial Body', '8339', 0, '', '<p>+100 Health permanently<br />\n-10% damage to champions and monsters until 10 mins.</p>\n', '+100 health | Less damage until 10 minutes.', 'Illaoi|Braum|Singed|Nautilus', 5, '2017-12-18 22:41:01', '2017-12-20 16:16:38');

-- --------------------------------------------------------

--
-- Table structure for table `keystones_why`
--

CREATE TABLE IF NOT EXISTS `keystones_why` (
  `id` int(10) unsigned NOT NULL,
  `stone_why` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `builds_id` int(10) unsigned NOT NULL,
  `keystones_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=1051 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `keystones_why`
--

INSERT INTO `keystones_why` (`id`, `stone_why`, `builds_id`, `keystones_id`, `created_at`, `updated_at`) VALUES
(1, 'Shyvana is a fantastic user of Press the Attack thanks to her ability to instantly proc it with an Auto->[Q] reset. The instant exposure allows Shyvana to duel and shred champions effectively.', 1, 2, '2017-12-24 17:16:37', '2017-12-24 17:16:37'),
(2, 'Triumph on Shyvana allows you to dive into the back line, absorb the brunt of the damage for your team, and heal for a ton from any kills or assists to keep fighting.', 1, 6, '2017-12-24 17:16:37', '2017-12-24 17:16:37'),
(3, 'More Attack Speed means a faster/healthier jungle clear and more dueling potential in early skirmishes.', 1, 8, '2017-12-24 17:16:37', '2017-12-24 17:16:37'),
(4, 'Coup De Grace is the go-to tune for reliable damage in fights where you''re able to get to the back-line and shred the enemy squishy champions.', 1, 11, '2017-12-24 17:16:37', '2017-12-24 17:16:37'),
(5, 'Celerity on Shyvana help you to overcome her biggest pitfall of being kited. The extra bit of Movement Speed synergizes well with Shyv''s [W] and especially well with Waterwalking when skirmishing in the river.', 1, 33, '2017-12-24 17:16:37', '2017-12-24 17:16:37'),
(6, 'Waterwalking on Shyvana further empowers her desire to power farm the jungle and clear the entire map.', 1, 36, '2017-12-24 17:16:37', '2017-12-24 17:16:37'),
(7, 'Shyvana is a fantastic user of Press the Attack thanks to her ability to instantly proc it with an Auto->[Q] reset. The instant exposure allows Shyvana to duel and shred champions effectively.', 2, 2, '2017-12-24 17:16:37', '2017-12-24 17:16:37'),
(8, 'Triumph on Shyvana allows you to dive into the back line, absorb the brunt of the damage for your team, and heal for a ton from any kills or assists to keep fighting.', 2, 6, '2017-12-24 17:16:37', '2017-12-24 17:16:37'),
(9, 'More Attack Speed means a faster/healthier jungle clear and more dueling potential in early skirmishes.', 2, 8, '2017-12-24 17:16:37', '2017-12-24 17:16:37'),
(10, 'Coup De Grace is the go-to tune for reliable damage in fights where you''re able to get to the back-line and shred the enemy squishy champions.', 2, 11, '2017-12-24 17:16:37', '2017-12-24 17:16:37'),
(11, 'The early bonus Armor from Iron Skin allows you to come out of your first few jungle clear incredibly healthy and ready to fight at any moment. the bonus Armor secondary also synergizes well with Shyv''s passive.', 2, 44, '2017-12-24 17:16:37', '2017-12-24 17:16:37'),
(12, 'Unflinching allows you to dive onto enemy champions with [R] while Smiting them and sticking to them thanks to the Slow Resist/Tenacity so you are able to ramp up your damage and kill anyone you set your sights on.', 2, 41, '2017-12-24 17:16:37', '2017-12-24 17:16:37'),
(13, 'Spellbook on Riven allows you to keep up heavy lane kill pressure at all times with super short Flash and Ignite cooldowns combined with Lucidity Boots and Cosmic Insight.', 3, 50, '2017-12-24 17:16:37', '2017-12-24 17:16:37'),
(14, 'The stasis active allows you to make out-plays and suvive a close tower dive to snowball your lead. After using the Stopwatch, sell it for a bit of bonus Gold. ', 3, 55, '2017-12-24 17:16:37', '2017-12-24 17:16:37'),
(15, 'Magical Footwear allows you to save that extra bit of gold to invest in more mid-game damage and a quicker completion of Boots of Lucidity.', 3, 56, '2017-12-24 17:16:37', '2017-12-24 17:16:37'),
(16, 'Riven''s mana-less kit means that CDR is one of her absolute most important stats. The extra bit of Summoner CDR also means more Flash and Ignite pressure.', 3, 59, '2017-12-24 17:16:37', '2017-12-24 17:16:37'),
(17, 'Riven is one of the biggest abusers of Sudden Impact, with each use of [Q] and [E] refreshing the buff resulting in an almost permanent bonus Lethality buff.', 3, 19, '2017-12-24 17:16:37', '2017-12-24 17:16:37'),
(18, 'Zombie Ward is a fantastic all-around rune choice thats to its reliability in being able to provide extremely extended amounts of lane safety.', 3, 20, '2017-12-24 17:16:37', '2017-12-24 17:16:37'),
(19, 'Electrocute is the go-to keystone on Riven when looking to do massive burst damage in a short period of time. Her skillset allows her to quickly proc the damage in any trade with [Q]->[W]->Auto.', 4, 14, '2017-12-24 17:16:37', '2017-12-24 17:16:37'),
(20, 'Riven may be one of the biggest abusers of Sudden Impact. All 3 parts of her [Q] and [E] proc the effect.', 4, 19, '2017-12-24 17:16:37', '2017-12-24 17:16:37'),
(21, 'Zombie Ward is a fantastic all-around rune choice on any champion thanks to it''s incredibly reliable and effective addition of vision.', 4, 20, '2017-12-24 17:16:37', '2017-12-24 17:16:37'),
(22, 'The bonus healing Ravenous Hunter grants minimizes risk when looking to take aggressive trades and all-ins.', 4, 23, '2017-12-24 17:16:37', '2017-12-24 17:16:37'),
(23, 'Triumph allows you to dive towers or the back-line with an all-in combo and the ability to get out alive afterward, thanks to the massive heal.', 4, 6, '2017-12-24 17:16:37', '2017-12-24 17:16:37'),
(24, 'Coup De Grace is the ultimate rune for champions that are looking to execute squishy targets. The bonus damage is easily accessible on a high damage kit such as Riven''s.', 4, 11, '2017-12-24 17:16:37', '2017-12-24 17:16:37'),
(25, 'Arcane Comet on Camille is a non-obvious but strong keystone choice for Camille thanks to the high hitrate from the strong slow of [W] and the stun from [E].', 5, 27, '2017-12-24 17:16:37', '2017-12-24 17:16:37'),
(26, 'Manaflow Band on Camille allows you to repeatedly take trades in lane and out-sustain your opponent thanks to the large heal from [W].', 5, 30, '2017-12-24 17:16:37', '2017-12-24 17:16:37'),
(27, 'Celerity on Camille allows you to more accurately postiing your [W] mid-cast, chase down fleeing opponents, and gain a small bit of bonus AD while under the Movement Speed effect of Phage.', 5, 33, '2017-12-24 17:16:37', '2017-12-24 17:16:37'),
(28, 'Scorch is the go-to lane harass rune for getting an early lead in damage so you can keep your opponent in kill-range.', 5, 35, '2017-12-24 17:16:37', '2017-12-24 17:16:37'),
(29, 'Iron Skin on Camille allows you to take lane trades early and often thanks to the reduced damage from minions at level 1. Combined with Camille''s passive you should win most trades early when played well.', 5, 44, '2017-12-24 17:16:37', '2017-12-24 17:16:37'),
(30, 'Second Wind allows you to further enable your early laning trades and synergizes extremely well in lane with Iron Skin. Paired with a Doran''s Shield you should be able to sustain heavy amount of poke and harass damage.', 5, 49, '2017-12-24 17:16:37', '2017-12-24 17:16:37'),
(31, 'Thanks to multiple auto-attack resets on [Q] Camille can easily proc Press the Attack for great dueling damage.', 6, 2, '2017-12-24 17:16:37', '2017-12-24 17:16:37'),
(32, 'Camille has a number of means of building herself an over-shield via Doran''s Blade, [W] on champions, and Titantic Hydra, allowing her to enter duels with a health lead.', 6, 5, '2017-12-24 17:16:37', '2017-12-24 17:16:37'),
(33, 'Camille''s primary means of losing a duel is typically getting CCed so she can''t return damage. Any additional Tenacity improves her dueling that much more.', 6, 9, '2017-12-24 17:16:37', '2017-12-24 17:16:37'),
(34, 'Cut Down is the ultimate go-to for shredding big beefy tanks with a ton of health.', 6, 12, '2017-12-24 17:16:37', '2017-12-24 17:16:37'),
(35, 'Iron Skin is a great early-game option for trading in lane and winning fights against heavy AD comps.', 6, 44, '2017-12-24 17:16:37', '2017-12-24 17:16:37'),
(36, 'Revitalize is a great laning rune when you''re looking to trade often and come out healthy, winning the attrition war.', 6, 48, '2017-12-24 17:16:37', '2017-12-24 17:16:37'),
(37, 'Guardian on Nunu allows you to massively empower a teammate in skirmishes and teamfights when you cast [W] on them.', 7, 40, '2017-12-24 17:16:37', '2017-12-24 17:16:37'),
(38, 'Font of Life allows you to provide considerable healing to teammates in teamfights where you''re able to slow multiple targets at the same time with [E] and [R].', 7, 43, '2017-12-24 17:16:37', '2017-12-24 17:16:37'),
(39, 'Conditioning allows you scale incredibly well into the mid game combined with Locket to make you a massive front-line tank.', 7, 46, '2017-12-24 17:16:37', '2017-12-24 17:16:37'),
(40, 'Revitalize on Nunu empowers both the healing of your [Q] as well as the shielding of Guardian, Locket, and healing of Font of Life on teammates.', 7, 48, '2017-12-24 17:16:37', '2017-12-24 17:16:37'),
(41, 'Celerity on Nunu provides a bit of Movement Speed for a faster jungle clear, as well as a bit of extra AP while [W] is on so you can chase down and finish off slowed targets.', 7, 33, '2017-12-24 17:16:37', '2017-12-24 17:16:37'),
(42, 'Waterwalking on Nunu further enables you to control the river and take neutral objectives (Herald/Dragon )early and often.', 7, 36, '2017-12-24 17:16:37', '2017-12-24 17:16:37'),
(43, 'Fleet Footwork on Caitlyn empowers your ability to take trades early and often in the laning phase thanks to your improved sustain. The extra burst of Movement Speed can also help you position to get in range for the headshot proc on the enemy.', 8, 4, '2017-12-24 17:16:37', '2017-12-24 17:16:37'),
(44, 'Triumph is Dangerous Game on steroids, allowing you to push your limits in fights and reset. Oh and bonus kill gold is nice too.', 8, 6, '2017-12-24 17:16:37', '2017-12-24 17:16:37'),
(45, 'More Attack Speed from Alacrity means more headshots and more damage. It also allows you to potentially itemize into a non Attack Speed item (BT or Guardian Angel)  a bit earlier than you otherwise would.', 8, 8, '2017-12-24 17:16:37', '2017-12-24 17:16:37'),
(46, 'Headshots paired with the execute damage of Coup De Grace offers you a lot of burst to finish off your target and move on.', 8, 11, '2017-12-24 17:16:37', '2017-12-24 17:16:37'),
(47, 'Taste of Blood on Caitlyn is a fantastic lane sustain rune thank to your ability to easily proc with with a long range Auto Attack or Trap headshot.', 8, 18, '2017-12-24 17:16:37', '2017-12-24 17:16:37'),
(48, 'Zombie Ward is an all-around great rune choice for every champion in the game thanks to its ability to reliably provide vision for extended periods of time.', 8, 20, '2017-12-24 17:16:37', '2017-12-24 17:16:37'),
(49, 'Fleet Footwork on Caitlyn empowers your ability to take trades early and often in the laning phase thanks to your improved sustain. The extra burst of Movement Speed can also help you position to get in range for the headshot proc on the enemy.', 9, 4, '2017-12-24 17:16:37', '2017-12-24 17:16:37'),
(50, 'Triumph is Dangerous Game on steroids, allowing you to push your limits in fights and reset. Oh and bonus kill gold is nice too.', 9, 6, '2017-12-24 17:16:37', '2017-12-24 17:16:37'),
(51, 'Bloodline further empowers your ability to take lane trades and out sustain your enemy laner thanks to Fleet Footwork and Bloodline''s extra bit of healing.', 9, 10, '2017-12-24 17:16:37', '2017-12-24 17:16:37'),
(52, 'Headshots paired with the execute damage of Coup De Grace offers you a lot of burst to finish off your target and move on.', 9, 11, '2017-12-24 17:16:37', '2017-12-24 17:16:37'),
(53, 'Celerity''s bonus Movement Speed helps you to position in teamfights for optimal damage output and skill-shot dodging. Celerity also synergizes well with Zeal items providing you a little extra bit of Attack Damage.', 9, 33, '2017-12-24 17:16:37', '2017-12-24 17:16:37'),
(54, 'Gathering Storm is your late game insurance policy for damage. If you fall behind, try stalling out the game by denying their tower siege with your Traps. The longer the game goes the better shot you have of coming back with Gathering Storm.', 9, 37, '2017-12-24 17:16:37', '2017-12-24 17:16:37'),
(55, 'Azir is a champion who rapidly casts abilities thanks to his auto-attack nature with [W]. Because of this he is able to repeatedly cast Comets with relatively high hit-rate thanks to the slow on his [Q]', 10, 27, '2017-12-24 17:16:37', '2017-12-24 17:16:37'),
(56, 'Azir is a champion who typically doesn''t opt for a mana item, rushing Nashor''s tooth and Magic Penetration. Manaflow allows you to supplement that loss of mana sustain and continue pumping out damage in the early to imd game.', 10, 30, '2017-12-24 17:16:37', '2017-12-24 17:16:37'),
(57, 'Celerity''s bonus Movement Speed allows you to better position yourself so that you''re able to repeatedly attack with [W] in teamfights.', 10, 33, '2017-12-24 17:16:37', '2017-12-24 17:16:37'),
(58, 'Scorch provides fantastic early game harass potential so that you''re able to keep your enemy laner in kill threat at all times with your jungler.', 10, 35, '2017-12-24 17:16:37', '2017-12-24 17:16:37'),
(59, 'Azir is a champion who loves to trade early and often from distance with [W]->[Q], because of this Cheap Shot allows you to take those trades and remain healthy for early game skirmishes around the mid lane.', 10, 17, '2017-12-24 17:16:37', '2017-12-24 17:16:37'),
(60, 'Zombie Ward provides all-around excellent and consistent vision control around the mid lane, allowing you to keep better tabs on the enemy jungler.', 10, 20, '2017-12-24 17:16:37', '2017-12-24 17:16:37'),
(61, 'Azir loves to auto attack with his soldiers, especially with his most recent changes. With Lethal Tempo you''re able to scale into the mid-late game as an incredible hyper carry.', 11, 3, '2017-12-24 17:16:37', '2017-12-24 17:16:37'),
(62, 'Presence of Mind is a great lane/teamfight mana sustain rune, allowing you to spam, so long as you''re taking advantage of it when you level up or get a kill/assist.', 11, 7, '2017-12-24 17:16:37', '2017-12-24 17:16:37'),
(63, 'Doubling down on Attack Speed, Azir scales incredibly well with Legend: Alacrity and auto-attacking with his [W].', 11, 8, '2017-12-24 17:16:37', '2017-12-24 17:16:37'),
(64, 'Because Azir often builds a few health items (Rylai''s/Liandry''s) he is not able to make complete use of Cut Down against carries, so Coup De Grace is your best bet for ending the enemies lives as quickly as possible.', 11, 11, '2017-12-24 17:16:37', '2017-12-24 17:16:37'),
(65, 'More CDR means lower [W] cooldown which means more soldier. All of your damage in this loadout focuses on having soldier out to auto as much as possible so you''re going to need the CDR.', 11, 32, '2017-12-24 17:16:37', '2017-12-24 17:16:37'),
(66, 'Gathering Storm on Azir makes him an incredible late game hyper-carry. A little Magic Penetration from items and Attack Speed from runes and Gathering Storm brings all the extra AP you''ll need to carry.', 11, 37, '2017-12-24 17:16:37', '2017-12-24 17:16:37'),
(67, 'Unsealed Spellbook paired with boots of Lucidity and Cosmic Insight will grant you massive Summoner Cooldown allowing you to spam them for maximum kill potential and safety.', 12, 50, '2017-12-24 17:16:37', '2017-12-24 17:16:37'),
(68, 'The stasis from Stopwatch is a must have on Vlad as you''re able to heal through it with your ultimate giving you the opportunity to potentially out-play the enemy in a 1v2 gank from the jungler.', 12, 55, '2017-12-24 17:16:37', '2017-12-24 17:16:37'),
(69, 'Magical Footwear saves you the hassle of having to spend that gold on boots, empowering your mid game for more damage/utility making you a monster.', 12, 56, '2017-12-24 17:16:37', '2017-12-24 17:16:37'),
(70, 'Vladimir can massively abuse the extra bit of Summoner and spell CDR for harassment and lane pressure throughout the entire game.', 12, 59, '2017-12-24 17:16:37', '2017-12-24 17:16:37'),
(71, 'Transcendence on Vlad allows you to become an unkillable god in the mid-game, reaching 40% CDR with just Protobelt, Zhonya''s, and Boots of Lucidity.', 12, 32, '2017-12-24 17:16:37', '2017-12-24 17:16:37'),
(72, 'Scorch is a fantastic lane phase choice for Vlad for harassing with [Q]. The extra bit of damage allows you to keep the pressure up and put your enemy in kill potential range.', 12, 35, '2017-12-24 17:16:37', '2017-12-24 17:16:37'),
(73, 'Phase Rush on Vladimir allows you to chase down and position for a second round of spell rotations. Vlad can be easily kited and Phase Rush helps mitigate that.', 13, 28, '2017-12-24 17:16:37', '2017-12-24 17:16:37'),
(74, 'Vlad''s [R] acts as both an opportunity for kill potential as well as safety from getting killed thanks to the heal. More [R]s means more power.', 13, 31, '2017-12-24 17:16:37', '2017-12-24 17:16:37'),
(75, 'The biggest gate to Vlad''s power is his cooldowns. Having spells up more often means more damage, more health, and more safety with [W].', 13, 32, '2017-12-24 17:16:37', '2017-12-24 17:16:37'),
(76, 'Scorch is a great lane presence rune that scales down as the game goes on. Combined with Taste of Blood, you can take very efficient trades in lane with [Q].', 13, 35, '2017-12-24 17:16:37', '2017-12-24 17:16:37'),
(77, 'Taste of Blood on Vlad allows you further pressure your lane opponent through attrition of health.', 13, 18, '2017-12-24 17:16:37', '2017-12-24 17:16:37'),
(78, 'Ravenous Hunter further empowers your ability to heal and take efficient trades. ', 13, 23, '2017-12-24 17:16:37', '2017-12-24 17:16:37'),
(79, 'Arcane Comet on Sion in an incredibly reliable source of damage thanks to his natural slows on [Q] and [E]. In the laning phase, paired with Scorch, Comet provides fantastic lane pressure damage when maxing [E] first.', 14, 27, '2017-12-24 17:16:37', '2017-12-24 17:16:37'),
(80, 'Manaflow Band is your means to mana sustain in the laning phase so that your capable of continuously harassing with [E] and comet.', 14, 30, '2017-12-24 17:16:37', '2017-12-24 17:16:37'),
(81, 'Transcendence is a great rune choice on tanks who are looking to stack a lot of big CDR items and can still benefit massivly from the extra bit of AD or AP after capping.', 14, 32, '2017-12-24 17:16:37', '2017-12-24 17:16:37'),
(82, 'Scorch is your go-to lane harassment rune. Combined with [E] max and Comet you''ll be able to safely harass from a distance when passing [E] through minions.', 14, 35, '2017-12-24 17:16:37', '2017-12-24 17:16:37'),
(83, 'Iron Skin is a great rune to help you sustain and out-trade during the laning phase. The extra bit of early Armor can also pay off big when trying to turn a jungle gank.', 14, 44, '2017-12-24 17:16:37', '2017-12-24 17:16:37'),
(84, 'Second Wind paired with Iron Skin allows you to take a number of early trades and come out with a health lead.', 14, 49, '2017-12-24 17:16:37', '2017-12-24 17:16:37'),
(85, 'Sion''s natural % health stacking on [W] synergizes with the oh-hit health stacking on Grasp letting him hit massive health numbers in the late-game.', 15, 38, '2017-12-24 17:16:37', '2017-12-24 17:16:37'),
(86, 'With Demolish we can convert the massive health stackng on [W], Grasp, and Overgrowth to big-time tower damage.', 15, 42, '2017-12-24 17:16:37', '2017-12-24 17:16:37'),
(87, 'The Armor and Magic Resist you gain from Conditioning are even more effective because you are stacking so heavily on health.', 15, 46, '2017-12-24 17:16:37', '2017-12-24 17:16:37'),
(88, 'Overgrowth + Sion''s [W] passive lets you hit insane health number in the late game.', 15, 47, '2017-12-24 17:16:37', '2017-12-24 17:16:37'),
(89, 'Manaflow Ban''s massive mana sustain allows you to use your large health pool to widdle away at your opponent''s health bar in lane and out-sustian them.', 15, 30, '2017-12-24 17:16:37', '2017-12-24 17:16:37'),
(90, 'Scorch''s extra bit of lane harass damage allows you to take a lot of trades in the laning phase with long-range [E]''s and come out ahead of your opponent.', 15, 35, '2017-12-24 17:16:37', '2017-12-24 17:16:37'),
(91, 'Lee Sin can very easily proc Electrocute as his [Q] counts as 2 unique spells. A quick auto after [Q] and Electrocute will go off immediately for that extra bit of burst damage and kill secure.', 16, 14, '2017-12-24 17:16:37', '2017-12-24 17:16:37'),
(92, 'Dashing with either [Q] or [W] makes for an easy way to get a quick 10 Lethality, giving Lee plenty of early game kill potential.', 16, 19, '2017-12-24 17:16:37', '2017-12-24 17:16:37'),
(93, 'Zombie Ward''s additional vision scales incredibly well on Lee Sin thanks to his natural high ward placement with Tracker''s Knife. The extra bit of vision will scale well into the mid game for securing objectives like Dragon and Baron.', 16, 20, '2017-12-24 17:16:37', '2017-12-24 17:16:37'),
(94, 'The majority of Lee sin''s high damage comes in the form of his abilities, specifically [Q] and [R]/ Ravenous Hunter allows you to skirmish often thanks to the extra bit of healing.', 16, 23, '2017-12-24 17:16:37', '2017-12-24 17:16:37'),
(95, 'Triumph''s burst of bonus healing after a kill/assist allows you to get away with some risk tower-dives and survive so that you''re able to snowball a lead to victory.', 16, 6, '2017-12-24 17:16:37', '2017-12-24 17:16:37'),
(96, 'Coup De Grace synergizes well with Lee Sin''s high damage and execution nature of [Q]. Combined with Electrocute and Ravenous Hunter, Lee is an incredibly strong dueling jungler.', 16, 11, '2017-12-24 17:16:37', '2017-12-24 17:16:37'),
(97, 'Lee Sin can very easily proc Electrocute as his [Q] counts as 2 unique spells. A quick auto after [Q] and Electrocute will go off immediately.', 17, 14, '2017-12-24 17:16:37', '2017-12-24 17:16:37'),
(98, 'Dashing with either [Q] or [W] makes for an easy way to get a quick 10 Lethality, giving Lee plenty of early game kill potential.', 17, 19, '2017-12-24 17:16:37', '2017-12-24 17:16:37'),
(99, 'Snowball is the name of the game with Lee, so early kills/assists give Eyeball Collection even more power granting Lee additional early game damage.', 17, 22, '2017-12-24 17:16:37', '2017-12-24 17:16:37'),
(100, 'Lee greatly benefits from *finding angles with high movement speed. Scrapping for early game kills/assists gives Lee the ability to find those angles with Relentless Hunter.', 17, 25, '2017-12-24 17:16:37', '2017-12-24 17:16:37'),
(101, 'Cooldown Reduction allows Lee Sin to further scrap in skirmishes, enabling multiple spell rotations. Transcendence allows him to get some early CDR for free and not punishing him for continuing to build it if need be.', 17, 32, '2017-12-24 17:16:37', '2017-12-24 17:16:37'),
(102, 'Waterwalking further promotes Lee''s ability to find angles for fights with movement speed. It pairs very nicely with Relentless Hunter.', 17, 36, '2017-12-24 17:16:37', '2017-12-24 17:16:37'),
(103, 'Arcane Comet is a great rune choice on Lux because she is often able to land it for the bonus damage thanks to the snare from [Q] and slow from [E].', 18, 27, '2017-12-24 17:16:37', '2017-12-24 17:16:37'),
(104, 'Manaflow Band is a great option for Lux when you are looking to do a lot of poking in the early game. ', 18, 30, '2017-12-24 17:16:37', '2017-12-24 17:16:37'),
(105, 'Absolute Focus further empowers your ability to poke and deal massive damage from afar while staying at full health. The extra bit of AP will help you make those picks and one-shots.', 18, 34, '2017-12-24 17:16:37', '2017-12-24 17:16:37'),
(106, 'Scorch''s early game poke damage lets you set yourself up for level 6 kill threat and provide pressure during the laning phase.', 18, 35, '2017-12-24 17:16:37', '2017-12-24 17:16:37'),
(107, 'Biscuit Delivery greats you reliable and strong sustain, especially in close all-in lane fights where the last minute healing can pay off big and help you survive.', 18, 54, '2017-12-24 17:16:37', '2017-12-24 17:16:37'),
(108, 'Cosmic Insight''s all-around CDR is nothing but good for Lux, providing extra damage and utility throughout the game.', 18, 59, '2017-12-24 17:16:37', '2017-12-24 17:16:37'),
(109, 'Arcane Comet can be difficult to land reliably, but the root from Lux''s [Q] and slow from [E] make it far easier.', 19, 27, '2017-12-24 17:16:37', '2017-12-24 17:16:37'),
(110, 'If you''re able to get a kill with your ult early in a fight, enough CDR could result in you getting your ult back before the rest of the fight ends.', 19, 31, '2017-12-24 17:16:37', '2017-12-24 17:16:37'),
(111, 'Like most mages a large portion of your damage comes from spamming abilities with CDR.', 19, 32, '2017-12-24 17:16:37', '2017-12-24 17:16:37'),
(112, 'Scorch is a great source of reliable lane harass damage that adds up over time to build kill pressure.', 19, 35, '2017-12-24 17:16:37', '2017-12-24 17:16:37'),
(113, 'Magical Footwear is an all-around great rune choice because it''s simply a 350 gold money saver. Think of it as getting a free kill at 10min.', 19, 56, '2017-12-24 17:16:37', '2017-12-24 17:16:37'),
(114, 'More cooldown reduction is nothing but pure bliss for Lux. Cosmic Insight get even more value if you build Zhonya''s.', 19, 59, '2017-12-24 17:16:37', '2017-12-24 17:16:37'),
(115, 'Unsealed Spellbook allows you to heavily abuse your Summoner CDR with Lucidity Boots for aggressive picks with Flash->[R].', 20, 50, '2017-12-24 17:16:37', '2017-12-24 17:16:37'),
(116, 'Perfect Timing is a great rune in situations where enemy mid has dive potential on you and you want to make the out-play.', 20, 55, '2017-12-24 17:16:37', '2017-12-24 17:16:37'),
(117, 'Magical Footwear allows you to get an earlier and cheaper Boots of Lucidity empowering your ability to make aggressive picks with Summoner Cooldowns.', 20, 56, '2017-12-24 17:16:37', '2017-12-24 17:16:37'),
(118, 'The extra bit of CDR and Summoner CDR from Cosmic Insight even further enables your potential to abuse your short Flash cooldown.', 20, 59, '2017-12-24 17:16:37', '2017-12-24 17:16:37'),
(119, 'The extra bit of Movement Speed from Celerity comes up big when just outside of range for a well-timed ult.', 20, 33, '2017-12-24 17:16:37', '2017-12-24 17:16:37'),
(120, 'Scorch provides fantastic early-game lane pressure for poke and harassment so that you''re able to keep the enemy in kill range when you hit level 6.', 20, 35, '2017-12-24 17:16:37', '2017-12-24 17:16:37'),
(121, 'Malzahar''s kit allows him to repeatedly proc Comet on cooldown and reduce it''s cooldown effectively with [E] and [W]. Once you''ve purchased Rylai''s your comet hit-rate will skyrocket.', 21, 27, '2017-12-24 17:16:37', '2017-12-24 17:16:37'),
(122, 'The more your [R] up the more kills you can secure for your team. Paired with Transcendence and Cosmic Insight you''ll have your Ultimate up for any fight or skirmish.', 21, 31, '2017-12-24 17:16:37', '2017-12-24 17:16:37'),
(123, 'Celerity is a great rune on Malzahar largely thanks to the passive Movement Speed. The extra bit of speed allow you to get into range of that clutch [R] that you might not otherwise be able to get.', 21, 33, '2017-12-24 17:16:37', '2017-12-24 17:16:37'),
(124, 'The option here is really a personal preference. Scorch is great for lane harass and early fights while Gathering Storm is great for scaling and pairs well with Magic Penetration.', 21, 35, '2017-12-24 17:16:37', '2017-12-24 17:16:37'),
(125, 'Malzahar loves CDR for both his [R] and harassing/shoving in lane with [E]. Assuming you''ve completed Morello''s, you''ll already be at 35% CDR and incredibly strong at 10min.', 21, 59, '2017-12-24 17:16:37', '2017-12-24 17:16:37'),
(126, 'Magical Footwear is a great rune choice for simply saving money so you can hit your damage power-spikes that much sooner.', 21, 56, '2017-12-24 17:16:37', '2017-12-24 17:16:37'),
(127, 'Unsealed Spellbook is an interesting Keystone choice on Junglers as the base Summoner CDR allows you to Smite several more times in the early game as compared to other Junglers without.', 22, 50, '2017-12-24 17:16:37', '2017-12-24 17:16:37'),
(128, 'Hextech Flashtraption allows you to overcome Skarner''s biggest weakness of having no "terrain scaling", meaning he is not able to find effectively ganks by being able to jump over walls like Dragon pit etc.', 22, 53, '2017-12-24 17:16:37', '2017-12-24 17:16:37'),
(129, 'Skarner is able to make great use of the extra bit of Movement Speed from Magical Footwear. It also allows you to potentially complete your tier 2 boots sooner thanks to the gold savings.', 22, 56, '2017-12-24 17:16:37', '2017-12-24 17:16:37'),
(130, 'Cosmic Insight further doubles down on your Summoner CDR allowing you to make hard engages that much more often.', 22, 59, '2017-12-24 17:16:37', '2017-12-24 17:16:37'),
(131, 'Unflinching combined with Unsealed Spellbook on Skarner allows you to empower your constant use of Summoner Spells even more.', 22, 41, '2017-12-24 17:16:37', '2017-12-24 17:16:37'),
(132, 'Revitalize on Skarner massively buff your [W] and Sterak''s shield making you a resilient target when diving the enemy backline for a pick.', 22, 48, '2017-12-24 17:16:37', '2017-12-24 17:16:37'),
(133, 'Arcane Comet synergizes well with Varus'' Lethality build because the adaptive physical damage of Comet will hit extra hard thanks to all of the Lethality you''re building.', 23, 27, '2017-12-24 17:16:37', '2017-12-24 17:16:37'),
(134, 'Manaflow Band allows you to massively sustain mana once you have built Tear of the Goddess, empowering you to continuously deal more poke damage.', 23, 30, '2017-12-24 17:16:37', '2017-12-24 17:16:37'),
(135, 'Lethality poke on Varus requires proper positioning in the backline of your team so that you can safely deal damage from a distance.', 23, 33, '2017-12-24 17:16:37', '2017-12-24 17:16:37'),
(136, 'Scorch''s extra bit of burn damage in the lane phase allows you to keep up continued poke pressure.', 23, 35, '2017-12-24 17:16:37', '2017-12-24 17:16:37'),
(137, 'The extra bit of healing from Triumph allows you to trade those close all-in 2v2s in lane and pick up the double kill once one of the enemy champion dies.', 23, 6, '2017-12-24 17:16:37', '2017-12-24 17:16:37'),
(138, 'Coup De Grace is the go-to rune of choice on champions who can deal damage to backline squishy targets.', 23, 11, '2017-12-24 17:16:38', '2017-12-24 17:16:38'),
(139, 'Press the Attack pairs nicely with Varus''s natural attack speed and % max health damage on his [W]. A few auto attacks and you''ll be shredding any champion on the rift.', 24, 2, '2017-12-24 17:16:38', '2017-12-24 17:16:38'),
(140, 'Taking Triumph lets you fight to the death and hold your group for the kill, coming out the other side with massive health to keep fighting.', 24, 6, '2017-12-24 17:16:38', '2017-12-24 17:16:38'),
(141, 'Like most Ad Carries, Varus loves to auto attack and the Attack Speed from Legend: Alacrity provides plenty in conjunction with his Passive.', 24, 10, '2017-12-24 17:16:38', '2017-12-24 17:16:38'),
(142, 'Coup De Grace is the most reliable damage rune in this group. The extra execution presence on squishies helps you win out in close 2v2 fights in the bot lane.', 24, 11, '2017-12-24 17:16:38', '2017-12-24 17:16:38'),
(143, 'Taste of Blood allows you to take small trades with lane with your 3-stack [W] proc and [E] and come out ahead on health.', 24, 18, '2017-12-24 17:16:38', '2017-12-24 17:16:38'),
(144, 'Ravenous Hunter allows you to heal for massive amounts on a full [W] blight proc. paired with the exposure bonus from Press the Attack.', 24, 23, '2017-12-24 17:16:38', '2017-12-24 17:16:38'),
(145, 'Miss Fortune Support relies heavily on her [E] in the early game, making Comet a guaranteed hit thanks to the slow. [E] spam with Comet and Cheap Shot results in fantastic lane pressure damage.', 25, 27, '2017-12-24 17:16:38', '2017-12-24 17:16:38'),
(146, 'Manaflow Band allows you to keep up your [E] harass and poke in the laning phase without fear of running out of mana.', 25, 30, '2017-12-24 17:16:38', '2017-12-24 17:16:38'),
(147, 'Celerity is a fantastic rune choice on Miss Fortune as the bonus Movement Speed from you [W] as well as Phage/Black Cleaver grant you a bit of bonus AD (AP in the early game).', 25, 33, '2017-12-24 17:16:38', '2017-12-24 17:16:38'),
(148, 'Gathering Storm is a great rune choice for scaling into the lane game as a secondary carry. In a 30min + game where you are able to hit level 16, you''re as big of a threat as any of your solo laners.', 25, 37, '2017-12-24 17:16:38', '2017-12-24 17:16:38'),
(149, 'Cheap Shot on MF is taken as a lane harassment option as you''re able to instantly proc the bonus damage easily with [E].', 25, 17, '2017-12-24 17:16:38', '2017-12-24 17:16:38'),
(150, 'Zombie Ward is an all-around great support rune choice. It''s effectiveness scales incredibly well with Sightstone and the raw number of wards you place down over the course of the game.', 25, 20, '2017-12-24 17:16:38', '2017-12-24 17:16:38'),
(151, 'Arcane Comet can be unreliable, but if procced from MF''s [E] it should be easy to hit. Arcane Comet also scales very well with Bonus AD.', 26, 27, '2017-12-24 17:16:38', '2017-12-24 17:16:38'),
(152, 'Because MF is a caster AD Carry, the mana sustain here allows you to poke throughout lane with [Q].', 26, 30, '2017-12-24 17:16:38', '2017-12-24 17:16:38'),
(153, 'Celerity''s bonus Movement Speed synergizes well with Miss Fortune''s natural Movement Speed from [W]. The secondary effect of Celerity also allows MF to gain a considerable amount of bonus AD when her [W] is active.', 26, 33, '2017-12-24 17:16:38', '2017-12-24 17:16:38'),
(154, 'Scorch on MF is a great lane harass and early-game rune thanks to her ease of proccing with [E]. The Magic damage also helps diversify MF''s damage type a bit in the early game to she is a slightly more difficult to itemize against.', 26, 35, '2017-12-24 17:16:38', '2017-12-24 17:16:38'),
(155, 'Triumph allows you to take close fights in the early laning phase and turn that single kill into a double thanks to the bonus healing.', 26, 6, '2017-12-24 17:16:38', '2017-12-24 17:16:38'),
(156, 'Coup De Grace synergizes incredibly well with MF''s massively high damage [Q] and [R], putting any squishy target with poor positioning in easy kill range.', 26, 11, '2017-12-24 17:16:38', '2017-12-24 17:16:38'),
(157, 'Electrocute is a great rune for Shaco''s natural high-burst assassination playstyle, allowing you to pipck up quick early kill and snowball.', 27, 14, '2017-12-24 17:16:38', '2017-12-24 17:16:38'),
(158, 'Sudden Impact empowers Shaco''s damage in ganks when using [Q]. He also makes great use of both the Lethality and Magic Pen thanks to his mixed damage profile.', 27, 19, '2017-12-24 17:16:38', '2017-12-24 17:16:38'),
(159, 'Eyeball Collection is a great rune choice on champions who rely heavily on early snowball kills and those who build Duskblade for the faster ward-sweeping stacks.', 27, 22, '2017-12-24 17:16:38', '2017-12-24 17:16:38'),
(160, 'Relentless Hunt on Shaco allows you to cover more ground during the [Q] stealth so that you''re able to position perfectly for the kill.', 27, 25, '2017-12-24 17:16:38', '2017-12-24 17:16:38'),
(161, 'The bonus Attack Speed empowers Shaco''s ability to quickly clear the jungle for early ganks. It also empowers the damage of your ganks by allowing you to get off an extra auto attack or more during your combo.', 27, 8, '2017-12-24 17:16:38', '2017-12-24 17:16:38'),
(162, 'Coup De Grace is the go-to assassination rune for those champions (like Shaco) who rely heavily on blowing up squishy backline champions.', 27, 11, '2017-12-24 17:16:38', '2017-12-24 17:16:38'),
(163, 'Thanks to Morde''s close range and multiple DoTs ([W] and [R]), you''re able to repeatedly proc Aery in extended trades for very reliable damage.', 28, 26, '2017-12-24 17:16:38', '2017-12-24 17:16:38'),
(164, 'Mordekaiser has no mana costs, making his use of a rune like Manaflow Band completely useless. More [R]s from Ultimate Hat means more kill threat and lane pressure damage.', 28, 31, '2017-12-24 17:16:38', '2017-12-24 17:16:38'),
(165, 'The bonus Movement Speed from Celerity is especially useful in scenarios for Mordekaiser because a large majority of his damage comes from being able to stick to his target.', 28, 33, '2017-12-24 17:16:38', '2017-12-24 17:16:38'),
(166, 'Scorch is a fantastic lane dominance rune that provides a lot of damage for early trades/fights. Look to proc the bonus damage with an [E] every time is comes off of cooldown.', 28, 35, '2017-12-24 17:16:38', '2017-12-24 17:16:38'),
(167, 'As a short-range bruiser you wind up soaking a lot of damage in fights. The bonus healing form Triumph helps a lot in absorbing that damage, picking up kills/assists, and still being able to continue on in the fight.', 28, 6, '2017-12-24 17:16:38', '2017-12-24 17:16:38'),
(168, 'Coup De Grace help you scale into the mid to late game with reliable damage that with significantly help take out squishy targets that you manage to get on top of.', 28, 11, '2017-12-24 17:16:38', '2017-12-24 17:16:38'),
(169, 'Like Courage but with damage, Thresh can easily proc Aftershock and it adds to his kill potential if you can land the explosion.', 29, 39, '2017-12-24 17:16:38', '2017-12-24 17:16:38'),
(170, 'Font of Life is a great rune on Thresh as he has multiple tools of proccing it with [Q], [E], and [R], providing a lot of healing in lane trades and team fights.', 29, 43, '2017-12-24 17:16:38', '2017-12-24 17:16:38'),
(171, 'The Armor from Iron Skin is incredibly valuable in lane trades, especially when looking for that level 2 engage.', 29, 44, '2017-12-24 17:16:38', '2017-12-24 17:16:38'),
(172, 'Second Wind''s in-combat sustain further empowers your ability to take trades, and the health you regenerate back is multiplicative with the armor from Iron Skin.', 29, 49, '2017-12-24 17:16:38', '2017-12-24 17:16:38'),
(173, 'Future''s Market on Thresh allows you to stretch your limited gold income into much faster high utility item power spikes like Locket, redemption, etc.', 29, 57, '2017-12-24 17:16:38', '2017-12-24 17:16:38'),
(174, 'The extra bit of Summoner and Spell CDR on Thresh pays off big when you are looking for big game-winning plays like Flash->[Q] etc. The extra bit of CDR also allows you to provide more utility and CC in teamfights.', 29, 59, '2017-12-24 17:16:38', '2017-12-24 17:16:38'),
(175, 'Like Courage but with damage, Thresh can easily proc Aftershock and it adds to his kill potential if you can land the explosion.', 30, 39, '2017-12-24 17:16:38', '2017-12-24 17:16:38'),
(176, 'Font of Life is a great rune on Thresh as he has multiple tools of proccing it with [Q], [E], and [R], providing a lot of healing in lane trades and team fights.', 30, 43, '2017-12-24 17:16:38', '2017-12-24 17:16:38'),
(177, 'The Armor from Iron Skin is incredibly valuable in lane trades, especially when looking for that level 2 engage.', 30, 44, '2017-12-24 17:16:38', '2017-12-24 17:16:38'),
(178, 'Second Wind''s in-combat sustain further empowers your ability to take trades, and the health you regenerate back is multiplicative with the armor from Iron Skin.', 30, 49, '2017-12-24 17:16:38', '2017-12-24 17:16:38'),
(179, 'Like Font of Life, Thresh has 3 ([Q], [E], and [R]) strong tools for proccing Cheap Shot empowering your lane for even more kill pressure.', 30, 17, '2017-12-24 17:16:38', '2017-12-24 17:16:38'),
(180, 'To key to being a useful support is effective warding and Zombie Ward shines in this department.', 30, 20, '2017-12-24 17:16:38', '2017-12-24 17:16:38'),
(181, 'Grasp on Malphite allows you to trade effectively with auto attacks in lane. Each point of health is especially important/strong on Malphite thanks to having so much natural Armor.', 31, 38, '2017-12-24 17:16:38', '2017-12-24 17:16:38'),
(182, 'Unflinching bonus Tenacity and Slow Resist allow you to stick to your target after using [R] for repeated Grasp procs and kill pressure.', 31, 41, '2017-12-24 17:16:38', '2017-12-24 17:16:38'),
(183, 'If you manage to make it through the early game, Conditioning''s bonus resists make a monster and incredibly difficult to kill in the mid game.', 31, 46, '2017-12-24 17:16:38', '2017-12-24 17:16:38'),
(184, 'Overgrowth''s bonus health scales incredibly well with Malphite''s natural Armor stacking. Each point of health you earn from Overgrowth is that much stronger thanks to your resists.', 31, 47, '2017-12-24 17:16:38', '2017-12-24 17:16:38'),
(185, 'The primary reason you pick Malphite is for the incredibly strong engage potential with his [R]. The more often your [R] is up the more chances you have for kills and safety when getting ganked.', 31, 31, '2017-12-24 17:16:38', '2017-12-24 17:16:38'),
(186, 'Malphite''s natural build consists of a lot of Cooldown Reduction items and Transcendence allows you to overcome any fear of over-capping CDR. The extra bit of AP you''ll get from over-capping is welcomed.', 31, 32, '2017-12-24 17:16:38', '2017-12-24 17:16:38'),
(187, 'Summon Aery is fantastic lane dominance and annoyance rune on Teemo. With an Auto->[Q]->Auto you''re able to double-proc Aery for really oppressive early game harass damage.', 32, 26, '2017-12-24 17:16:38', '2017-12-24 17:16:38'),
(188, 'The Ultimate Hat allows you to further press your role as an "annoying little s***" by keeping tons of mushrooms up at all time all around the map and keep yourself safe from ganks in lane.', 32, 31, '2017-12-24 17:16:38', '2017-12-24 17:16:38'),
(189, 'Celerity synergizes well with Teemo''s [W], granting a bit of extra AP while your Movement Speed steroid is active.', 32, 33, '2017-12-24 17:16:38', '2017-12-24 17:16:38'),
(190, 'Scorch is the go-to lane harass/pressure rune and is a must have on Teemo if you''re looking to get the most out of your laning phase.', 32, 35, '2017-12-24 17:16:38', '2017-12-24 17:16:38'),
(191, 'Alacrity on Teemo is another great lane pressure rune as the extra Attack Speed will help you get more autos off for poison damage and Aery procs.', 32, 8, '2017-12-24 17:16:38', '2017-12-24 17:16:38'),
(192, 'Coup De Grace help you scale into the mid to late game. The extra bit of damage means if in unsuspecting enemy support accidentally walks into a mushroom when they are below 40% health they are likely to die.', 32, 11, '2017-12-24 17:16:38', '2017-12-24 17:16:38'),
(193, 'Glacial Augment acts as a replacement to Frozen Mallet allowing you to abuse your range in lane and build into more offensive items. By building BotRK you also gain an additional AoE slow.', 33, 51, '2017-12-24 17:16:38', '2017-12-24 17:16:38'),
(194, 'Biscuits are a great means of sustain allowing you to save money on potions and invest it into you damage items to further push a lead.', 33, 54, '2017-12-24 17:16:38', '2017-12-24 17:16:38'),
(195, '', 33, 57, '2017-12-24 17:16:38', '2017-12-24 17:16:38'),
(196, 'Approach Velocity synergizes extremely well with Glacial Augment and Teemo''s [R] allowing you to chase any enemy to their death.', 33, 60, '2017-12-24 17:16:38', '2017-12-24 17:16:38'),
(197, 'The beauty of Absolute Focus on Teemo is that you''re often dealing damage to champions when you are full health and even in base, thanks to any mushrooms you have spread across the map. Teemo is likely one of the biggest abusers of the Absolute Focus rune.', 33, 34, '2017-12-24 17:16:38', '2017-12-24 17:16:38'),
(198, 'Scorch is a fantastic rune for abusing and poking in lane. Teemo can easily proc this une on cooldown thanks to the long range of his [Q].', 33, 35, '2017-12-24 17:16:38', '2017-12-24 17:16:38'),
(199, 'Glacial Augment on on Ekko allows you to [E] in onto the enemy champion and almost guarantee a hit with both parts of your [Q] thanks to the slow.', 34, 51, '2017-12-24 17:16:38', '2017-12-24 17:16:38'),
(200, 'Zhonya''s is a core item on Ekko as it allows you to throw down [W] on yourself and hit the stasis to extra safety.', 34, 55, '2017-12-24 17:16:38', '2017-12-24 17:16:38'),
(201, 'Minion Dematerializer on Ekko help you wave-clear in the mid game so you''re able to keep lane priority and match roam/fights in the jungle.', 34, 58, '2017-12-24 17:16:38', '2017-12-24 17:16:38'),
(202, 'More CDR means more spell casts, healing, and Ekko makes great use of the item CDR thanks to your build of Gunblade, Zhonya''s, and Protobelt.', 34, 59, '2017-12-24 17:16:38', '2017-12-24 17:16:38'),
(203, 'Ekko is a fantastic user of Sudden Impact for the bonus Magic Penetration after hitting an enemy with [E]. The extra bit of damage can be the difference between a kill and the enemy surviving.', 34, 19, '2017-12-24 17:16:38', '2017-12-24 17:16:38'),
(204, 'Ravenous Hunter empowers your ability to trade and sustain in lane thanks to the massive healing from your [Q] and passive.', 34, 23, '2017-12-24 17:16:38', '2017-12-24 17:16:38'),
(205, 'Ekko can easily proc Electrocute with [Q] and [E], allowing him to burst down his opponent before they know what hit him.', 35, 14, '2017-12-24 17:16:38', '2017-12-24 17:16:38'),
(206, 'After casting [E] Ekko gains both Magic Penetration and Lethality making his assassination potential incredibly high.', 35, 19, '2017-12-24 17:16:38', '2017-12-24 17:16:38'),
(207, 'Zombie Ward allows you to keep wards up around mid-lane and provide even more safety in the laning phase.', 35, 20, '2017-12-24 17:16:38', '2017-12-24 17:16:38'),
(208, 'Like LeBlanc, Ekko massively benefits from Spell Vamp on his passive damage allowing him to sustain in lane and pressure his opponent.', 35, 23, '2017-12-24 17:16:38', '2017-12-24 17:16:38'),
(209, 'More [R]s means a lot more safety for all-ins, dives, and escaping ganks.', 35, 31, '2017-12-24 17:16:38', '2017-12-24 17:16:38'),
(210, 'Like most mid-lane mages, Ekkos loves as much CDR as he can get his hands on.', 35, 32, '2017-12-24 17:16:38', '2017-12-24 17:16:38'),
(211, 'Electrocute allows you to massively burst the enemy champion with an [E]->[Q]->Auto to deal insane damage easy kill threat.', 36, 14, '2017-12-24 17:16:38', '2017-12-24 17:16:38'),
(212, 'Zoe is able to reliably proc Sudden Impact with every cast of her R], being able to keep the Magic Penetration buff up at all time in the mid to late game for even more burst damage.', 36, 19, '2017-12-24 17:16:38', '2017-12-24 17:16:38'),
(213, 'This setup is all about maximizing damage and snowball potential and Eyeball Collection is all about, granting you massive AP for kills and running away with the game.', 36, 22, '2017-12-24 17:16:38', '2017-12-24 17:16:38'),
(214, 'Ravenous Hunter allows you to heal off any incoming damage in teamfights with your own returning massive damage.', 36, 23, '2017-12-24 17:16:38', '2017-12-24 17:16:38'),
(215, 'Scorch further builds on your damage early game and lets you get out ahead for burst and snowballing.', 36, 35, '2017-12-24 17:16:38', '2017-12-24 17:16:38'),
(216, 'Transcendence allows you to hit 40% CDR with just Morello''s and Lich Bane, making your mid game damage and utility threat incredibly powerful.', 36, 32, '2017-12-24 17:16:38', '2017-12-24 17:16:38'),
(217, 'Arcane Comet is a reasonably good rune for Zoe in the laning phase thanks to her ability to poke repeatedly with [Q].', 37, 27, '2017-12-24 17:16:38', '2017-12-24 17:16:38'),
(218, 'Zoe''s super low cooldown on [R] allows her to almost instantly get the full stack benefit of Ultimate Hat keeping it at an even shorter cooldown.', 37, 31, '2017-12-24 17:16:38', '2017-12-24 17:16:38'),
(219, 'Transcendence allows you to hit 40% CDR with just Morello''s and Lich Bane, making your mid game damage and utility threat incredibly powerful.', 37, 32, '2017-12-24 17:16:38', '2017-12-24 17:16:38'),
(220, 'Scorch further empowers your ability to chip away at the enemies health bar during the lane phase. The extra bit of damage helps you come out ahead in trades and find early kills.', 37, 35, '2017-12-24 17:16:38', '2017-12-24 17:16:38'),
(221, 'Zoe is able to reliably proc Sudden Impact with every cast of her R], being able to keep the Magic Penetration buff up at all times in the mid to late game for even more burst damage.', 37, 19, '2017-12-24 17:16:38', '2017-12-24 17:16:38'),
(222, 'Zombie Ward offers incredible lane safety vision around the sides of mid to keep you safe from ganks and able to track the enemy jungler more often.', 37, 20, '2017-12-24 17:16:38', '2017-12-24 17:16:38'),
(223, 'Lethal Tempo on Tryndamere allows you to get an insane amount of Auto Attacks in during trades, all-ins, and during your [R]. In the mid to late game your Attack Speed gets so high that you become an incredibly scary threat to the backline.', 38, 3, '2017-12-24 17:16:38', '2017-12-24 17:16:38'),
(224, 'Overheal synergizes well with Tryndamere''s constant self healing from [Q] and BotRK allowing you to enter trades/fights with the early health advantage.', 38, 5, '2017-12-24 17:16:38', '2017-12-24 17:16:38'),
(225, 'More Attack Speed means more raw damage, kill threat, and split-pushing tower potential.', 38, 8, '2017-12-24 17:16:38', '2017-12-24 17:16:38'),
(226, 'Last Stand is the perfect damage rune for Tryndamere synergizes insanely well with your[R]. As you pop [R] at low health you''ll have a few seconds of being able to deal massive amounts of damage.', 38, 13, '2017-12-24 17:16:38', '2017-12-24 17:16:38'),
(227, 'Sudden Impact synergizes well with Tryndamere''s [Q] when looking to spin in for the all-in kill.', 38, 19, '2017-12-24 17:16:38', '2017-12-24 17:16:38'),
(228, 'Ghost Poro provides fantastic on-demand lane safety when you''re able to keep the enemy shoved in and keep the poro in the river brush uncontested.', 38, 21, '2017-12-24 17:16:38', '2017-12-24 17:16:38'),
(229, 'Grasp on Poppy allows her to trade incredibly well in lane and sustain a ton of damage thanks to her massive resist stacking. The heal and bonus health from Grasp make every point of health much stronger due to those resists.', 39, 38, '2017-12-24 17:16:38', '2017-12-24 17:16:38'),
(230, 'Poppy''s biggest pitfall is her lack of mobility. She can be a threat to squishy champions if she is able to stick to them. Unflinching''s Tenacity/Slow Resist allows you to dive the backline and stick to them for kill threat.', 39, 41, '2017-12-24 17:16:38', '2017-12-24 17:16:38'),
(231, 'Conditioning''s duo resist buff at 10mins synergizes well with the additional resists from [W] making you incredibly tanky and resilient in the mid-game.', 39, 46, '2017-12-24 17:16:38', '2017-12-24 17:16:38'),
(232, 'Second Wind''s in-combat health regen allows you to take some scrappy duels after 10min and sustain any small bit of damage you take.', 39, 49, '2017-12-24 17:16:38', '2017-12-24 17:16:38');
INSERT INTO `keystones_why` (`id`, `stone_why`, `builds_id`, `keystones_id`, `created_at`, `updated_at`) VALUES
(233, 'Triumph on a tank allows you to hold your ground as the front-line in teamfights for an incredibly long time by just picking up assists.', 39, 6, '2017-12-24 17:16:38', '2017-12-24 17:16:38'),
(234, 'Legend: Tenacity further empowers your ability to ignore enemy CC and become an unstoppable front-line tank.', 39, 9, '2017-12-24 17:16:38', '2017-12-24 17:16:38'),
(235, 'Predator on Olaf allows you to hit the go button on ganks and not let up. With the CC immunity from [R] you''ll be hunting down anyone who gets in your way.', 40, 15, '2017-12-24 17:16:38', '2017-12-24 17:16:38'),
(236, 'Cheap Shot allows your to repeatedly deal True Damage to whatever target your attacking thanks to the perma-slow from [Q] and Righteous Glory.', 40, 17, '2017-12-24 17:16:38', '2017-12-24 17:16:38'),
(237, 'Eyeball Collection allows you to snowball those successful ganks into more kills and a massive lead.', 40, 22, '2017-12-24 17:16:38', '2017-12-24 17:16:38'),
(238, 'The item CDR from Ingenious Hunter allows you way more uses of Predator and Righteous Glory for those unstoppable ganks.', 40, 24, '2017-12-24 17:16:38', '2017-12-24 17:16:38'),
(239, 'Triumph on Olaf allows you to dive into the back line, absorb the brunt of the damage for your team, and heal for a ton from any kills or assists to keep fighting.', 40, 6, '2017-12-24 17:16:38', '2017-12-24 17:16:38'),
(240, 'Coup De Grace is the go-to tune for reliable damage in fights where you''re able to get to the back-line and shred the enemy squishy champions.', 40, 11, '2017-12-24 17:16:38', '2017-12-24 17:16:38'),
(241, 'Electrocute on Talon allows you to blow up enemy champions quickly and easily on roams with [R]->[Q]->[W].', 41, 14, '2017-12-24 17:16:38', '2017-12-24 17:16:38'),
(242, 'Talon is a fantastic user of Sudden Impact thanks to [Q] acting as a dash. The extra bit of Lethality allows you to deal massive amounts of damage when going for the assassination.', 41, 19, '2017-12-24 17:16:38', '2017-12-24 17:16:38'),
(243, 'Zombie Ward allows you to keep yourself safe in lane with massive river vision control. Hug the side of the lane that you have warded so that you''re able to es cape safely if the jungler appears on the opposite side.', 41, 20, '2017-12-24 17:16:38', '2017-12-24 17:16:38'),
(244, 'Relentless Hunter''s bonus Movement Speed massively empowers your ability to leave the mid lane and pressure the side lanes with quick roams. Talon loves traversing the map as quickly as possible, and Relentless Hunter is key to that.', 41, 25, '2017-12-24 17:16:38', '2017-12-24 17:16:38'),
(245, 'Triumph allows you to dive towers or the back-line with an all-in combo and the ability to get out alive afterward, thanks to the massive heal.', 41, 6, '2017-12-24 17:16:38', '2017-12-24 17:16:38'),
(246, 'Coup De Grace is the ultimate rune for assassins looking to execute squishy targets. The bonus damage is easily accessible on a high damage kit such as Talon''s.', 41, 11, '2017-12-24 17:16:38', '2017-12-24 17:16:38'),
(247, 'Swain is great lane abuser of Comet thanks to the heavy slow from [Q] nearly guaranteeing a hit.', 42, 27, '2017-12-24 17:16:38', '2017-12-24 17:16:38'),
(248, 'Manaflow Band allows you to keep up the lane pressure and harassment with constant use of abilities.', 42, 30, '2017-12-24 17:16:38', '2017-12-24 17:16:38'),
(249, 'As Swain you should be able to stay within Absolute Focus damage bonus range more than most other champions thanks to the healing from [R] and Ravenous Hunter.', 42, 34, '2017-12-24 17:16:38', '2017-12-24 17:16:38'),
(250, 'Scorch is an incredibly strong early laning rune for pressure and harassment. Look to proc the bonus damage as often as possible with either [Q] or [E].', 42, 35, '2017-12-24 17:16:38', '2017-12-24 17:16:38'),
(251, 'Once Rylai''s has been completed you will be able to repetitively proc Cheap Shot''s bonus True Damage in teamfights with [Q], [R], and [E] to multiple targets.', 42, 17, '2017-12-24 17:16:38', '2017-12-24 17:16:38'),
(252, 'Ravenous Hunter doubles down on the bruiser-healing nature of Swain kit, allowing you to sustain more damage as you dish it out.', 42, 23, '2017-12-24 17:16:38', '2017-12-24 17:16:38'),
(253, 'With a Tiger Stance focused build, Press the Attack synergizes incredibly well with your ability to quickly proc the exposure damage and stack the bleeds for rapidly increasing damage.', 43, 2, '2017-12-24 17:16:38', '2017-12-24 17:16:38'),
(254, 'Triumph allows you to dive into the enemy and slice them up in teamfights and keep on going thanks to the massive heal after each kill.', 43, 6, '2017-12-24 17:16:38', '2017-12-24 17:16:38'),
(255, 'More Attack Speed means a faster/healthier jungle clear, more map control, and much faster kills/stack of Press the Attack.', 43, 8, '2017-12-24 17:16:38', '2017-12-24 17:16:38'),
(256, 'Coup De Grace is the go-to rune for slicing up squishy targets as quickly as possible. The execution damage allows your double-stacked bleeds to hit like a truck.', 43, 11, '2017-12-24 17:16:38', '2017-12-24 17:16:38'),
(257, 'Celerity empowers your ability to traverse the map much more quickly than otherwise possible, allowing you to power-farm and hit item/level power-spikes way sooner than the enemy is expecting.', 43, 33, '2017-12-24 17:16:38', '2017-12-24 17:16:38'),
(258, 'Waterwalking furthers your ability to control the jungle with map presence. The extra AD also allows you to sneak some early dragons/Rift Herald for more objective control.', 43, 36, '2017-12-24 17:16:38', '2017-12-24 17:16:38'),
(259, 'Illaoi is one of the few melee champions who can reliably proc Kleptomancy in short trades. Her [W] allows her to quickly proc the effect for extra gold and sustain.', 44, 52, '2017-12-24 17:16:38', '2017-12-24 17:16:38'),
(260, 'Biscuit Delivery combined with the extra potions that you loot with Klepto allows you to take short lane trades and out-sustain your opponent laner.', 44, 54, '2017-12-24 17:16:38', '2017-12-24 17:16:38'),
(261, 'Magical Footwear is a stable and reliable rune on all champions as it acts effectively as a free kill''s worth of gold at 10mins allowing you to hit  damage power spikes a little sooner.', 44, 56, '2017-12-24 17:16:38', '2017-12-24 17:16:38'),
(262, 'Celestial Body is your primary form of defensive stats from runes. This setup opts heavily for damage and sustain, with very little defense. Celestial Body acts as a means of making sure you don''t get blown up early in the game.', 44, 61, '2017-12-24 17:16:38', '2017-12-24 17:16:38'),
(263, 'Sudden Impact is a great rune choice for maximum damage on Illaoi as her [W] leap counts as a dash, granting you Lethality for every bit of damage afterwards.', 44, 19, '2017-12-24 17:16:38', '2017-12-24 17:16:38'),
(264, 'Ravenous Hunter''s extra bit of Spell Vamp is incredibly strong when paired with Illaoi''s high base damage on her abilities and Tentacle Slams, allows you to do sustain through any incoming damage while you blow up the enemy team.', 44, 23, '2017-12-24 17:16:38', '2017-12-24 17:16:38'),
(265, 'Electrocute is the go-to rune for lane assassination power and Wukong is easily able proc it with a [E]->Auto->[Q].', 45, 14, '2017-12-24 17:16:38', '2017-12-24 17:16:38'),
(266, 'Sudden Impact provides you the bonus Lethality you need to execute squishy targets when jumping in with [E]. You''re also able to re-proc the effect when you come out of stealth from [W].', 45, 19, '2017-12-24 17:16:38', '2017-12-24 17:16:38'),
(267, 'Wukong top is all about assassination and snowballing off kills. Eyeball collection does just that, granting you more power for every kill and assist you pick up.', 45, 22, '2017-12-24 17:16:38', '2017-12-24 17:16:38'),
(268, 'Relentless Hunter with Ghostblade allows you to sprint at an enemy from lane or in ganks to get in range for an [E] and blow them up.', 45, 25, '2017-12-24 17:16:38', '2017-12-24 17:16:38'),
(269, 'Triumph grants you some agency in teamfights where you''re able to dive the back-line and pick up a kill before dying. That kill will grant you the health needed to get out safely or move onto the next target.', 45, 6, '2017-12-24 17:16:38', '2017-12-24 17:16:38'),
(270, 'Coup De Grace is the go-to rune for assassins and champions who are looking to kill squishies quickly.', 45, 11, '2017-12-24 17:16:39', '2017-12-24 17:16:39'),
(271, 'Heimerdinger''s constant lane harass, stun/slow with [E], and Rylai''s, allows him to consistently land Comet for increase lane pressure and kill potential.', 46, 27, '2017-12-24 17:16:39', '2017-12-24 17:16:39'),
(272, 'The Ultimate Hat on Heimerdinger ensures you''ll have [R] up for every jungle gank be it enemy or teammate allows you to out-play and pick up multiple kills.', 46, 31, '2017-12-24 17:16:39', '2017-12-24 17:16:39'),
(273, 'Transcendence puts you at CDR cap in the mid-game with just Morello''s and Zhonya''s enabling you to itemize into Magic Penetration early.', 46, 32, '2017-12-24 17:16:39', '2017-12-24 17:16:39'),
(274, 'Scorch empowers your ability to abuse your enemy laner in the early to mid game and press your lead. Heimer, like Teemo, is all about applying early pressure and not letting up.', 46, 35, '2017-12-24 17:16:39', '2017-12-24 17:16:39'),
(275, 'Zhonya''s is a key ingredient to Heimerdinger''s arsenal of items and Perfect timing allows you to hit that item power spike before your enemy knows what hit ''em.', 46, 55, '2017-12-24 17:16:39', '2017-12-24 17:16:39'),
(276, 'More CDR means more lane harass and more pressure on the enemy. The extra little bit of Summoner CDR also means when the enemy matches your Teleport top you''ll have the advantage when it comes back up.', 46, 59, '2017-12-24 17:16:39', '2017-12-24 17:16:39'),
(277, 'Arcane Comet can really shine on poke champions who are able to proc the effect from a long distance.', 47, 27, '2017-12-24 17:16:39', '2017-12-24 17:16:39'),
(278, 'Manaflow Band is what makes Xerath Support possible. His [Q] and [W] mana costs are extremely high with without Manaflow you''re going to struggle poking and harassing in lane.', 47, 30, '2017-12-24 17:16:39', '2017-12-24 17:16:39'),
(279, 'As an AP damage support you won''t be opting for nearly as many CDR items as you would otherwise. Transcendence allows you to still 30-40% CDR in teh mid-game while building more AP heavy items.', 47, 32, '2017-12-24 17:16:39', '2017-12-24 17:16:39'),
(280, 'Scorch is the bread-and-butter of Xerath support as it further empowers your poking and oppressive damage in lane.', 47, 35, '2017-12-24 17:16:39', '2017-12-24 17:16:39'),
(281, 'Magical Footwear is a valuable and safe rune option on nearly all champions (minus roaming supports), acting effectively as a kill''s worth of gold at 10mins.', 47, 56, '2017-12-24 17:16:39', '2017-12-24 17:16:39'),
(282, 'More CDR means more spell casts/poke and thus more lane harass, playing up on your strengths.', 47, 59, '2017-12-24 17:16:39', '2017-12-24 17:16:39'),
(283, 'Comet''s poking nature allows you to repeatedly proc Comet for additional harass damage. If procced with [W] or [E] you''re much more likely to Lane the Comet thanks to the slow/stun.', 48, 27, '2017-12-24 17:16:39', '2017-12-24 17:16:39'),
(284, 'Manaflow combined with Xerath''s passive provides you massive mana sustain. Xerath has massive mana costs on [Q] and [W] so make sure to use those abilities to get the refund.', 48, 30, '2017-12-24 17:16:39', '2017-12-24 17:16:39'),
(285, 'Transcendence allows Xerath to hit 30% CDR with Morello''s alone for a massively powerful mid-game poke and harass.', 48, 32, '2017-12-24 17:16:39', '2017-12-24 17:16:39'),
(286, 'Xerath excels at poking in lane and Scorch is the ultimate lane dominance rune. Combined with Comet, Scorch should easily put your target in Coup De Grace range very quickly.', 48, 35, '2017-12-24 17:16:39', '2017-12-24 17:16:39'),
(287, 'Triumph is an all-around solid rune choice on any champion. The extra heal on kill/assists allows you to continue on in fights.', 48, 6, '2017-12-24 17:16:39', '2017-12-24 17:16:39'),
(288, 'Coup De Grace is the go-to rune for mid-lane mages who are looking to pump out maximum damage to back-line targets.', 48, 11, '2017-12-24 17:16:39', '2017-12-24 17:16:39'),
(289, 'Nocturne can quickly and easily proc Electrocute on his ganks with an [R]->[E]->[Q] for massive burst and shred potential.', 49, 14, '2017-12-24 17:16:39', '2017-12-24 17:16:39'),
(290, 'Sudden Impact further empowers your ganks, granting you bonus Lethality when diving in with [R] so you''re capable of killing your target ASAP.', 49, 19, '2017-12-24 17:16:39', '2017-12-24 17:16:39'),
(291, 'Eyeball Collection is all about snowballing your lead from kills with [R]. Nocturne is also a natural builder of Duskblade and the ward sweeping nature of Duskblade empowers your ability pick up more stacks.', 49, 22, '2017-12-24 17:16:39', '2017-12-24 17:16:39'),
(292, 'The bonus Movement Speed from Relentless Hunter allows you to quickly get into position to react to a fight with a well-timed [R].', 49, 25, '2017-12-24 17:16:39', '2017-12-24 17:16:39'),
(293, 'The Ultimate Hat is the core of this setup, allowing you to keep your [R] on a cooldown of ~80s in the mid-game.', 49, 31, '2017-12-24 17:16:39', '2017-12-24 17:16:39'),
(294, 'Transcendence allows you to hit 40% CDR in the mid-game with just Duskblade and Ghostblade. ', 49, 32, '2017-12-24 17:16:39', '2017-12-24 17:16:39'),
(295, 'Nocturne synergizes well with Dark Harvest''s front-loaded burst and power-farming nature. He''s able to pick up a stack and effectively utilize it by getting into range of an [R]. The massive burst from your ganks with Dark Harvest makes kill on squishy targets very effective.', 50, 16, '2017-12-24 17:16:39', '2017-12-24 17:16:39'),
(296, 'Sudden Impact further empowers your ganks, granting you bonus Lethality when diving in with [R] so you''re capable of killing your target ASAP.', 50, 19, '2017-12-24 17:16:39', '2017-12-24 17:16:39'),
(297, 'Eyeball Collection is all about snowballing your lead from kills with [R]. Nocturne is also a natural builder of Duskblade and the ward sweeping nature of Duskblade empowers your ability pick up more stacks.', 50, 22, '2017-12-24 17:16:39', '2017-12-24 17:16:39'),
(298, 'The bonus Movement Speed from Relentless Hunter allows you to pick up a Dark Harvest stack and run to a lane to get into range of a well-timed [R].', 50, 25, '2017-12-24 17:16:39', '2017-12-24 17:16:39'),
(299, 'The bonus attack speed from Alacrity serves double-duty for Nocturne, allowing him a much faster clear (and more Dark Harvest stacks) with more auto attacks, and a healthier clear thanks to more passive procs.', 50, 8, '2017-12-24 17:16:39', '2017-12-24 17:16:39'),
(300, 'Coup De Grace is the go-to rune when looking to execute squishy champions. The bonus damage allows you to dive onto an enemy and kill them as quickly as possible.', 50, 11, '2017-12-24 17:16:39', '2017-12-24 17:16:39'),
(301, 'Aftershock''s massive addition of tankiness allows Ornn to dive into the enemy team during fights with [E] and absorb a ton of damage.', 51, 39, '2017-12-24 17:16:39', '2017-12-24 17:16:39'),
(302, 'Unflinching allows you to stick to enemy champions for a Brittle auto in fight fights. Ornn is incredibly susceptible to being kited before he can get into position for an [E] knock-up.', 51, 41, '2017-12-24 17:16:39', '2017-12-24 17:16:39'),
(303, 'AD Matchups: In tough ranged AD matchups (Jayce/Quinn) take Iron Skin to help you survive in lane.', 51, 44, '2017-12-24 17:16:39', '2017-12-24 17:16:39'),
(304, 'Revitalize''s bonus shielding is incredibly strong paired with the shield from Ornn''s [W], allowing you to absorb a lot more damage well timed well.', 51, 48, '2017-12-24 17:16:39', '2017-12-24 17:16:39'),
(305, 'Manaflow Band grants you the mana sustain you need to stay in lane as long as possible so that you''re able to effectively use your passive and abuse item power-spikes.', 51, 30, '2017-12-24 17:16:39', '2017-12-24 17:16:39'),
(306, 'Celerity''s bonus Movement Speed grants you the bonus speed necessary to stick your target in fights and position for a well-placed [E] knock-up.', 51, 33, '2017-12-24 17:16:39', '2017-12-24 17:16:39'),
(307, 'Like the old Grasp, but better. Ornn is always looking for auto attacks when trading because he want''s to proc his brittle.', 52, 38, '2017-12-24 17:16:39', '2017-12-24 17:16:39'),
(308, 'Ornn can quite easily apply Font to a large number of targets in teamfights with [Q], [E], and [R]. Stacking health will provide a lot of healing to teammates.', 52, 43, '2017-12-24 17:16:39', '2017-12-24 17:16:39'),
(309, 'As a top laner you''ll be building a lot of Armor and Magic Resist allowing granting Conditioning a lot of value in bonus resists.', 52, 46, '2017-12-24 17:16:39', '2017-12-24 17:16:39'),
(310, 'Lane sustain is the name of the game for Ornn because he doesn''t have to recall for items. Second Wind provides your needed health regen. after trades.', 52, 49, '2017-12-24 17:16:39', '2017-12-24 17:16:39'),
(311, 'Future''s Market pairs incredibly well with Ornn''s Passice allowing him to not only buy in lane, but also earlier than usual.', 52, 57, '2017-12-24 17:16:39', '2017-12-24 17:16:39'),
(312, 'Biscuits now provides a lot of health and mana regen allowing you to stay in lane even longer and press your lead.', 52, 54, '2017-12-24 17:16:39', '2017-12-24 17:16:39'),
(313, 'Press the Attack pairs well with Tristana''s [E], exposing the enemy after 3 auto attacks empowering her bomb explosion for massive burst.', 53, 2, '2017-12-24 17:16:39', '2017-12-24 17:16:39'),
(314, 'Triumph allows Trist to massively heal after every kill so she can reset her [W] and and jump to the next enemy champion to keep fighting.', 53, 6, '2017-12-24 17:16:39', '2017-12-24 17:16:39'),
(315, 'More Attack Speed means a faster and healthier jungle clear as well as a faster [E]/Press the Attack stack on ganks.', 53, 8, '2017-12-24 17:16:39', '2017-12-24 17:16:39'),
(316, 'Tristana jungle is all about jumping onto squishy targets and blowing them up so she can jump again. Coup De Grace helps you kill those squishies extra fast.', 53, 11, '2017-12-24 17:16:39', '2017-12-24 17:16:39'),
(317, 'Absolute Focus'' bonus AD when coming out of the jungle for a gank provides you with massive burst for a quick kill and reset on [W].', 53, 34, '2017-12-24 17:16:39', '2017-12-24 17:16:39'),
(318, 'Waterwalking allows you to take quick and early scuttle control thanks to your massive AD stacking early with Absolute Focus and Waterwalking.', 53, 36, '2017-12-24 17:16:39', '2017-12-24 17:16:39'),
(319, 'Attack Speed is the name of the game with Tristana and Lethal Tempo allows you to really embrace that. Pair it with her [Q] and you''ll be reaching incredibly high attack speed numbers early.', 54, 3, '2017-12-24 17:16:39', '2017-12-24 17:16:39'),
(320, 'Triumph is Dangerous Game on steroids, allowing you to push your limits in fights and reset, Rocket Jump in, and continue fighting healthily. Oh and bonus kill gold is nice too.', 54, 6, '2017-12-24 17:16:39', '2017-12-24 17:16:39'),
(321, 'Tristana is a heavily auto attack focused Marksman so more Attack Speed is always welcome.', 54, 8, '2017-12-24 17:16:39', '2017-12-24 17:16:39'),
(322, 'Tristana really wants to finish off her target ASAP so she is able to get the cooldown reset on her [W] and continue fighting or jump to safety. Coup De Grace help in that department.', 54, 11, '2017-12-24 17:16:39', '2017-12-24 17:16:39'),
(323, 'Because this Loadout features a lot of easy ways of getting Attack Speed, your build is open for an earlier Guardian Angel and Perfect timing effectively gives you free gold toward the item.', 54, 55, '2017-12-24 17:16:39', '2017-12-24 17:16:39'),
(324, 'Magical footwear is a great choice on any champion Loadout as it can be seen as simply earning 350g at level 10, which is always good (assuming you don''t like to rush early boots).', 54, 56, '2017-12-24 17:16:39', '2017-12-24 17:16:39'),
(325, 'Predator''s active Movement Speed buff synergizes incredibly well with Hecarim''s [E] and passive when looking to sprint into a lane for a gank.', 55, 15, '2017-12-24 17:16:39', '2017-12-24 17:16:39'),
(326, 'Hecarim can proc Sudden Impact upon landing [E] or dashing with [R]. The bonus Lethalty allows you to assassinate squishies as you dive the backline.', 55, 19, '2017-12-24 17:16:39', '2017-12-24 17:16:39'),
(327, 'Zombie Ward is a safe a reliable rune on every Jungle thanks to the nature of their vision control and ability to deep ward. ', 55, 20, '2017-12-24 17:16:39', '2017-12-24 17:16:39'),
(328, 'Relentless Hunter''s Movement Speed grants you the freedom to quickly get to any fight or lane and synergizes well with Predator, Celerity, and Waterwalking.', 55, 25, '2017-12-24 17:16:39', '2017-12-24 17:16:39'),
(329, 'Movement Speed means damage for Hecarim and Celerity doubles-down on that, empowering your passive, Predator, and Waterwalking.', 55, 33, '2017-12-24 17:16:39', '2017-12-24 17:16:39'),
(330, 'The bonus Movement Speed granted while in the river double dips with Celerity and Hecarim''s passive, allowing him to freely take early dragon and duel just about anyone.', 55, 36, '2017-12-24 17:16:39', '2017-12-24 17:16:39'),
(331, 'Unfortunately Garen doesn''t have any fantastic keystone choices, Grasp is just the best of the bad.', 56, 38, '2017-12-24 17:16:39', '2017-12-24 17:16:39'),
(332, 'The bonus tenacity and slow resistance will help you overcome Garen''s biggest pitfall of getting kited by CC and slows.', 56, 41, '2017-12-24 17:16:39', '2017-12-24 17:16:39'),
(333, 'Conditioning allows you to scale into the mid game as a very threatening tank.', 56, 46, '2017-12-24 17:16:39', '2017-12-24 17:16:39'),
(334, 'Second Wind synergizes incredibly well with Doran''s shield and Garen''s passive, allowing you to take numerous early trades and regen substantially.', 56, 49, '2017-12-24 17:16:39', '2017-12-24 17:16:39'),
(335, 'Triumph''s massive heal allows you to take the brunt of the enemy damage, as a front liner, and keep moving by picking up kills or an [R] execution.', 56, 6, '2017-12-24 17:16:39', '2017-12-24 17:16:39'),
(336, 'Coup De Grace''s execution nature synergizes very well with the execution damage pattern of Garen''s [R], securing kills that may otherwise not be possible.', 56, 11, '2017-12-24 17:16:39', '2017-12-24 17:16:39'),
(337, 'Guardian is often an underrated rune on tank junglers. Can be even better if your team has multiple tanks and you dive into fights together.', 57, 40, '2017-12-24 17:16:39', '2017-12-24 17:16:39'),
(338, 'There is some choice here between Demolish and Font of Life.', 57, 42, '2017-12-24 17:16:39', '2017-12-24 17:16:39'),
(339, 'More often than not taking Conditioning in the jungle is incredibly valuable option as you''re not pitted against a particular opponent.', 57, 46, '2017-12-24 17:16:39', '2017-12-24 17:16:39'),
(340, 'Mundo has an incredibly fast jungle clear and takes advantage of Overgrowth''s stacking nature more abruptly.', 57, 47, '2017-12-24 17:16:39', '2017-12-24 17:16:39'),
(341, 'Thanks to Mundo''s almost permanent slowing with [Q], Cheap Shot allows you to repeatedly proc the true damage and whittle away any opponent.', 57, 17, '2017-12-24 17:16:39', '2017-12-24 17:16:39'),
(342, 'The majority of Mundo''s damage comes in the form of abilities. [Q]s high base damage will provide a ton of healing and greatly improves your dueling/survivability.', 57, 23, '2017-12-24 17:16:39', '2017-12-24 17:16:39'),
(343, 'Rek''sai''s heavily auto-attack based damage pattern and ability to auto-reset with [Q] makes her a great user of Press the Attack. ', 58, 2, '2017-12-24 17:16:39', '2017-12-24 17:16:39'),
(344, 'Triumph allows you to dive deep into the backline with an [R] and get out safely if you execute them, thanks to the massive heal from Triumph.', 58, 6, '2017-12-24 17:16:39', '2017-12-24 17:16:39'),
(345, 'More Attack Speed on Rek''Sai mean a faster Press the Attack proc and a much faster/healthier jungle clear.', 58, 8, '2017-12-24 17:16:39', '2017-12-24 17:16:39'),
(346, 'Coup De Grace is a well-rounded reliable damage rune in this slot and synergizes insanely well with the execution of Rek''Sai''s [R].', 58, 11, '2017-12-24 17:16:39', '2017-12-24 17:16:39'),
(347, 'Transcendence allows you to hit 40% CDR with just Warrior Smite and Black Cleaver.', 58, 32, '2017-12-24 17:16:39', '2017-12-24 17:16:39'),
(348, 'Waterwalking allows you to take control of the river with faster scuttle kills and dragon control. If you find yourself in a skirmish in the river, the bonus AD will help you come out ahead.', 58, 36, '2017-12-24 17:16:39', '2017-12-24 17:16:39'),
(349, 'Nautilus is one of the premier users of Aftershock thanks to his numerous forms of CC. His passive, [Q], and [R] with all grant you the bonus Armor and MR for surviving trades/all-ins.', 59, 39, '2017-12-24 17:16:39', '2017-12-24 17:16:39'),
(350, 'Font of Life is a fantastic support Nautilus rune choice thanks to his ability to easily proc the effect on a large number of enemy champions in teamfights.', 59, 43, '2017-12-24 17:16:39', '2017-12-24 17:16:39'),
(351, 'Iron Skin is the defacto rune choice for melee supports as the early armor allows you to take trades in lane efficiently.', 59, 44, '2017-12-24 17:16:39', '2017-12-24 17:16:39'),
(352, 'Revitalize empowers your defensive utility as a support. The bonus healing/shielding applies to Font of Life, Redemption, Locket and your [W].', 59, 48, '2017-12-24 17:16:39', '2017-12-24 17:16:39'),
(353, 'Biscuit Delivery is a fantastic sustain option for tank champions in lane any. The Biscuit heals for a % of your missing health, so if you proc it in a fight when you''re relatively low you''ll gain massive regen.', 59, 54, '2017-12-24 17:16:39', '2017-12-24 17:16:39'),
(354, 'Celestial Body on Nautilus support allows you to tank the brunt of damage in early lane trades with your massive health pool. The extra health also slightly empowers your Font of Life healing and [W] shield.', 59, 61, '2017-12-24 17:16:39', '2017-12-24 17:16:39'),
(355, 'Press the Attack synergizes well with Kled''s [W], allowing you to use the first 3 auto attack to proc the exposure and the 4th empower auto to hit extra hard.', 60, 2, '2017-12-24 17:16:39', '2017-12-24 17:16:39'),
(356, 'Triumph is an all-around valuable rune for staying alive in teamfight. It allows you to dive for a kill, take a lot of damage, and continue fighting thanks to the heal.', 60, 6, '2017-12-24 17:16:39', '2017-12-24 17:16:39'),
(357, 'Kled''s entire kit is designed around empowering his ability to land more auto attacks. The more autos you can get off in a fight directly relates to how much damage you''re doing.', 60, 8, '2017-12-24 17:16:39', '2017-12-24 17:16:39'),
(358, 'Coup De Grace is a fantastic default damage rune in this slot that allows you to finish of low health targets much more reliably.', 60, 11, '2017-12-24 17:16:39', '2017-12-24 17:16:39'),
(359, 'Kled makes great use of Sudden Impact''s Lethality thanks to his ability to dash twice with [E]. If you hit your target with [E] and stagger the reactivation you can keep the Lethality buff active on yourself for 10s+.', 60, 19, '2017-12-24 17:16:39', '2017-12-24 17:16:39'),
(360, 'The primary purpose for Ingenious Hunter on Kled is to massively increase up-time of Titanic Hydra. With max stacks, Titanic Hydra is on a 12s cooldown, allowing you to use it multiple times in a fight.', 60, 24, '2017-12-24 17:16:39', '2017-12-24 17:16:39'),
(361, 'Electrocute is a fantastic assassination rune on Rengar thanks to his ability to almost instantly proc it with a Leap->[Q]->[W]. The extra burst allows you to secure your kills in a single rotation of spell.', 61, 14, '2017-12-24 17:16:39', '2017-12-24 17:16:39'),
(362, 'Sudden Impact is a no-brainer on Rengar. He is a natural abuser of dashes thanks to his passive. With good positioning around bushes you should be able to keep the buff active at all times granting you permanent free Lethality.', 61, 19, '2017-12-24 17:16:39', '2017-12-24 17:16:39'),
(363, 'Zombie Ward is a safe a reliable rune on every Jungle thanks to the nature of their vision control and ability to deep ward. ', 61, 20, '2017-12-24 17:16:39', '2017-12-24 17:16:39'),
(364, 'Relentless Hunter is a massive buff to Rengar''s [R], allow you to travel much further distances with just a few stacks. The bonus Movement Speed also allows you to get around the map to meet fights in a timely manner.', 61, 25, '2017-12-24 17:16:39', '2017-12-24 17:16:39'),
(365, 'Rengar becomes a scary threat when he is ahead and his [R] is up. More chances to cast [R] means more kills and that''s what Rengar is all about.', 61, 31, '2017-12-24 17:16:39', '2017-12-24 17:16:39'),
(366, 'Transcendence allows you to build Black Cleaver and Lethality items freely without fear of wasting gold on over-capping CDR.', 61, 32, '2017-12-24 17:16:39', '2017-12-24 17:16:39'),
(367, 'Press the Attack allows Aatrox to take short trades for burst and exit to out-sustain his lane opponent. The expose damage also synergies well with his [W] empowered damage.', 62, 2, '2017-12-24 17:16:39', '2017-12-24 17:16:39'),
(368, '', 62, 6, '2017-12-24 17:16:39', '2017-12-24 17:16:39'),
(369, 'As an auto attack focused carry top, more Attack Speed means more damage (and more healing with [W]).', 62, 8, '2017-12-24 17:16:39', '2017-12-24 17:16:39'),
(370, 'Coup De Grace is a solid all-around damage rune choice, allowing you to out trade and sustain your lane opponent to keep them in kill range.', 62, 11, '2017-12-24 17:16:39', '2017-12-24 17:16:39'),
(371, 'Sudden Impact synergizes well with Aatrox''s all-in/dive play pattern, empowering the damage of his [Q], Autos, and [E]. The bonus Magic Penetration also slightly empowers his [R] damage.', 62, 19, '2017-12-24 17:16:39', '2017-12-24 17:16:39'),
(372, 'A few stack of Relentless Hunter allows you to roam the map and find dives with your passive.', 62, 25, '2017-12-24 17:16:39', '2017-12-24 17:16:39'),
(373, 'The bonus exposure damage from Press the Attack further empowers your auto attacks and lets you deal immense ramping damage in extended duels.', 63, 2, '2017-12-24 17:16:39', '2017-12-24 17:16:39'),
(374, 'Triumph is an all-around solid rune choice. In 2v2s and 2v1s, the extra healing can be enough to grant you the ability to sustain and move on to the next target.', 63, 6, '2017-12-24 17:16:39', '2017-12-24 17:16:39'),
(375, 'The majority of Irelia''s damage comes in the form of her Auto Attacks thanks to her [W]. Alacrity grants you the opportunity for an additional 1-2 autos when the enemy is stunned with [E]', 63, 8, '2017-12-24 17:16:39', '2017-12-24 17:16:39'),
(376, 'Coup De Grace allows Irelia to continue chipping away at her target until their life bar is fully depleted.', 63, 11, '2017-12-24 17:16:39', '2017-12-24 17:16:39'),
(377, 'Second Wind is a fantastic mid-fight sustain rune when taking small-medium trades in lane. It allows you to stay healthy as you beat on your target.', 63, 49, '2017-12-24 17:16:39', '2017-12-24 17:16:39'),
(378, 'Iron Skin is a great rune for early-game dueling power. The bonus armor is extra beneficial with the healing from your [W] and sustain from Second Wind.', 63, 44, '2017-12-24 17:16:39', '2017-12-24 17:16:39'),
(379, 'The bonus exposure damage from Press the Attack further empowers her True Damage auto attacks and lets her deal immense damage in duels.', 64, 2, '2017-12-24 17:16:39', '2017-12-24 17:16:39'),
(380, 'Overheal is a rune that synergizes well with Irelia''s healing from [W] and [R] and the Life Steal from Botrk, to keep her topped off with a shield.', 64, 5, '2017-12-24 17:16:39', '2017-12-24 17:16:39'),
(381, 'Tenacity is a great stat on Irelia so she can stick to her target and continue building up auto attacks.', 64, 9, '2017-12-24 17:16:39', '2017-12-24 17:16:39'),
(382, 'Coup De Grace allows Irelia to continue chipping away at her target until their life bar is fully depleted.', 64, 11, '2017-12-24 17:16:39', '2017-12-24 17:16:39'),
(383, 'Irelia can regularly proc Sudden Impact with [Q] to sustain the Lethality buff and kill her target while you chases them down.', 64, 19, '2017-12-24 17:16:39', '2017-12-24 17:16:39'),
(384, 'Zombie Ward is a solid vision option for further empowering the vision from your Trinket wards.', 64, 20, '2017-12-24 17:16:39', '2017-12-24 17:16:39'),
(385, 'If you''re able to cast [Q] on an enemy before, or shortly after, dealing damage the Movement Speed slow on the fear is enough to make the Comet undodgeable. ', 65, 27, '2017-12-24 17:16:39', '2017-12-24 17:16:39'),
(386, 'Fiddle''s ganking potential when his [R] is down is next-to-none. The more your [R] is off of cooldown the more opportunities you have for ganks and kills.', 65, 31, '2017-12-24 17:16:39', '2017-12-24 17:16:39'),
(387, 'Fiddle typically wants to start building in AP itemization as quickly as he can. With Transcendence your mid-game scales decently as you can start building full AP after completing Zhonya''s.', 65, 32, '2017-12-24 17:16:39', '2017-12-24 17:16:39'),
(388, 'Gathering Storm is your late-game insurance policy as Fiddle''s [R] has a reasonably good AP ratio and scales well to win your team teamfights.', 65, 37, '2017-12-24 17:16:39', '2017-12-24 17:16:39'),
(389, 'Perfect Timing allows you the freedom of hard engages early with the safety of Stopwatch and an efficient mid-game with a cheaper buy on Zhonya''s.', 65, 55, '2017-12-24 17:16:39', '2017-12-24 17:16:39'),
(390, 'Cosmic Insight is an all-around solid rune on any champion in any position. The summoner CDR gives you a few more Flashes for engage and a number of more Smite opportunities.', 65, 59, '2017-12-24 17:16:39', '2017-12-24 17:16:39'),
(391, 'Aftershock is the go-to rune on any engage tank. After jumping in with [E], the bonus Armor and MR allows your to survive the engage while sticking to your target and CCing them.', 66, 39, '2017-12-24 17:16:39', '2017-12-24 17:16:39'),
(392, 'Unflinching allows you to continue to stick to your target after jumping in. After Zac has engaged with[E], it can be difficult to stay on top of enemy champions and spam [W] (your primary source damage).', 66, 41, '2017-12-24 17:16:39', '2017-12-24 17:16:39'),
(393, 'Conditioning scales well with Aftershock, as both of them buff each other. The bonus resist from Aftershock make Conditioning stronger, and Conditioning resists after 10mins make Aftershock stronger.', 66, 46, '2017-12-24 17:16:39', '2017-12-24 17:16:39'),
(394, 'Zac does a lot of natural self healing when he pick ups his bobs. Revitalize empowers your jungle clear with a much healthier first clear.', 66, 48, '2017-12-24 17:16:40', '2017-12-24 17:16:40'),
(395, 'Transcendence allows you to bypass early game CDR for more defensive based items (Randuins etc.) while still granting you the CDR for [W] spam and CC lockup.', 66, 32, '2017-12-24 17:16:40', '2017-12-24 17:16:40'),
(396, 'Scorch heavily empowers your early to mid game ganks opening the opportunity for snowballing lanes.', 66, 35, '2017-12-24 17:16:40', '2017-12-24 17:16:40'),
(397, 'Arcane Comet is a relatively abusable keystone for Lissandra thanks to the very short cooldown and slow on [Q]. [Q] harass with Comet and Scorch will result in a lot of chip damage during lane.', 67, 27, '2017-12-24 17:16:40', '2017-12-24 17:16:40'),
(398, 'The Ultimate Hat grants Lissandra fantastic safety and kill pressure. At 45% CDR and max Hat stacks, your ult is down to 32s.', 67, 31, '2017-12-24 17:16:40', '2017-12-24 17:16:40'),
(399, 'Absolute Focus empowers your ability to harass in lane with long range [Q]s through the minion wave for even more empowered damage.', 67, 34, '2017-12-24 17:16:40', '2017-12-24 17:16:40'),
(400, 'Scorch is a fantastic lane harass rune, and pairs incredibly well with Aery to keep the pressure up.', 67, 35, '2017-12-24 17:16:40', '2017-12-24 17:16:40'),
(401, 'Biscuit Delivery is a great rune in match-ups where you''re intending to sustain in lane for larger back timings. If timed well (when low health) in fights, the massive sustain can be the difference between life and death.', 67, 54, '2017-12-24 17:16:40', '2017-12-24 17:16:40'),
(402, 'Future''s Market on Lissandra allows you to hit an earlier Rod of Ages purchase to begin stacking sooner than normal, making your mid game incredibly strong if you''re not behind..', 67, 57, '2017-12-24 17:16:40', '2017-12-24 17:16:40'),
(403, 'Draven benefits massively from the bonus exposure damage of Press the Attack paired with his [Q] for ending people''s lives in a heartbeat.', 68, 2, '2017-12-24 17:16:40', '2017-12-24 17:16:40'),
(404, 'Taking Triumph lets you fight to the death and hold your group for the kill, coming out the other side with massive health to keep fighting.', 68, 6, '2017-12-24 17:16:40', '2017-12-24 17:16:40'),
(405, 'Bloodline synergizes incredibly well with Draven bonus damage on [Q] and the exposure damage of Press the Attack, allowing you to duel and sustain in lane.', 68, 10, '2017-12-24 17:16:40', '2017-12-24 17:16:40'),
(406, 'The bonus damage on Coup De Grace allows you exert your dominance over bot lane and snowball by executing low health targets.', 68, 11, '2017-12-24 17:16:40', '2017-12-24 17:16:40'),
(407, 'Celerity''s bonus Movment Speed grants you a little freedom in catching axes. At also allows your [W] to become a small AD steroid.', 68, 33, '2017-12-24 17:16:40', '2017-12-24 17:16:40'),
(408, 'Gathering Storm is your late game insurance policy on damage. Draven is not typically an AD Carry that scales well into the late game, but Gathering Storm helps patch up some of those issues.', 68, 37, '2017-12-24 17:16:40', '2017-12-24 17:16:40'),
(409, 'Draven benefits massively from the bonus exposure damage of Press the Attack paired with his [Q] for ending people''s lives in a heartbeat.', 69, 2, '2017-12-24 17:16:40', '2017-12-24 17:16:40'),
(410, 'Draven''s itemization tends to lean heavy on Life Steal thanks to his [Q]s damage, allowing him to keep an Overheal shield up very reliably.', 69, 5, '2017-12-24 17:16:40', '2017-12-24 17:16:40'),
(411, 'Bloodline further allows you to keep a healthy Overheal shield up as well as synergizing well with his already heavy Life Steal itemization.', 69, 10, '2017-12-24 17:16:40', '2017-12-24 17:16:40'),
(412, 'Draven is all about ending squishy target''s lives as soon as possible and Coup De Grace''s execution damage makes his [Q] damage insane.', 69, 11, '2017-12-24 17:16:40', '2017-12-24 17:16:40'),
(413, 'Combined with Life Steal and Overheal, Taste of Blood lets you take a lot of early skirmish fights for lane control.', 69, 18, '2017-12-24 17:16:40', '2017-12-24 17:16:40'),
(414, 'Draven loves nothing more to snowball and continue to spiral the game off kills. Eyeball Collection grants you even more AD for those kills.', 69, 22, '2017-12-24 17:16:40', '2017-12-24 17:16:40'),
(415, 'Aery is a fantastic lane harass rune for Pantheon. Spamming [Q] in lane will repeatedly proc Aery for bonus Magic damage, and your all-ins will result in multiple procs thanks to your close range.', 70, 26, '2017-12-24 17:16:40', '2017-12-24 17:16:40'),
(416, 'Manaflow Band acts as your primary source of mana regen so that you can harass constantly with [Q].', 70, 30, '2017-12-24 17:16:40', '2017-12-24 17:16:40'),
(417, 'Celerty''s bonus Movement Speed allows you to chase down your target and keep in range for [Q]s and [W].', 70, 33, '2017-12-24 17:16:40', '2017-12-24 17:16:40'),
(418, 'Along with Aery, Scorch is a fantastic rune for lane harass and poke. The extra bit of damage can easily be enough to determine the difference between a kill and survival.', 70, 35, '2017-12-24 17:16:40', '2017-12-24 17:16:40'),
(419, 'Sudden Impact empowers your all-in combo, as you [W] acts as a dash. The bonus Lethality pushes your Aery, Scorch, and ability damage into kill threat.', 70, 19, '2017-12-24 17:16:40', '2017-12-24 17:16:40'),
(420, 'Pantheon often plays as a bit of a cheese pick, looking to assassinate and snowball to a victory. His late game falls off incredibly hard and Eyeball Collection lets you play up on further empowering an aggressive early game.', 70, 22, '2017-12-24 17:16:40', '2017-12-24 17:16:40'),
(421, 'Arcane Comet is a solid offensive rune choice for Jhin thanks to its high Bonus AD scaling. If procced when using [W] for a root or [R], it''s almost guaranteed to hit.', 71, 27, '2017-12-24 17:16:40', '2017-12-24 17:16:40'),
(422, 'Manaflow Band provides you the mana sustain so you can start Doran''s Blade instead of the typical Doran''s Ring.', 71, 30, '2017-12-24 17:16:40', '2017-12-24 17:16:40'),
(423, 'Jhin is one of the fastest moving AD Carries in the game thanks to his passive, Zeal stacking, and tendency to build Ghostblade allowing you to position better for your 4th shot.', 71, 33, '2017-12-24 17:16:40', '2017-12-24 17:16:40'),
(424, 'Scorch is an all-around solid lane harass rune. You should be able to proc it relatively easily with [Q] or [W].', 71, 35, '2017-12-24 17:16:40', '2017-12-24 17:16:40'),
(425, 'Biscuit Delivery offer you an immense amount of health sustain during the laning phase to help you overcome to sometime oppressive amounts of poke and harass in the early game.', 71, 54, '2017-12-24 17:16:40', '2017-12-24 17:16:40'),
(426, 'Cosmic Insight''s extra bit of CDR helps to empower your role as a long range utility AD Carry.', 71, 59, '2017-12-24 17:16:40', '2017-12-24 17:16:40'),
(427, 'Jhin loves the healing from Fleet Footwork for sustain, but the movement speed to get into 4th shot range is the real kicker here.', 72, 4, '2017-12-24 17:16:40', '2017-12-24 17:16:40'),
(428, 'Thanks to Fleet Footwork it''s quite easy to gain a reliable shield to keep you healthy in small trades.', 72, 5, '2017-12-24 17:16:40', '2017-12-24 17:16:40'),
(429, 'Attack Speed on Jhin acts as a great AD multiplier, combined with Absolute Focus and Gathering Storm', 72, 8, '2017-12-24 17:16:40', '2017-12-24 17:16:40'),
(430, 'Jhin''s 4th shot execution damage pattern screams for you to take Coup De Grace so you can quickly and painless execute your target.', 72, 11, '2017-12-24 17:16:40', '2017-12-24 17:16:40'),
(431, 'Flat Attack Damage on Jhin scales incredibly well with the attack speed multiplier on his passive, and Absolute Focus grants us just that.', 72, 34, '2017-12-24 17:16:40', '2017-12-24 17:16:40'),
(432, 'With Jhin''s passive acting as an Attack Damage modifier, you''ll be hitting insane AD numbers in the late game.', 72, 37, '2017-12-24 17:16:40', '2017-12-24 17:16:40'),
(433, 'The key to this build is lane pressure and roaming. Spellbook plus Cosmic Insight allows you to keep your Teleport on a short cooldown so you''re able to shove lane and roam.', 73, 50, '2017-12-24 17:16:40', '2017-12-24 17:16:40'),
(434, 'Zhonya''s and Zilean''s [R] grant numerous chances to minimize positioning mistakes.', 73, 55, '2017-12-24 17:16:40', '2017-12-24 17:16:40'),
(435, 'Minion Dematerialzer plays a key role in being able to keep the lane pressure/wave clear up so you''re able to leave lane and find ganks or fights with your jungler.', 73, 58, '2017-12-24 17:16:40', '2017-12-24 17:16:40'),
(436, 'With Zilean''s only damage ability being [Q], he heavily relies on the bonus CDR. The extra bit of Summoner CDR also means more TP pressure and Flash safety.', 73, 59, '2017-12-24 17:16:40', '2017-12-24 17:16:40'),
(437, 'At level 16 Zilean''s [R] is already pretty short. With max Ultimate Hat stacks that puts you at a 24s cooldown [R] heading into the mid game.', 73, 31, '2017-12-24 17:16:40', '2017-12-24 17:16:40'),
(438, 'Transcendence allows you to go Morello''s and Lucidity as your only 2 CDR items, while still hitting cap.', 73, 32, '2017-12-24 17:16:40', '2017-12-24 17:16:40'),
(439, 'Yorick''s trading/fighting pattern relies heavily on [Q], therefore auto attacks. Grasp''s heal and bonus damage keep you healthy and empower longer duration duels.', 74, 38, '2017-12-24 17:16:40', '2017-12-24 17:16:40'),
(440, 'Demolish empowers and emphasizes Yorick''s ability to split push and shred towers. If you''re left alone by the enemy team you''ll have the ability to take several towers if not responded to.', 74, 42, '2017-12-24 17:16:40', '2017-12-24 17:16:40'),
(441, 'Conditioning is the greedy rune in this slot. Yorick has strong early laning if you play around your Ghouls well allowing you to pressure safely without the early resists.', 74, 46, '2017-12-24 17:16:40', '2017-12-24 17:16:40'),
(442, 'Second Wind is the rune of choice in this slot if you''re looking to fight and take a lot of trades during lane.', 74, 49, '2017-12-24 17:16:40', '2017-12-24 17:16:40'),
(443, 'Every point of Tenacity that you can pick up further empowers your ability to deal damage due to your lack of mobility and having to just run at the enemy.', 74, 9, '2017-12-24 17:16:40', '2017-12-24 17:16:40'),
(444, 'Yorick does an impressive and unexpected amount of damage. Coup De Grace lets you put that damage to good use to secure kills.', 74, 11, '2017-12-24 17:16:40', '2017-12-24 17:16:40'),
(445, 'Lethal Tempo allows Xayah to get out her stacked feathers as fast as possible for a bigger [E].', 75, 3, '2017-12-24 17:16:40', '2017-12-24 17:16:40'),
(446, 'Triumph allows you to hold your ground in fights to continue dishing out damage after a kill/assist. ', 75, 6, '2017-12-24 17:16:40', '2017-12-24 17:16:40'),
(447, 'The bonus Attack Speed allows you to get more feathers out in a a close all-in kiting fight so that you''re able to secure the kill.', 75, 8, '2017-12-24 17:16:40', '2017-12-24 17:16:40'),
(448, 'Coup De Grace is an all-around reliable source of damage when looking trying to kill squishy targets with [E].', 75, 11, '2017-12-24 17:16:40', '2017-12-24 17:16:40'),
(449, 'Xayah is an AD Carry who heavily prioritizes CDR in the form of Essence Reaver so that you''re able to [E] multiple times in a fight and [R] more often for safety.', 75, 32, '2017-12-24 17:16:40', '2017-12-24 17:16:40'),
(450, 'Gathering Storm is your late-game insurance policy. If you can make it to 30mins+ this rune starts becoming a massive source of damage.', 75, 37, '2017-12-24 17:16:40', '2017-12-24 17:16:40'),
(451, 'The bonus damage on an exposed enemy from Press the Attack synergies very well with Xayah''s [W] bonus damage.', 76, 2, '2017-12-24 17:16:40', '2017-12-24 17:16:40'),
(452, 'Overheal is an all-around great rune choices on most AD Carries. The shield while small, negates a lot of damage over the course of the game.', 76, 5, '2017-12-24 17:16:40', '2017-12-24 17:16:40'),
(453, 'Attack Speed and more attack speed. Every AD Carry''s dream.', 76, 8, '2017-12-24 17:16:40', '2017-12-24 17:16:40'),
(454, 'Combine the bonus damage from Press the Attack, Xayah''s [W], and this rune, you''ll be shredding enemies regardless of their health.', 76, 12, '2017-12-24 17:16:40', '2017-12-24 17:16:40'),
(455, 'Xayah loves CDR as her primary damage source comes from using abilities to get feathers out.', 76, 32, '2017-12-24 17:16:40', '2017-12-24 17:16:40'),
(456, 'Thanks to having an un-targetable [R], you''re able to opt into a more offensive rune choice in this slot and Gathering Storm provides a whole lot of that.', 76, 37, '2017-12-24 17:16:40', '2017-12-24 17:16:40'),
(457, 'Nidalee often acts a lot like an assassin, wanting to land a spear and blow up her target quickly. A Spear->Pounce->Swipe will instantly proc the Electro cute for a ton of damage.', 77, 14, '2017-12-24 17:16:40', '2017-12-24 17:16:40'),
(458, 'Nidalee''s high mobility with Pounce allows her to keep the Magic Penetration and Lethality buff up at almost all times.', 77, 19, '2017-12-24 17:16:40', '2017-12-24 17:16:40'),
(459, 'As an assassin, you''re wanting to pick up kills around the map from as early in the game as you can. Doubling down on that, we can take Eyeball here for even more power to snowball.', 77, 22, '2017-12-24 17:16:40', '2017-12-24 17:16:40'),
(460, 'Nidlee is a Jungler who excels at clearing her jungle insanely quickly and getting around the map to find any fight she wants.', 77, 25, '2017-12-24 17:16:40', '2017-12-24 17:16:40'),
(461, 'Celerity synergizes pretty well with Nidalee''s passive, granting you more AP when entering a bush. The bonus Movement Speed also furthers your ability to get to fights anywhere on the map.', 77, 33, '2017-12-24 17:16:40', '2017-12-24 17:16:40'),
(462, 'Waterwalking is one of the highest value runes if you can take advantage of and abuse it while in the river. ', 77, 36, '2017-12-24 17:16:40', '2017-12-24 17:16:40'),
(463, 'Aery is taken here for it''s reliability and chip damage when trading with [Q]. ', 78, 26, '2017-12-24 17:16:40', '2017-12-24 17:16:40'),
(464, 'Nullifying Orb lets you take aggressive trades/fights into high-threat AP mages during laning phase.', 78, 29, '2017-12-24 17:16:40', '2017-12-24 17:16:40'),
(465, 'In the mid to late game, Viktor has a nearly constant haste thanks to his empowered [Q]. The bonus Movement Speed from [Q] will grant you a bit of an AP steroid.', 78, 33, '2017-12-24 17:16:40', '2017-12-24 17:16:40'),
(466, 'Combined with Aery, Scorch is a great rune for taking small trades and chipping away at the enemy in lane.', 78, 35, '2017-12-24 17:16:40', '2017-12-24 17:16:40'),
(467, 'Future''s Market plays a huge role in overcoming Viktor''s pain points of rough buy-timings when rushing his Hex Core upgrades.', 78, 57, '2017-12-24 17:16:40', '2017-12-24 17:16:40'),
(468, 'Biscuit Delivery provides a great amount of sustain during lane so you can more reliably back on better buy-timings.', 78, 54, '2017-12-24 17:16:40', '2017-12-24 17:16:40'),
(469, 'This rune setup is all about hitting item power-spikes as soon as possible and the bonus gold you get some Klepto can pay itself off insanely quickly if you''re playing into an easy melee support lane.', 79, 52, '2017-12-24 17:16:40', '2017-12-24 17:16:40');
INSERT INTO `keystones_why` (`id`, `stone_why`, `builds_id`, `keystones_id`, `created_at`, `updated_at`) VALUES
(470, 'We are looking to save and earn as much gold as we possibly can with this setup and Biscuits (combined with Klepto) allows us to rely on these for sustain, saving you 100s of gold to put into other items.', 79, 54, '2017-12-24 17:16:40', '2017-12-24 17:16:40'),
(471, 'Continuing the pattern, Magical Footwear is just another source of raw gold income in the form of frugality.', 79, 56, '2017-12-24 17:16:40', '2017-12-24 17:16:40'),
(472, 'Cosmic Insight is simply an overall fantastic rune choice on any champion in the game, but especially supports as they can make great use of the extra item CDR.', 79, 59, '2017-12-24 17:16:40', '2017-12-24 17:16:40'),
(473, 'You''re looking to poke and harass a lot with [Q]->auto in lane, for both pressure as well as Kleptomancy procs. To keep this up and earn as much gold as possible, you''re going to need the mana sustain.', 79, 30, '2017-12-24 17:16:40', '2017-12-24 17:16:40'),
(474, 'Because this loadout focuses heavily on [Q] spam and poke in lane, Scorch is a natural option to further empower that damage and keep the pressure up.', 79, 35, '2017-12-24 17:16:40', '2017-12-24 17:16:40'),
(475, 'Summon Aery is a great option for Sona both offensively (with autos and [Q]) and defensively (with [W]). ', 80, 26, '2017-12-24 17:16:40', '2017-12-24 17:16:40'),
(476, 'Manaflow Band is a great option here for Sona because you''re going to want to  play aggressively in lane early spamming [Q].', 80, 30, '2017-12-24 17:16:40', '2017-12-24 17:16:40'),
(477, 'Like all support Transcendence is the best option here as it scales really well with your itemization.', 80, 32, '2017-12-24 17:16:40', '2017-12-24 17:16:40'),
(478, 'Scorch allows you to dominate the lane phase if you''re able to consistently poke with your [Q].', 80, 35, '2017-12-24 17:16:40', '2017-12-24 17:16:40'),
(479, 'To key to being a useful support is effective warding and Zombie Ward shines in this department keeping vision up for you even more.', 80, 20, '2017-12-24 17:16:40', '2017-12-24 17:16:40'),
(480, 'Sona''s itemization is ripe for active items (Locket, Redemption, etc.). Pair Ingenious Hunter''s item CDR with Ruby Sightstone and you''ll be able to spam your items.', 80, 24, '2017-12-24 17:16:40', '2017-12-24 17:16:40'),
(481, 'Tahm''s incredibly strong slow on [Q] allows him to chase down and trade incredibly well in lane with auto attacks. The stacking health on Grasp further empowers his passive. ', 81, 38, '2017-12-24 17:16:40', '2017-12-24 17:16:40'),
(482, 'Tahm''s biggest downfall is how incredibly immobile and prone to CC/slowing he is. The bonus Tenacity/Slow Resist makes you incredibly hard to het away from once you have Righteous Glory and Mercury''s Treads.', 81, 41, '2017-12-24 17:16:40', '2017-12-24 17:16:40'),
(483, 'This slot is highly dependent on lane matchup and enemy composition. If you think you can get away with an easy lane (Maokai etc.) you can opt for a greedier choice in Conditioning.', 81, 44, '2017-12-24 17:16:40', '2017-12-24 17:16:40'),
(484, 'Overgrowth is a rune that allows Tahm to scale, both defensively and offensively, incredibly well. The bonus stacking health further empowers your autos and abilities thanks to Tahm''s Passive.', 81, 47, '2017-12-24 17:16:40', '2017-12-24 17:16:40'),
(485, 'Triumph is a rune that is deceptively good in it''s ability to sustain in teamfights. If you''re playing frontline and soaking damage, picking up assists will massively heal you to keep moving forward.', 81, 6, '2017-12-24 17:16:40', '2017-12-24 17:16:40'),
(486, 'Especially during the laning phase, Tahm relies heavily on the ability to take trades by getting as many autos off as possible. The faster autos means more damage from passive, Grasp, and faster passive stacks.', 81, 8, '2017-12-24 17:16:40', '2017-12-24 17:16:40'),
(487, 'Guardian on Tahm allows him to eat a teammate that is about to take damage, shield, and gain the bonus Movement Speed to allow him to run away and re-position to spit them out.', 82, 40, '2017-12-24 17:16:40', '2017-12-24 17:16:40'),
(488, 'Like Braum, the combination of [Q] slow and Tahm''s natural health stacking allows you to provide decent healing in lane fights.', 82, 43, '2017-12-24 17:16:40', '2017-12-24 17:16:40'),
(489, 'The Armor and Magic Resist of Conditioning pairs very well with champions who buy an early Locket to make for a strong mid-game teamfight.', 82, 46, '2017-12-24 17:16:40', '2017-12-24 17:16:40'),
(490, 'Revitalize synergizes well with Tahm''s passive shield, FotM, Locket, and healing from Redemption.', 82, 48, '2017-12-24 17:16:40', '2017-12-24 17:16:40'),
(491, 'Approach Velocity is a great rune on Tahm to assist getting into range to [W] a CCed teammate, and for follow-up chase and damage on an enemy you have hit with [Q].', 82, 60, '2017-12-24 17:16:40', '2017-12-24 17:16:40'),
(492, 'Biscuit Delivery allows you to sustian through tough poke lane that might abuse your short range during the laning phase.', 82, 54, '2017-12-24 17:16:40', '2017-12-24 17:16:40'),
(493, 'This build is ALL ABOUT flashing in with your ultimate and blowing people up. The 25% summoner CDR + Cosmic Insight puts Flash on a 180s cooldown.', 83, 50, '2017-12-24 17:16:40', '2017-12-24 17:16:40'),
(494, 'Perfect Timing gives you the safety of a large 5-man Flash->[R] without having to worry about getting blown up.', 83, 55, '2017-12-24 17:16:40', '2017-12-24 17:16:40'),
(495, '', 83, 57, '2017-12-24 17:16:40', '2017-12-24 17:16:40'),
(496, 'More Summoner CDR means more Flash all-ins.', 83, 59, '2017-12-24 17:16:40', '2017-12-24 17:16:40'),
(497, 'Kennen is all about his [R], and this loadout in particular places heavy emphasis on spamming [R] and abusing your low Summoner cooldowns to take big teamfights immediately.', 83, 31, '2017-12-24 17:16:40', '2017-12-24 17:16:40'),
(498, 'Celerity actually synergizes incredibly well with Kennen''s kit. The bonus Movement Speed from [E] grants you a burst of extra Ability Power during your [R] all-ins.', 83, 33, '2017-12-24 17:16:40', '2017-12-24 17:16:40'),
(499, 'Urgot is a fantastic user of Press the Attack because he is able to almost instantly proc the exposure damage with [W], allowing the rest of his follow-up damage to shred his target.', 84, 2, '2017-12-24 17:16:40', '2017-12-24 17:16:40'),
(500, 'Urgot is a great lane duelist and Triumph allows you to potentially take a 1v2 against the enemy Jungler, executing the low target with [R], and moving on the kill the other.', 84, 6, '2017-12-24 17:16:40', '2017-12-24 17:16:40'),
(501, 'Hard CC is Urgot''s biggest proponent holding him back from killing everyone and every thing. More Tenacity will allow you to stick to your target and execute them.', 84, 9, '2017-12-24 17:16:40', '2017-12-24 17:16:40'),
(502, 'Coup De Grace is a rune designed to execute, allowing you to quickly get into execution range of your [R].', 84, 11, '2017-12-24 17:16:40', '2017-12-24 17:16:40'),
(503, 'The bonus Movement Speed of Celerity massively empowers your ability to dance around your target during [W] and proc every leg.', 84, 33, '2017-12-24 17:16:40', '2017-12-24 17:16:40'),
(504, 'More [R]s means more opportunity to snowball a lead and execute targets on cooldown.', 84, 31, '2017-12-24 17:16:40', '2017-12-24 17:16:40'),
(505, 'Predator on Quinn combined with the Movement Speed from her [R] makes her an incredibly scary threat across the entire map.', 85, 15, '2017-12-24 17:16:40', '2017-12-24 17:16:40'),
(506, 'Quinn can make great use of the bonus Lethality when using [E] to blow up her target.', 85, 19, '2017-12-24 17:16:40', '2017-12-24 17:16:40'),
(507, 'This build on Quinn is all about zooming around the map and picking up a ton of kills. Eyeball Collection pays off handsomely granting you plenty of damage from all of these kills.', 85, 22, '2017-12-24 17:16:40', '2017-12-24 17:16:40'),
(508, 'More Movement Speed means getting back to lane quicker and putting pressure on any lane when you''re not seen by the enemy vision. Roam a LOT.', 85, 25, '2017-12-24 17:16:40', '2017-12-24 17:16:40'),
(509, 'This rune setup on Quinn is all about Movement Speed and getting around the map to find kills. Celerity''s synergy with Predator, Relentless Hunter, and your [R] gives you a ton of AD to blow up your target.', 85, 33, '2017-12-24 17:16:40', '2017-12-24 17:16:40'),
(510, 'Nullifying orb is a stylistic choice here and a very flexible slot. ', 85, 29, '2017-12-24 17:16:40', '2017-12-24 17:16:40'),
(511, 'As an artillery mage, Ziggs is able to repeatedly proc Comet from safety. His low cooldown on [Q] also allows him to refresh the Comet cooldown quickly.', 86, 27, '2017-12-24 17:16:40', '2017-12-24 17:16:40'),
(512, 'Ziggs is a champion who can apply a lot of lane pressure with [Q] harass and Scorch procs. Manaflow Band gives you the mana sustain to keep up the pressure.', 86, 30, '2017-12-24 17:16:40', '2017-12-24 17:16:40'),
(513, 'With Transcendence you''re able to hit 40% CDR with just Morello''s and Lich Bane. With such a low CD on [Q] you can shred towers with your passive, Lich Bane, and [W].', 86, 32, '2017-12-24 17:16:40', '2017-12-24 17:16:40'),
(514, 'Between frequent comet procs and Scorch, Ziggs can can rain down lane pressure from afar with accurate [Q]s.', 86, 35, '2017-12-24 17:16:40', '2017-12-24 17:16:40'),
(515, 'More CDR means more harass and more passive procs on towers for that juicy [W] tower execution.', 86, 59, '2017-12-24 17:16:40', '2017-12-24 17:16:40'),
(516, 'Biscuits are a great rune choice for lane sustain as well as providing a bit extra mana for all that harass you''ll be spittin'' out.', 86, 54, '2017-12-24 17:16:40', '2017-12-24 17:16:40'),
(517, 'They key to success with Summon Aery on Zyra is to abuse it''s short cooldown through the use of constantly plant attacks and your long range autos.', 87, 26, '2017-12-24 17:16:41', '2017-12-24 17:16:41'),
(518, 'This rune page is heavily focused on lane harass and pressure, and to do that you''re looking to spam your spells quite a bit. Manaflow empowers you to do more damage with Aery and Scorch.', 87, 30, '2017-12-24 17:16:41', '2017-12-24 17:16:41'),
(519, 'Zyra makes great use of the bonus AP from Absolute Focus by staying in the back-line and letting her plants dish out the damage.', 87, 34, '2017-12-24 17:16:41', '2017-12-24 17:16:41'),
(520, 'Again this rune page is heavily focused on lane harass and Scorch is good at that, often out-damaging most Keystones early. Constant plants attack with proc this very effectively.', 87, 35, '2017-12-24 17:16:41', '2017-12-24 17:16:41'),
(521, 'Zombie Ward can provide a ton of bonus vision for free if you''re building Sightstone and placing wards often and is always a very reliable and safe Rune choice for supports.', 87, 20, '2017-12-24 17:16:41', '2017-12-24 17:16:41'),
(522, 'Zyra''s natural ability to proc constant slows with Rylai''s and [E] plants attacks allows her and her plants to repeatedly proc Cheap Shot''s True damage adding up to massive amounts throughout the game.', 87, 17, '2017-12-24 17:16:41', '2017-12-24 17:16:41'),
(523, 'Aurelion Sol''s damage mechanics rely almost entirely on his ability to position himself well from moment to moment. The Movement Speed burst from Phase Rush lets you chase and stay in perfect range for follow-up [W] hits.', 88, 28, '2017-12-24 17:16:41', '2017-12-24 17:16:41'),
(524, 'Sol''s massive lac of mobility makes him incredibly vulnerable to jungle ganks and mage assassins like LeBlanc. Nullifying Orb helps you survive those ganks and all-ins so that you can scale into the mid game without being way behind.', 88, 29, '2017-12-24 17:16:41', '2017-12-24 17:16:41'),
(525, 'Again, mobility is the name of the game for Sol. Combined with his [E] passive Movement Speed, Celerity will grant you very reliable bonus AP.', 88, 33, '2017-12-24 17:16:41', '2017-12-24 17:16:41'),
(526, 'Waterwalking is a great rune to take on Sol when you''re looking to get the early shove and roam to the side lanes for map pressure.', 88, 36, '2017-12-24 17:16:41', '2017-12-24 17:16:41'),
(527, 'Presence of mind on Sol allows you to pick up multiple kills and assists in teamfights and keep your [W] on for extended periods of time without fear of mana constraints.', 88, 7, '2017-12-24 17:16:41', '2017-12-24 17:16:41'),
(528, 'Coup De Grace is the go-to rune for consistent damage amp when looking to finish off targets.', 88, 11, '2017-12-24 17:16:41', '2017-12-24 17:16:41'),
(529, 'If you''re able to slow the enemy with [W] first, your Comet is almost guaranteed to hit. Karthus is also able to quickly bring Comet back off cooldown by landing multiple [Q]s in quick succession.', 89, 27, '2017-12-24 17:16:41', '2017-12-24 17:16:41'),
(530, 'Karthus'' [R] has a massive cooldown so every point of CDR is that much more valuable. At max stacks your ult will be up 24s sooner.', 89, 31, '2017-12-24 17:16:41', '2017-12-24 17:16:41'),
(531, 'Absolute Focus is a rune that can provide incredible amount of AP in situations where you''re able to sit back and provide damage. In the case of Karthus, stay healthy in lane and look for an early cross-map [R].', 89, 34, '2017-12-24 17:16:41', '2017-12-24 17:16:41'),
(532, 'There''s not much to say here expect for ''Scaling''. Karth can be one of the hardest scaling AP Mages just by the nature of his [R]. A 40min game means you''ll be hitting like a truck.', 89, 37, '2017-12-24 17:16:41', '2017-12-24 17:16:41'),
(533, 'Karth can make great use of Coup De Grace, synergizing well with both is [R] for executions, and when he''s in his passive form looking to finish a target.', 89, 11, '2017-12-24 17:16:41', '2017-12-24 17:16:41'),
(534, 'Karthus can actually make pretty surprisingly great use of Presence of Mind with his [E] during teamfights. Pick up kills/assists and that''ll empower you to keep your [E] on for free for another 5s.', 89, 7, '2017-12-24 17:16:41', '2017-12-24 17:16:41'),
(535, 'As a champion with a very assassin heavy play style, Diana loves the burst from Electrocute. She can proc the damage pre 6 with an [E]->[W]->auto thanks to the spells not having to do damage to count toward the proc.', 90, 14, '2017-12-24 17:16:41', '2017-12-24 17:16:41'),
(536, 'Post 6 Sudden impact because a vital tool in blowing up enemy champions with all-ins.', 90, 19, '2017-12-24 17:16:41', '2017-12-24 17:16:41'),
(537, 'Zombie Ward is an overall very reliable and good rune in all situations. It''s provides a ton of vision of the course of the game and helps keep you safe early.', 90, 20, '2017-12-24 17:16:41', '2017-12-24 17:16:41'),
(538, 'Relentless Hunter is a bit of a stylistic choice. As an assassin, Diana usually wants to type to roam a bit and find a target to explode.', 90, 25, '2017-12-24 17:16:41', '2017-12-24 17:16:41'),
(539, 'Nullifying Orb is almost always a good mid lane rune choice when playing against a burst mage like Syndra. Diana can sometimes struggle due to her melee nature and Null helps to keep you out of kill range.', 90, 29, '2017-12-24 17:16:41', '2017-12-24 17:16:41'),
(540, 'Scorch is a rune that heavily focuses early to mid game chip damage. If you''re confident in your ability to land [Q] often is lane this can potentially put you in a great position to kill your lane opponent at 6.', 90, 35, '2017-12-24 17:16:41', '2017-12-24 17:16:41'),
(541, 'Aftershock is a great rune for entering a gank with [Q] providing you the resists to survive and a bonus burst of damage with the explosion.', 91, 39, '2017-12-24 17:16:41', '2017-12-24 17:16:41'),
(542, 'Unflinching is a rune that synergizes well with most Junglers as smiting an enemy champion will grant you the Tenacity and Slow resist.', 91, 41, '2017-12-24 17:16:41', '2017-12-24 17:16:41'),
(543, 'Conditioning on Amumu allows you to scale into the mid game as a massive tank alongside Aftershock and Overgrowth.', 91, 46, '2017-12-24 17:16:41', '2017-12-24 17:16:41'),
(544, 'Overgrowth is likely the best rune in this slot primary due to Amumu''s fast clear speeds and lack of major value from the other 2 options.', 91, 47, '2017-12-24 17:16:41', '2017-12-24 17:16:41'),
(545, 'Transcendence is a great rune choice on Amumu as he likes to build all of the CDR tanks items, allowing him to go over cap and still make great use of the extra AP gained.', 91, 32, '2017-12-24 17:16:41', '2017-12-24 17:16:41'),
(546, 'Amumu''s [R] is the reason why you pick him. Taking the Ultimate Hat allows you to use your ult a bit more literally in small skirmishes and still have it up for big team fights.', 91, 31, '2017-12-24 17:16:41', '2017-12-24 17:16:41'),
(547, 'Aery is a rune that is lauded for it''s reliability. While less damage that Comet, it cannot miss allowing you to harass for a little bit more with [Q] in lane.', 92, 26, '2017-12-24 17:16:41', '2017-12-24 17:16:41'),
(548, 'Thanks to the already short cooldown on Kassadin''s [R], he is able to get full Ultimate Hat stacks very quickly. This lets you take a few extra Riftwalks in the mid game for chasing kills/escaping, where you other wise not be able to.', 92, 31, '2017-12-24 17:16:41', '2017-12-24 17:16:41'),
(549, 'Kassadin is a champion who often forgoes early CDR for a stacking item like RoA and Transcendence helps patch some of that up.', 92, 32, '2017-12-24 17:16:41', '2017-12-24 17:16:41'),
(550, 'Scorch is a rune that, like Aery, is very strong and reliable during lane. These two combined make for a strong poking tool with [Q].', 92, 35, '2017-12-24 17:16:41', '2017-12-24 17:16:41'),
(551, 'Cosmic Insight is a stable and safe rune pick for any champion in any position, especially those who take Teleport and might look to match an enemy TP right off cooldown.', 92, 59, '2017-12-24 17:16:41', '2017-12-24 17:16:41'),
(552, 'The early stasis active from Perfect timing opens up opportunities for early game outplays and towers dives while also acting as a raw gold value toward a core item.', 92, 55, '2017-12-24 17:16:41', '2017-12-24 17:16:41'),
(553, 'As a pseudo AD Carry jungler, Kindred is naturally able to proc the bonus damage along side their [E] for a strong bit of burst damage.', 93, 2, '2017-12-24 17:16:41', '2017-12-24 17:16:41'),
(554, 'Triumph is the best rune in the group for Kindred as it pairs pretty nicely, when fighting to the death, with the last bit of healing from [R] topping you off to either escape of keep truckin''.', 93, 6, '2017-12-24 17:16:41', '2017-12-24 17:16:41'),
(555, 'Tenacity as a Jungler means that you''re less likely to get a gank stuffed by CC when entering a lane that already had vision of you. In team fights the Tenacity simple means more uptime on damage.', 93, 9, '2017-12-24 17:16:41', '2017-12-24 17:16:41'),
(556, 'Kindred likes to shred her targets and kill them as fast as possible. Coup De Grace is one of the more reliable damage sources in this group.', 93, 11, '2017-12-24 17:16:41', '2017-12-24 17:16:41'),
(557, 'Kindred can make good use of both the Lethality for autos and Magic Penetration for Wolf damage, when casting [Q].', 93, 19, '2017-12-24 17:16:41', '2017-12-24 17:16:41'),
(558, 'Zombie Ward is a safe a reliable rune on every Jungle thanks to the nature of their vision control and ability to deep ward. ', 93, 20, '2017-12-24 17:16:41', '2017-12-24 17:16:41'),
(559, 'As with all on-hit champions, Kayle makes great great use of the massive Attack Speed burst while her [E] is up.', 94, 3, '2017-12-24 17:16:41', '2017-12-24 17:16:41'),
(560, 'Triumph is the best rune choice in this group. The healing on a kill lets you pop [R] when low and come out the other side healthy enough to keep fighting.', 94, 6, '2017-12-24 17:16:41', '2017-12-24 17:16:41'),
(561, 'More Attack Speed simple means more autos while [E] is up. Solid choice in all situations.', 94, 8, '2017-12-24 17:16:41', '2017-12-24 17:16:41'),
(562, 'End your enemies life as quickly as possible, especially squishies.', 94, 11, '2017-12-24 17:16:41', '2017-12-24 17:16:41'),
(563, 'More [R]s means more opportunities to duel and split push, especially heading into the late game when your Gathering Storm AP kicks in.', 94, 31, '2017-12-24 17:16:41', '2017-12-24 17:16:41'),
(564, 'Kayle is already a champion that scales quite well into the late game. Gathering Storm propels her to a position where she is likely able to duel anyone and kill them while in [R].', 94, 37, '2017-12-24 17:16:41', '2017-12-24 17:16:41'),
(565, 'Gangplank is one of the biggest abusers of Kleptomancy thanks to his on-hit [Q]. Klepto will provide you with a ton of sustain/gold and occasionally more AD.', 95, 52, '2017-12-24 17:16:41', '2017-12-24 17:16:41'),
(566, 'Perfect Timing is a great rune when looking to get an early/cheaper Guardian Angel.', 95, 55, '2017-12-24 17:16:41', '2017-12-24 17:16:41'),
(567, '', 95, 57, '2017-12-24 17:16:41', '2017-12-24 17:16:41'),
(568, 'More CDR means more [Q]s which means for Klepto procs which means more gold... You get the idea.', 95, 59, '2017-12-24 17:16:41', '2017-12-24 17:16:41'),
(569, 'One of GP''s most underrated aspects of his kit is his global presence. A few well-placed/timed [R]s in the early game can make or break a lead. More [R]s mean more map presence.', 95, 31, '2017-12-24 17:16:41', '2017-12-24 17:16:41'),
(570, 'There is no stat that GP likes more than CDR. His [E] heavily relies on having a lot of CDR because you''re going to miss a lot of barrels.', 95, 32, '2017-12-24 17:16:41', '2017-12-24 17:16:41'),
(571, 'Gangplank is one of the biggest abusers of Kleptomancy thanks to his on-hit [Q]. Klepto will provide you with a ton of sustain/gold and occasionally more AD.', 96, 52, '2017-12-24 17:16:41', '2017-12-24 17:16:41'),
(572, 'Perfect Timing is a great rune when looking to get an early/cheaper Guardian Angel.', 96, 55, '2017-12-24 17:16:41', '2017-12-24 17:16:41'),
(573, '', 96, 57, '2017-12-24 17:16:41', '2017-12-24 17:16:41'),
(574, 'More CDR means more [Q]s which means for Klepto procs which means more gold... You get the idea.', 96, 59, '2017-12-24 17:16:41', '2017-12-24 17:16:41'),
(575, 'One of GP''s most underrated aspects of his kit is his global presence. A few well-placed/timed [R]s in the early game can make or break a lead. More [R]s mean more map presence.', 96, 31, '2017-12-24 17:16:41', '2017-12-24 17:16:41'),
(576, 'There is no stat that GP likes more than CDR. His [E] heavily relies on having a lot of CDR because you''re going to miss a lot of barrels.', 96, 32, '2017-12-24 17:16:41', '2017-12-24 17:16:41'),
(577, 'Locking a gold or red card with [W] effectively guarantees a hit with Comet making it one of the most reliable uses of the rune of any champion.', 97, 27, '2017-12-24 17:16:41', '2017-12-24 17:16:41'),
(578, 'TF''s map pressure from his ultimate is what makes his entire kit so strong for solo queue games. Having your [R] up more often means more pressure.', 97, 31, '2017-12-24 17:16:41', '2017-12-24 17:16:41'),
(579, 'Celereity grants you the movement speed needed to roam and land gold cards and while also giving you a little bit of extra AP from Ghost/Lich Bane.', 97, 33, '2017-12-24 17:16:41', '2017-12-24 17:16:41'),
(580, 'Scorch is the go-to rune for lane harassment and early game pressure. A few procs of scorch in lane and you''ll be primed to set up a kill with your jungler.', 97, 35, '2017-12-24 17:16:41', '2017-12-24 17:16:41'),
(581, 'Movement Speed is a highly prized stat for TF. It lets him get back to lane faster and pressure the map on both sides with [R].', 97, 25, '2017-12-24 17:16:41', '2017-12-24 17:16:41'),
(582, 'Twisted Fate is able to make use of Cheap Shot relatively easily thanks to the Stun/Slow of [W]. After landing a Gold or Red card, immediately throw out your [W] for an extra bit of true damage.', 97, 17, '2017-12-24 17:16:41', '2017-12-24 17:16:41'),
(583, 'Press the Attack synergizes well with BotRK and Jax''s natural tendency to ramp damage in duels.', 98, 2, '2017-12-24 17:16:41', '2017-12-24 17:16:41'),
(584, 'Jax is a solid tower diver and Triumph''s big heal can make the difference between life and deal in sticky situations.', 98, 6, '2017-12-24 17:16:41', '2017-12-24 17:16:41'),
(585, 'Tenacity further empowers your ability to ramp your auto attacks with Press the Attack by allowing you to stick to your target.', 98, 9, '2017-12-24 17:16:41', '2017-12-24 17:16:41'),
(586, 'Your rune choice here largely depends on if your laning against a tank or not. Coup De Grace is good at killing squishy champions.', 98, 11, '2017-12-24 17:16:41', '2017-12-24 17:16:41'),
(587, 'More Tenacity and slow resist means more opportunity to stick to your target, deal damage, and get the kill.', 98, 41, '2017-12-24 17:16:41', '2017-12-24 17:16:41'),
(588, 'Second Wind is a good rune choice when looking to duel and trade as the in-combat sustain becomes incredibly useful.', 98, 49, '2017-12-24 17:16:41', '2017-12-24 17:16:41'),
(589, 'Annie loves to burst and blow up her enemies. A [R]->[Q]->[W] will proc Electrocute for massive damage.', 99, 14, '2017-12-24 17:16:41', '2017-12-24 17:16:41'),
(590, 'Annie can reliably proc Cheap Shot thanks to her stun. Once you get *Rylai''s you can continuously proc the true damage with Tibber''s Aura**.', 99, 17, '2017-12-24 17:16:41', '2017-12-24 17:16:41'),
(591, 'Zombie Ward helps keep you safe in the early to mid game proving a lot of extra value for every trinket ward you place, especially in tri-brushes.', 99, 20, '2017-12-24 17:16:41', '2017-12-24 17:16:41'),
(592, 'The bonus Movement Speed empowers you to roam around the map with your stun up for ganks and flash-engages.', 99, 25, '2017-12-24 17:16:41', '2017-12-24 17:16:41'),
(593, 'Annie is all about blowing up the enemy team with massive Tibbers ults. More [R]s also means more opportunities to take objectives with Tibbers tanking.', 99, 31, '2017-12-24 17:16:41', '2017-12-24 17:16:41'),
(594, 'More CDR means more spell rotations. More spell rotations means more damage and kills.', 99, 32, '2017-12-24 17:16:41', '2017-12-24 17:16:41'),
(595, 'Cassiopeia massively benefits from the bonus Movement Speed on Phase Rush so she can chase down her target and continue spamming [E].', 100, 28, '2017-12-24 17:16:41', '2017-12-24 17:16:41'),
(596, 'Manaflow Band synergizes well with Tear allowing you to use your abilities more liberally in the early game for trades.', 100, 30, '2017-12-24 17:16:41', '2017-12-24 17:16:41'),
(597, 'Celerity double dips for Cass. She can use the Movement Speed to position for more [E]s and Phase Rush procs will grant you more AP.', 100, 33, '2017-12-24 17:16:41', '2017-12-24 17:16:41'),
(598, 'Gathering Storm''s scaling AP makes you an insane threat heading into the mid to late game.', 100, 37, '2017-12-24 17:16:41', '2017-12-24 17:16:41'),
(599, 'Cassio''s natural spam-heavy kit with [E] allows her you take aggressive trades when you level up and continue to sustain mana.', 100, 7, '2017-12-24 17:16:41', '2017-12-24 17:16:41'),
(600, 'Coup De Grace lets you burn down any target and finish them off ASAP.', 100, 11, '2017-12-24 17:16:41', '2017-12-24 17:16:41'),
(601, 'Fleet Footwork provides both great lane sustain as well as well as the movement speed needed to position for follow-up damage.', 101, 4, '2017-12-24 17:16:41', '2017-12-24 17:16:41'),
(602, 'Triumph is a great rune for champions who like to take small skirmishes. The bonus gold also helps accelerate you to a faster Tri-Force if you pick a few early game kills/assists.', 101, 6, '2017-12-24 17:16:41', '2017-12-24 17:16:41'),
(603, 'Most of your lane opponent will have forms of deadly Crowd Control. Tenacity is a huge key to successfully escaping jungle ganks.', 101, 9, '2017-12-24 17:16:41', '2017-12-24 17:16:41'),
(604, 'Corki can be one of the burstiest champions in the game thanks to his strong Sheen procs. Coup De Grace lets empower that burst even further on squishy targets.', 101, 11, '2017-12-24 17:16:41', '2017-12-24 17:16:41'),
(605, 'Gathering Strom''s late game scaling AD makes you an insanely scary threat in the mid to late game.', 101, 37, '2017-12-24 17:16:41', '2017-12-24 17:16:41'),
(606, 'Nullifying Orb acts very similarly to a Hex Drinker shield allowing you to take some aggressive trades with burst mages with relative safety. ', 101, 29, '2017-12-24 17:16:41', '2017-12-24 17:16:41'),
(607, 'Press the Attack''s exposure damage synergizes incredibly well with BotRK + Black Cleaver + [R] shredding even the tankiest champions.', 102, 2, '2017-12-24 17:16:41', '2017-12-24 17:16:41'),
(608, 'Overheal is a great rune for topping off your heal to sustain chip damage from the enemy, and synergizes well with the Life Steal from BotRK and Bloodline.', 102, 5, '2017-12-24 17:16:41', '2017-12-24 17:16:41'),
(609, 'More Life Steal means longer trades equalling Lucian gets off more Passive procs and Press the Attack damage.', 102, 10, '2017-12-24 17:16:41', '2017-12-24 17:16:41'),
(610, 'Coup De Grace is a great rune for finishing of the last bit of health on champions you have shredded with Black Cleaver and Press the Attack.', 102, 11, '2017-12-24 17:16:41', '2017-12-24 17:16:41'),
(611, 'Sudden Impact on Lucian provides a solid amount of Lethality when casting [E] allowing you to keep the buff up reliably if you''re rotating your spells well.', 102, 19, '2017-12-24 17:16:41', '2017-12-24 17:16:41'),
(612, 'Zombie Ward helps keep you safe in the early to mid game proving a lot of extra value for every trinket ward you place, especially in tri-brushes.', 102, 20, '2017-12-24 17:16:41', '2017-12-24 17:16:41'),
(613, 'Vel''Koz''s loves to burst his targets from 100 to 0 when he lands an [E], and Electrocute is one of the best at doing so.', 103, 14, '2017-12-24 17:16:41', '2017-12-24 17:16:41'),
(614, 'Vel''Koz can proc Cheap Shot with [Q], [E], and [R] allowing him to double down on un-mitigate-able True Damage.', 103, 17, '2017-12-24 17:16:41', '2017-12-24 17:16:41'),
(615, 'Zombie Ward helps keep you safe in the early to mid game proving a lot of extra value for every trinket ward you place.', 103, 20, '2017-12-24 17:16:41', '2017-12-24 17:16:41'),
(616, 'Vel''Koz is one of the highest damage champions in the game and Ravenous Hunter scales 1-to-1 with how much damage you''re doing with your abilities. It also allows him to heal from the True Damage of his passive.', 103, 23, '2017-12-24 17:16:41', '2017-12-24 17:16:41'),
(617, 'This rune page focuses heavily on stacking as much AP as possible and Absolute Focus is all about that.', 103, 34, '2017-12-24 17:16:41', '2017-12-24 17:16:41'),
(618, 'Gathering Storm is the ultimate rune when looking to stack as much AP as possible.', 103, 37, '2017-12-24 17:16:41', '2017-12-24 17:16:41'),
(619, 'Thanks to his auto attack resets, Xin can almost instantly proc Press the Attack for easy ramping damage.', 104, 2, '2017-12-24 17:16:41', '2017-12-24 17:16:41'),
(620, 'Triumph allows Xin to jump in a fight, kill his target with the laners, and move onto the next target or continue jungling healthily.', 104, 6, '2017-12-24 17:16:41', '2017-12-24 17:16:41'),
(621, 'Xin''s biggest counter is CC that locks him up upon jumping into a fight with [E]. The bonus Tenacity here lets you continue to pump out damage ASAP.', 104, 9, '2017-12-24 17:16:41', '2017-12-24 17:16:41'),
(622, 'Coup De Grace synergizes incredibly well with Press the Attack when looking to [E] onto an enemy carry early in the game, and end their life.', 104, 11, '2017-12-24 17:16:41', '2017-12-24 17:16:41'),
(623, 'Unflinching synergizes well with Junglers as their constantly casting smite for a more frequent proc of this rune.', 104, 41, '2017-12-24 17:16:41', '2017-12-24 17:16:41'),
(624, 'Second Wind is a great rune for sustaining during fights, and because Xin has no way out after going in, he needs to stay alive as long as possible.', 104, 49, '2017-12-24 17:16:41', '2017-12-24 17:16:41'),
(625, 'Fleet Footwork is a great AD Carry keystone for champions who can be abused by their short range, allowing them to sustain reliably into the late game.', 105, 4, '2017-12-24 17:16:41', '2017-12-24 17:16:41'),
(626, 'Overheal synergizes well with Fleet Footwork, Bloodline, and Taste of Blood, keeping to topped off in lane.', 105, 5, '2017-12-24 17:16:41', '2017-12-24 17:16:41'),
(627, 'The Life Steal from Bloodline in the late game is incredibly strong on Sivir with her heavy Crit stacking.', 105, 10, '2017-12-24 17:16:41', '2017-12-24 17:16:41'),
(628, 'Cut Down is great for chopping down tanks, melee supports, and mid laners who might build Rylais and/or Liandries.', 105, 12, '2017-12-24 17:16:41', '2017-12-24 17:16:41'),
(629, 'With the bounce from [W], Sivir can easily proc the heal from taste of Blood without even trying to hit the enemy champions, allowing you to sustain in lane.', 105, 18, '2017-12-24 17:16:41', '2017-12-24 17:16:41'),
(630, 'Zombie Ward is a great rune for lane safety vision, especially placing trinket wards in the tri-brush where they may not be cleared for a while.', 105, 20, '2017-12-24 17:16:41', '2017-12-24 17:16:41'),
(631, '[Q] spam on Taliyah allows her to repeatedly proc Comet and reduce it''s cooldown quickly.', 106, 27, '2017-12-24 17:16:41', '2017-12-24 17:16:41'),
(632, 'Manaflow Band is your replacement for Meditation for lane harass mana sustain.', 106, 30, '2017-12-24 17:16:41', '2017-12-24 17:16:41'),
(633, 'Taliyah is a champion who relies heavily on her Movement Speed to re-position for [Q] and roam the side lanes with [R].', 106, 33, '2017-12-24 17:16:41', '2017-12-24 17:16:41'),
(634, 'Scorch on Taliyah allows you to abuse your poking pressure in lane with repeated [Q]s, proccing Scorch ever time it comes off cooldown for massive building damage and lane pressure.', 106, 35, '2017-12-24 17:16:41', '2017-12-24 17:16:41'),
(635, 'Triumph on Taliyah allows you to dish out damage, pick up kills, and continue on the in action for more kills thanks to the massive heal.', 106, 6, '2017-12-24 17:16:41', '2017-12-24 17:16:41'),
(636, 'Coup De Grace on Taliyah empowers your ability to dish out huge amount of damage thanks to the super low cooldown on [Q], on low health targets who are running for their life.', 106, 11, '2017-12-24 17:16:41', '2017-12-24 17:16:41'),
(637, 'The burst damage from Electrocute is both easily accessible and highly beneficial to Graves wanting to blow up enemy champions', 107, 14, '2017-12-24 17:16:42', '2017-12-24 17:16:42'),
(638, 'Sudden Impact allows you to gain a bit of Lethality after sliding in with [E] for more burst damage. ', 107, 19, '2017-12-24 17:16:42', '2017-12-24 17:16:42'),
(639, 'Zombie Ward is a great rune choice on junglers who often look to invade for deep wards. The extra bit of extended vision allows you to keep track of the enemy jungler for long periods of time.', 107, 20, '2017-12-24 17:16:42', '2017-12-24 17:16:42'),
(640, 'The high base damage on [Q] and [R] ultimately grant Graves significant healing in duels.', 107, 23, '2017-12-24 17:16:42', '2017-12-24 17:16:42'),
(641, 'Attack Speed is a nice stat on Graves to assist in faster clears and dumping his 2 shots as quickly as possible.', 107, 8, '2017-12-24 17:16:42', '2017-12-24 17:16:42'),
(642, 'Grave''s loves to blow up squishes as quickly as he can and Coup De Grace excels at that.', 107, 11, '2017-12-24 17:16:42', '2017-12-24 17:16:42'),
(643, 'Brand is a champion that can quite regularly land Comet once you have Rylai''s.', 108, 27, '2017-12-24 17:16:42', '2017-12-24 17:16:42'),
(644, 'As a high damage support, your job is to provide lane pressure with frequent harass from ability spam. Manaflow provides you the mana sustain to keep the pressure up. ', 108, 30, '2017-12-24 17:16:42', '2017-12-24 17:16:42'),
(645, 'Brand''s medium-long range allows him to stick to the edges of fights and stay at high health early. ', 108, 34, '2017-12-24 17:16:42', '2017-12-24 17:16:42'),
(646, 'Scorch is a rune that really plays up on heavy lane aggresison and dies off over the course of the game.', 108, 35, '2017-12-24 17:16:42', '2017-12-24 17:16:42'),
(647, 'Cheap shot isn''t an obvious choice here, but Brand''s ability to keep a target nearly permanently slowed with Rylai''s means that Cheap Shot will continuously proc on cooldown for massive bonus True Damage.', 108, 17, '2017-12-24 17:16:42', '2017-12-24 17:16:42'),
(648, 'Spell Vamp from Ravenous Hunter means that you''ll be healing for a ton thanks to the nature of Brand''s passive ticking on tanky enemy champions.', 108, 23, '2017-12-24 17:16:42', '2017-12-24 17:16:42'),
(649, 'Anivia''s damage almost always comes with a stun or slow, allowing for a much more reliable hit rate on Arcane Comet.', 109, 27, '2017-12-24 17:16:42', '2017-12-24 17:16:42'),
(650, 'Manaflow Band is a great rune on mid laners who stack multiple mana items (Tear, RoA etc.), providing even more mana return.', 109, 30, '2017-12-24 17:16:42', '2017-12-24 17:16:42'),
(651, 'Typical choice here for mid mages. CDR is always a great stat for trading and doing more damage.', 109, 32, '2017-12-24 17:16:42', '2017-12-24 17:16:42'),
(652, 'Anivia is a champion who can very easily stall the game thanks to her [R] waveclear, and thus she can get some insane AP from forcing a stalled-out game.', 109, 37, '2017-12-24 17:16:42', '2017-12-24 17:16:42'),
(653, 'Perfect Timing allows you to get a cheaper Zhonya''s after Archangel''s + RoA giving you a massive mid-game.', 109, 55, '2017-12-24 17:16:42', '2017-12-24 17:16:42'),
(654, 'Cosmic Insight provides a lot of defensive power in the form of Summoner Cooldown and Item Cooldown for Zhonya''s/Archangel''s.', 109, 59, '2017-12-24 17:16:42', '2017-12-24 17:16:42'),
(655, 'Akali loves burst damage and she can quite easily proc Electrocute with a [Q]->Auto->[E].', 110, 14, '2017-12-24 17:16:42', '2017-12-24 17:16:42'),
(656, 'Akali can make use of both the Magic Penetration and Lethality of Sudden Impact, while nearly always having the proc up with [W] and [R] casts.', 110, 19, '2017-12-24 17:16:42', '2017-12-24 17:16:42'),
(657, 'Akali loves to kill and snowball. Eyeball Collect is perfect for bloody lanes/games where you''re looking to run away with a lead.', 110, 22, '2017-12-24 17:16:42', '2017-12-24 17:16:42'),
(658, 'Additional spell vamp on top of her passive and Gunblade healing makes Akali incredibly difficult to trade against.', 110, 23, '2017-12-24 17:16:42', '2017-12-24 17:16:42'),
(659, 'Perfect Timing serves as both a free stasis early if you find yourself in a sticky situation as well as a 600g item discount on a quicker full purchase. Paired with Future''s Market you''ll have the item completed sooner than the enemy expects.', 110, 55, '2017-12-24 17:16:42', '2017-12-24 17:16:42'),
(660, 'An early kill or assist with Future''s Market has the potential to slingshot you way ahead of your lane opponent if you manage to take an opportune recall timing to finish an item.', 110, 57, '2017-12-24 17:16:42', '2017-12-24 17:16:42'),
(661, 'The bonus exposure damage from Press the Attack allows Kalista''s [E] to execute for huge amounts of damage.', 111, 2, '2017-12-24 17:16:42', '2017-12-24 17:16:42'),
(662, 'Overheal is a rune that synergizes well with Kalista''s natural Life Steal item build to keep her topped off with a shield.', 111, 5, '2017-12-24 17:16:42', '2017-12-24 17:16:42'),
(663, 'Kalista is an AD Carry that tends to stack more Life Steal than most others and Bloodline doubles down on that.', 111, 10, '2017-12-24 17:16:42', '2017-12-24 17:16:42'),
(664, 'Coup De Grace works fantastically with Kalista''s desire to execute her targets with [E].', 111, 11, '2017-12-24 17:16:42', '2017-12-24 17:16:42'),
(665, 'Thanks to the leap from her passive, Kalista can keep the Lethality buff from Sudden Impact for the entirely of the game.', 111, 19, '2017-12-24 17:16:42', '2017-12-24 17:16:42'),
(666, 'Ghost Poro is a solid rune for providing on-demand vision for the tri-bush or lane bushes.', 111, 21, '2017-12-24 17:16:42', '2017-12-24 17:16:42'),
(667, 'Aftershock provides a lot of survivability and bonus damage for Maokai when engaging/fighting with [Q], [W], and [R].', 112, 39, '2017-12-24 17:16:42', '2017-12-24 17:16:42'),
(668, 'Maokai is a top laner who stacks a lot of health and is able to proc Font of Life with every single one of his abilities, to multiple targets.', 112, 43, '2017-12-24 17:16:42', '2017-12-24 17:16:42'),
(669, 'Conditioning''s bonus Armor and Magic Resist synergizes and scales well with the bonus resists from Aftershock, allowing you to survive massive amount of damage.', 112, 46, '2017-12-24 17:16:42', '2017-12-24 17:16:42'),
(670, 'Revitalize empower''s Maokai''s passive and Font of Life healing for incredibly strong drawn-out team fights.', 112, 48, '2017-12-24 17:16:42', '2017-12-24 17:16:42'),
(671, 'Perfect Timing is a rune that serves double duty as a a get-out-jail card and raw gold value towards a quicker Gargoyle''s Stoneplate.', 112, 55, '2017-12-24 17:16:42', '2017-12-24 17:16:42'),
(672, 'Magical Footwear is a pretty safe rune choice on just about any champion as it effectively acts as free kill''s worth of gold at the 10min mark.', 112, 56, '2017-12-24 17:16:42', '2017-12-24 17:16:42'),
(673, 'Ryze''s natural spell-spam nature allows you to easily proc Phase Rush with [W]->[E]->[Q] and stick to your target for follow-up damage.', 113, 28, '2017-12-24 17:16:42', '2017-12-24 17:16:42'),
(674, 'Ryze naturally stacks mana with Tear and RoA so you gets extra mana returned allowing you to spam a lot more spell in the mid-game.', 113, 30, '2017-12-24 17:16:42', '2017-12-24 17:16:42'),
(675, 'Transcendence allows you 10% CDR earlier in the game than you might otherwise have access to because you''re rushing mana stacking items.', 113, 32, '2017-12-24 17:16:42', '2017-12-24 17:16:42'),
(676, 'Gathering Storm is a great late-game insurance policy that scales incredibly well the longer the game goes on, allow you to deal insane damage at 40mins+.', 113, 37, '2017-12-24 17:16:42', '2017-12-24 17:16:42'),
(677, 'Paired with Cosmic Insight, your mid-game skirmish potential will be incredibly strong having a great mix of AP, Health, Mana, and CDR. Cosmic Insight is also great on mid-laners who take Teleport for the shorter cooldown.', 113, 59, '2017-12-24 17:16:42', '2017-12-24 17:16:42'),
(678, 'Perfect Timing allows for a cheaper and faster Zhonya''s to pull of the clutch Paladin combos (Zhonya''s + [R]).', 113, 55, '2017-12-24 17:16:42', '2017-12-24 17:16:42'),
(679, 'Aery allows Nami is apply a generous shield and heal her teammate with [W] during trades/fights allowing your teammate to stay healthy.', 114, 26, '2017-12-24 17:16:42', '2017-12-24 17:16:42'),
(680, 'Nami''s [W] has a high base mana cost, often starving her of mana if trading a lot. If you''re casting [W] when Manaflow Band is off cooldown, your lane sustain will be massive.', 114, 30, '2017-12-24 17:16:42', '2017-12-24 17:16:42'),
(681, 'The bonus Movement Speed from Celerity pays off big when you''re running at an enemy champion to get into range to cast a [Q] just ahead of them. ', 114, 33, '2017-12-24 17:16:42', '2017-12-24 17:16:42'),
(682, 'Scorch allows you take take very aggressive trades early in lane and come out ahead thanks to your [W] healing and Cheap Shot damage.', 114, 35, '2017-12-24 17:16:42', '2017-12-24 17:16:42'),
(683, 'Zombie Ward can provide a ton of bonus vision for free if you''re building Sightstone and placing wards often.', 114, 20, '2017-12-24 17:16:42', '2017-12-24 17:16:42'),
(684, 'With [Q], [W], and [R] Nami can keep a target primed for Cheap Shot true damage for long periods of time. Auto while the enemy is stunned/slowed and heal back up after the trade.', 114, 17, '2017-12-24 17:16:42', '2017-12-24 17:16:42'),
(685, 'The extra bit of burst damage from Electrocute allows you to quickly execute enemy champions with your [R]->[Q]->[E] combo.', 115, 14, '2017-12-24 17:16:42', '2017-12-24 17:16:42'),
(686, 'The bonus Lethality gained from casting [Q] and [R] provides even more damage when hunting an enemy champion.', 115, 19, '2017-12-24 17:16:42', '2017-12-24 17:16:42'),
(687, 'Eyeball Collection is a solid choice here for increasing your damage. Because you''re playing a very assassin-heavy build/playstyle, you want to get ahead and snowball the game', 115, 22, '2017-12-24 17:16:42', '2017-12-24 17:16:42'),
(688, 'Relentless Hunter lets you zoom around the map to find fights and kills and the drop of a hat.', 115, 25, '2017-12-24 17:16:42', '2017-12-24 17:16:42'),
(689, 'Triumph''s extra burst of healing on kills/assists allows you to play aggressively by diving the back-line, killing your target, and getting out safely thanks to the extra bit of health back.', 115, 6, '2017-12-24 17:16:42', '2017-12-24 17:16:42'),
(690, 'Coup De Grace is the go-to rune for extra damage when looking to burst/assassinate squishy back-line targets as quickly as possible.', 115, 11, '2017-12-24 17:16:42', '2017-12-24 17:16:42'),
(691, 'Like Courage of the Colossus, Aftershock allows you to dive into a fight and survive thanks to the bonus resists. The explosion damage also assists in killing your target.', 116, 39, '2017-12-24 17:16:42', '2017-12-24 17:16:42'),
(692, 'Unflinching helps mitigate slows and CC so you can get to your desired target and kill them.', 116, 41, '2017-12-24 17:16:42', '2017-12-24 17:16:42'),
(693, 'The early bonus armor from Iron Skin helps a lot in providing you with a healthy early clear of the jungle.', 116, 44, '2017-12-24 17:16:42', '2017-12-24 17:16:42'),
(694, 'The health scaling from Overgrowth helps you survive dives in teamfights and scales very well with the bonus resists from Aftershock.', 116, 47, '2017-12-24 17:16:42', '2017-12-24 17:16:42'),
(695, 'Attack Speed is incredibly important to a fast and healthy jungle clear, and this is your only source of it.', 116, 8, '2017-12-24 17:16:42', '2017-12-24 17:16:42'),
(696, 'Vi is all about ulting someone and blowing up that target as fast as possible, and Coup De Grace is deigned to do just that.', 116, 11, '2017-12-24 17:16:42', '2017-12-24 17:16:42'),
(697, '', 117, 14, '2017-12-24 17:16:42', '2017-12-24 17:16:42'),
(698, 'LeBlanc makes great use of Sudden Impact, gaining bonus Magic Pen and Lethality when entering a trade/fight with [W].', 117, 19, '2017-12-24 17:16:42', '2017-12-24 17:16:42'),
(699, 'LeBlanc is all about kills and snowballing. Eyeball Collection is a rune that further pushes your gains for every kill/assist.', 117, 22, '2017-12-24 17:16:42', '2017-12-24 17:16:42'),
(700, 'LeBlanc makes great use of Spell Vamp: Gunblade + Ravenous Hunter means you''ll be healing for insane amounts int eh mid to late game.', 117, 23, '2017-12-24 17:16:42', '2017-12-24 17:16:42'),
(701, 'Transcendence makes up for having to forgo early CDR in favor of Gunblade, making your mid-game incredibly deadly in skirmishes.', 117, 32, '2017-12-24 17:16:42', '2017-12-24 17:16:42'),
(702, 'More [R]s means more poke, more all-ins, and more kills. LeBlanc''s low cooldown on [R] allows her to full stack Ult Hat very early in the game.', 117, 31, '2017-12-24 17:16:42', '2017-12-24 17:16:42'),
(703, 'Trundle is one of the best users of Grasp thanks to his innate auto-attack based kit and stickyness with [Q] and [E].', 118, 38, '2017-12-24 17:16:42', '2017-12-24 17:16:42'),
(704, 'If left alone Trundle is one of the fastest split-pushers. [Q] + Demolish means you''ll be cutting down towers in no time.', 118, 42, '2017-12-24 17:16:42', '2017-12-24 17:16:42'),
(705, 'The early armor from Iron skin lets your take trades early and heal off any damage with your passive.', 118, 44, '2017-12-24 17:16:42', '2017-12-24 17:16:42'),
(706, 'Revitalize synergizes incredibly well with Trundle''s natural healing from his passive and [R]. It also synergizes well with Font of Life and Overheal.', 118, 48, '2017-12-24 17:16:42', '2017-12-24 17:16:42'),
(707, 'Trundle could always use more auto-attacks and this is your only source of Attack Speed. ', 118, 8, '2017-12-24 17:16:42', '2017-12-24 17:16:42'),
(708, 'Overheal synergizes incredible well with Trundle''s Passive, [R], and Revitalize allowing you to enter fights healthy.', 118, 5, '2017-12-24 17:16:42', '2017-12-24 17:16:42'),
(709, 'Veigar can easily proc Electrocute with [E]->[W]->[Q] because abilities do not need to do damage to count toward the separate proc counter.', 119, 14, '2017-12-24 17:16:42', '2017-12-24 17:16:42'),
(710, 'If you successfully hit your target with [E] the bonus True Damage will help secure the kill before they even come out of the stun.', 119, 17, '2017-12-24 17:16:42', '2017-12-24 17:16:42'),
(711, 'Keeping wards up on the sides of lane is one of the most important things you can do as a mid-laner. Ghost Poro, while small, provides very reliable vision.', 119, 21, '2017-12-24 17:16:42', '2017-12-24 17:16:42'),
(712, 'The Spell vamp from Ravenous Hunter scales incredibly well with Veigar''s natural high damage scaling, allowing you to survive tough fights.', 119, 23, '2017-12-24 17:16:42', '2017-12-24 17:16:42'),
(713, 'Veigar is the master of AP scaling and Gathering Storm is the ultimate scaling rune.', 119, 37, '2017-12-24 17:16:42', '2017-12-24 17:16:42'),
(714, 'The raw utility of Veigar''s [E] increases the importance of CDR. Transcendence allows you to potentially spec into less CDR.', 119, 32, '2017-12-24 17:16:42', '2017-12-24 17:16:42'),
(715, 'Renekton''s [W] allows him to quickly proc the bonus damage of Press the Attack and get out ahead in trades/all-ins.', 120, 2, '2017-12-24 17:16:42', '2017-12-24 17:16:42'),
(716, 'Overheal is easy to build on Renekton thanks to Doran''s Blade, Ravenous Hydra, and healing from [Q].', 120, 5, '2017-12-24 17:16:42', '2017-12-24 17:16:42'),
(717, 'The bonus Tenacity lets you stick to your target and continue building Press the Attack damage.', 120, 9, '2017-12-24 17:16:42', '2017-12-24 17:16:42'),
(718, 'Coup De Graces empowers Renekton''s ability to slice up squishy champions as quickly as possible.', 120, 11, '2017-12-24 17:16:42', '2017-12-24 17:16:42'),
(719, 'Second Wind''s reliable heath sustain allows you to sustain early trades and out-heal your opponent.', 120, 49, '2017-12-24 17:16:42', '2017-12-24 17:16:42');
INSERT INTO `keystones_why` (`id`, `stone_why`, `builds_id`, `keystones_id`, `created_at`, `updated_at`) VALUES
(720, 'The early Armor from Iron skin further empowers your ability to take early trades and come out ahead.', 120, 44, '2017-12-24 17:16:42', '2017-12-24 17:16:42'),
(721, 'Karma''s kit allows her to effectively proc Aery offensively in the early game for harass, and defensively with [E] for massive shields.', 121, 26, '2017-12-24 17:16:42', '2017-12-24 17:16:42'),
(722, 'Karma is one of the biggest abusers of The Ultimate Hat thanks to having access to her [R] at level 1.', 121, 31, '2017-12-24 17:16:42', '2017-12-24 17:16:42'),
(723, 'Like all Enchanter supports, Karma scales incredibly well with CDR and Transcendence allows us to hit the CDR cap without fear.', 121, 32, '2017-12-24 17:16:42', '2017-12-24 17:16:42'),
(724, 'Karma has one of the most dominant lane phases of any support and Scorch lets us push that even further.', 121, 35, '2017-12-24 17:16:42', '2017-12-24 17:16:42'),
(725, 'Like all Enchanter supports, Karma scales incredibly well with CDR and Cosmic Insight gives us all the tools we need to dominate.', 121, 59, '2017-12-24 17:16:42', '2017-12-24 17:16:42'),
(726, 'Free boots effectively means we are getting a free kills worth of gold at 10mins allows us to spec into other items quicker.', 121, 56, '2017-12-24 17:16:42', '2017-12-24 17:16:42'),
(727, 'Proccing Comet on Rumble with either [E] or [R] is likely to result in a hit thanks to the slow. If opting for Rylai''s [Q] should become reliable as well. Thanks to Rumble''s mana-less, try to abuse Comet by landing as many abilities as possible while it''s on cooldown.', 122, 27, '2017-12-24 17:16:42', '2017-12-24 17:16:42'),
(728, 'The Ultimate Hat is a great choice for ensuring you have [R] up for ganks and any fight that should arise.', 122, 31, '2017-12-24 17:16:42', '2017-12-24 17:16:42'),
(729, 'Absolute Focus is a great rune on Rumble when playing aggressively and poking in lane with [E]. Teleports bottom will benefit from the extra AP when looking for kills.', 122, 34, '2017-12-24 17:16:42', '2017-12-24 17:16:42'),
(730, 'Scorch is rune that is heavily abusable in lane by Rumble with [Q]. The damage scales decently on him as well since he likes to stack Magic Penetration early.', 122, 35, '2017-12-24 17:16:42', '2017-12-24 17:16:42'),
(731, 'A well-timed stasis is a invaluable when paired with Rumble''s [Q]. Combine that with a cheaper/earlier Zhonya''s and Perfect timing becomes the best possible Inspiration rune for him.', 122, 55, '2017-12-24 17:16:42', '2017-12-24 17:16:42'),
(732, 'Future''s Market lets you hit your Liandries + Void Staff power-spike earlier than you would otherwise be able to. Look for a big teamfight as soon as you make use of your debt purchase.', 122, 57, '2017-12-24 17:16:42', '2017-12-24 17:16:42'),
(733, 'Ezreal makes great use of Press the Attack as he can easily proc it with an Auto->[Q]->Auto. This quick proc makes all following [Q]s and BotRK attacks incredibly powerful at killing any target.', 123, 2, '2017-12-24 17:16:42', '2017-12-24 17:16:42'),
(734, 'Overheal is a great rune for keeping yourself healthy going into a trade and synergizes well with Legend: Bloodline and BotRK''s Life Steal.', 123, 5, '2017-12-24 17:16:42', '2017-12-24 17:16:42'),
(735, 'Ezreal has always made great use of Life Steal thanks to the high base-damage on [Q]. Bloodline here should help you continue to sustain through the early-game as well. Heading into the mid-game your damage+healing should allow you to duel just about anyone.', 123, 10, '2017-12-24 17:16:42', '2017-12-24 17:16:42'),
(736, 'Last Stand is a great rune choice when you find yourself fighting a target that is chasing you down.', 123, 13, '2017-12-24 17:16:42', '2017-12-24 17:16:42'),
(737, 'Ezreal probably loves CDR more than any other AD Carry does. CDR means more survivability and way more damage. Transcendence let''s you easily hit 40% CDR with Tri-Force + Lucidity Boots.', 123, 32, '2017-12-24 17:16:42', '2017-12-24 17:16:42'),
(738, 'This loadout is all about pumping out as much damage as possible and there is no rune that does this better than the scaling nature of Gathering Storm. Ez doesn''t usually build a lot of raw AD so Storm does a great job of making up for that in long games.', 123, 37, '2017-12-24 17:16:42', '2017-12-24 17:16:42'),
(739, 'Kleptomancy procs exactly like Sheen resulting in Ezreal being one of the biggest abusers of the proc though the use of [Q]. ', 124, 52, '2017-12-24 17:16:42', '2017-12-24 17:16:42'),
(740, 'Klepto potions plus Biscuits means you shouldn''t have to purchase many potions at all with earned gold, letting you bypass the Lending fee of Future''s Market and hit item power-spikes insanely early.', 124, 54, '2017-12-24 17:16:42', '2017-12-24 17:16:42'),
(741, '', 124, 57, '2017-12-24 17:16:42', '2017-12-24 17:16:42'),
(742, 'Ezreal probably loves CDR more than any other AD Carry does. CDR means more survivability and way more damage. The slight Summoner cooldown also provides safety in your weak early game.', 124, 59, '2017-12-24 17:16:42', '2017-12-24 17:16:42'),
(743, 'Triumph allows you to stick to the edges of teamfights to pick off kills and assists, even when low health and continue on fighting. In early lane fights the heal can be the difference between a double kill and losing lane.', 124, 6, '2017-12-24 17:16:42', '2017-12-24 17:16:42'),
(744, 'Coup De Grace allows you to snipe and pick off low health targets with the massive damage of your [Q].', 124, 11, '2017-12-24 17:16:42', '2017-12-24 17:16:42'),
(745, 'Thanks to his passive, Bard is able to easily proc electrocute for huge burst with either Auto->[Q] or Auto->Auto.', 125, 14, '2017-12-24 17:16:42', '2017-12-24 17:16:42'),
(746, 'Once you''ve collected 5 chimes Bard''s passive auto attacks slow, proccing Cheap Shot. Paired with Bard''s [Q] you''ll be permanently slowing and dealing True Damage to any target you wish.', 125, 17, '2017-12-24 17:16:42', '2017-12-24 17:16:42'),
(747, 'Zombie Ward is a great rune choice in this slot as it synergizes well with Sightstone and Bard''s natural roaming nature, allowing him to get deeper wards more often.', 125, 20, '2017-12-24 17:16:42', '2017-12-24 17:16:42'),
(748, 'Relentless Hunter further empowers Bard''s ability to roam the map, collect chimes, and get to any fight. ', 125, 25, '2017-12-24 17:16:42', '2017-12-24 17:16:42'),
(749, 'Scorch on Bard empowers your early laning phase trades to do big damage with kill potential with sustained harass damage.', 125, 35, '2017-12-24 17:16:42', '2017-12-24 17:16:42'),
(750, 'Bard can often run low on mana in lane if you''re taking a lot of trades due to a high mana cost on [W]. If you cast [W] when Manaflow Band is available you''ll sustain quite well allowing for more aggressive trades.', 125, 30, '2017-12-24 17:16:42', '2017-12-24 17:16:42'),
(751, 'Guardian synergizes well with Taric''s [W] when looking to block big incoming damage.', 126, 40, '2017-12-24 17:16:42', '2017-12-24 17:16:42'),
(752, 'Taric loves to build Increased Healing/Shielding items so proccing Font of Life with [E] will result is a lot of healing for your teammates when you they hit the enemy champions.', 126, 43, '2017-12-24 17:16:42', '2017-12-24 17:16:42'),
(753, 'Iron Skin grants Armor to allow healthy trading in lane as well as great synergy with [W]. If youre playing into a passive lane (like Janna) you can be greedy and opt for less lane power and strong mid-game with Conditioning.', 126, 44, '2017-12-24 17:16:42', '2017-12-24 17:16:42'),
(754, 'Revitalize synergizes well with both [Q] healing strength and Locket shielding. If you''re expecting to take a lot of poke in lane, Second Wind is a good option for sustain.', 126, 48, '2017-12-24 17:16:42', '2017-12-24 17:16:42'),
(755, 'A large portion of a support''s power comes from item actives and Ingenious Hunter helps to make sure you have Locket and Redemption up as often as possible, granting 40% item/trinket CDR at max stacks.', 126, 24, '2017-12-24 17:16:42', '2017-12-24 17:16:42'),
(756, 'Zombie ward is a great rune choice on any support as it scales your vision score incredibly well along side Sightstone.', 126, 20, '2017-12-24 17:16:42', '2017-12-24 17:16:42'),
(757, 'A successful Morgana [Q] results in a guaranteed landed Comet and a significant amount of damage.', 127, 27, '2017-12-24 17:16:42', '2017-12-24 17:16:42'),
(758, 'Manaflow Band is a great rune choice is this slot for Mage supports because to provides a significant amount of mana sustain for lane harass and skirmishes. If the enemy team has multiple AP threats you can take Nullifying Orb.', 127, 30, '2017-12-24 17:16:42', '2017-12-24 17:16:42'),
(759, 'Supports build a lot of CDR items thanks to the raw utility of their kits. More CDR = more power and with Transcendence you have no fear of over-capping. Celerity is a great secondary option for roams and picks.', 127, 32, '2017-12-24 17:16:42', '2017-12-24 17:16:42'),
(760, 'If you choose to put a point in [W] early Scorch becomes incredibly easy to proc on cooldown for lane harass.', 127, 35, '2017-12-24 17:16:42', '2017-12-24 17:16:42'),
(761, 'A free early Statis is a god-send for Morgana to land a huge [R]. The free Stopwatch also means that Zhonya''s is that much closer to completion.', 127, 55, '2017-12-24 17:16:42', '2017-12-24 17:16:42'),
(762, 'Doubling down on CDR and a little extra summoner cooldown for Flash->[R] is great here for Morg. Magical Footwear is also a great option here if you''re looking to save money and hit combat stat power-spikes sooner.', 127, 59, '2017-12-24 17:16:43', '2017-12-24 17:16:43'),
(763, 'Non-damaging spells count toward proccing Phase rush so a simple [W]->[E]->Auto will let you hunt down your target and resist slows.', 128, 28, '2017-12-24 17:16:43', '2017-12-24 17:16:43'),
(764, 'More [R]s means more reliable damage on command, and more surviveability.', 128, 31, '2017-12-24 17:16:43', '2017-12-24 17:16:43'),
(765, 'More stacks ASAP. Nasus loves every CDR defensive item and with transcendence you don''t have to worry about over-capping.', 128, 32, '2017-12-24 17:16:43', '2017-12-24 17:16:43'),
(766, 'Usually when playing Nasus you''re looking to come online in the mid to late game. Gathering Storm scales incredibly well along side you while you stack away.', 128, 37, '2017-12-24 17:16:43', '2017-12-24 17:16:43'),
(767, 'Nasus is all about opening the gates. Demolish + [Q] means you''re shredding towers in no-time.', 128, 42, '2017-12-24 17:16:43', '2017-12-24 17:16:43'),
(768, 'Second Wind is a great sustain rune when playing into difficult match-ups. Like Doran''s Shield, it allows you to mitigate a lot of the chip damage you might take.', 128, 49, '2017-12-24 17:16:43', '2017-12-24 17:16:43'),
(769, 'Like an Enchanter support, Ivern''s power revolves largely around his [E] shield and Summon Aery empowers those shields to be even stronger.', 129, 26, '2017-12-24 17:16:43', '2017-12-24 17:16:43'),
(770, 'The Ultimate hat here on Ivern allows you to have Daisey more often for tower dives and skirmishes.', 129, 31, '2017-12-24 17:16:43', '2017-12-24 17:16:43'),
(771, 'CDR is vital to Ivern''s strength in fights. Post 10mins. you should be able to get off several more shield with [E] in every skirmish.', 129, 32, '2017-12-24 17:16:43', '2017-12-24 17:16:43'),
(772, 'Scorch provides an considerable bit of damage in early skirmishes.', 129, 35, '2017-12-24 17:16:43', '2017-12-24 17:16:43'),
(773, 'Ritalize synergizes well with Ivern, empowering both his [E] as well as item build (Locket, Redemption, Athene''s, etc.).', 129, 48, '2017-12-24 17:16:43', '2017-12-24 17:16:43'),
(774, 'Conditioning on Ivern provides him with solid all-around resistances to take skirmishes over objectives in any lane.', 129, 46, '2017-12-24 17:16:43', '2017-12-24 17:16:43'),
(775, 'Rammus is all about engaging with the CC of his [Q] and [E] and the taunt should last long enough to keep your target in the explosion radius.', 130, 39, '2017-12-24 17:16:43', '2017-12-24 17:16:43'),
(776, 'Rammus'' biggest counters are CC and slows applied to him while rolling in. Unflinching allows you sure up some of those weaknesses.', 130, 41, '2017-12-24 17:16:43', '2017-12-24 17:16:43'),
(777, 'Rammus benefits massively from both Armor and Magic resist, scaling his [W] to make him an unkillable machine.', 130, 46, '2017-12-24 17:16:43', '2017-12-24 17:16:43'),
(778, 'Health is especially strong on Rammus as it scales multiplicatively with resists, which he gets a ton of from his [W].', 130, 47, '2017-12-24 17:16:43', '2017-12-24 17:16:43'),
(779, 'Rammus'' ability to repeatedly Slow/CC enemy champions with [Q], [E], and [R] allows him to proc bonus Cheap Shot True Damage in nearly every skirmish several times, granting you the extra bit of damage for any kill.', 130, 17, '2017-12-24 17:16:43', '2017-12-24 17:16:43'),
(780, 'Relentless Hunter''s stacking Movement Speed combined with your [Q] allows you to get to any fight or skirmish on the map at the drop of a hat.', 130, 25, '2017-12-24 17:16:43', '2017-12-24 17:16:43'),
(781, 'Evelynn is able to easily proc Electrocute when coming out of stealth with a [W]->[Q]->[Q] combo for an extra burst of damage to finish her target.', 131, 14, '2017-12-24 17:16:43', '2017-12-24 17:16:43'),
(782, 'Exiting Stealth grants the Sudden Impact bonus Magic Penetration that Eve can use to assassinate the enemy champion.', 131, 19, '2017-12-24 17:16:43', '2017-12-24 17:16:43'),
(783, 'Clearing wards is a key part of a jungler''s position. Pair that with assassination potential and you''ll be racking of plenty of bonus Ability Power to snowball the game.', 131, 22, '2017-12-24 17:16:43', '2017-12-24 17:16:43'),
(784, 'Movement Speed is a key aspect to getting around the map to meet and initiate fights.', 131, 25, '2017-12-24 17:16:43', '2017-12-24 17:16:43'),
(785, 'Evelynn''s [R] offers massive offensive power with it high base execution damage, and great defensive utility with it''s ability to quickly blink you over a wall to get away.', 131, 31, '2017-12-24 17:16:43', '2017-12-24 17:16:43'),
(786, 'The bonus Movement Speed from Celerity allows you to more quickly and effectively clear the jungle so you can properly position for ganks.', 131, 33, '2017-12-24 17:16:43', '2017-12-24 17:16:43'),
(787, 'Rakan excels at engaging and CCing the enemy team, but he naturally needs help survive the engage. The resists provided by Aftershock let you get in and get out.', 132, 39, '2017-12-24 17:16:43', '2017-12-24 17:16:43'),
(788, 'Rakan naturally itemizes to empower his heals and shields and thanks to his AoE CC he is able to proc Font of Life on multiple targets and provide even more healing.', 132, 43, '2017-12-24 17:16:43', '2017-12-24 17:16:43'),
(789, 'Condition is a great all-around defensive rune that synergizes with Aftershock to help you survive engages that you otherwise shouldn''t''.', 132, 46, '2017-12-24 17:16:43', '2017-12-24 17:16:43'),
(790, 'Revitalize is great at empowering Rakan''s heals from items, Font of Life, and [Q] as well as his passive and [E] shielding.', 132, 48, '2017-12-24 17:16:43', '2017-12-24 17:16:43'),
(791, 'Rakan naturally has long cooldowns on his abilities because they are naturally so powerful. The more CDR you''re able to stack the more utility you provide.', 132, 32, '2017-12-24 17:16:43', '2017-12-24 17:16:43'),
(792, 'The Ultimate Hat doubles down on Rakan''s signature of engaging teamfights with his ult. More ults = more teamfight wins.', 132, 31, '2017-12-24 17:16:43', '2017-12-24 17:16:43'),
(793, 'Gnar loves to build Frozen Mallet and this rune allows you to bypass the item while still getting the same benefits. Hit an auto-attack and chase down your enemy proccing as many [W]''s as possible.', 133, 51, '2017-12-24 17:16:43', '2017-12-24 17:16:43'),
(794, 'Perfect Timing serves double duty in both providing a clutch 1-time Zhonya''s active as well as saving you gold on purchasing Gargoyle''s Stoneplate.', 133, 55, '2017-12-24 17:16:43', '2017-12-24 17:16:43'),
(795, '', 133, 57, '2017-12-24 17:16:43', '2017-12-24 17:16:43'),
(796, 'Approach Velocity is actually a very valuable and abusable rune when paired with Glacial Augment. Glacial''s slow paired with Approach''s Movement Speed will let you hit land more auto attacks than otherwise possible', 133, 60, '2017-12-24 17:16:43', '2017-12-24 17:16:43'),
(797, 'Gnar loves a lot of attack speed to abuse his range and proc his [W] as often as possible in melee matchups. With Glacial Augment these rune becomes even more powerful.', 133, 8, '2017-12-24 17:16:43', '2017-12-24 17:16:43'),
(798, 'Between Press the Attack and repeated procs of Gnar''s [W] you should be able to quickly whittle the enemy champion to 40% health and get the bonus damage to kill them.', 133, 11, '2017-12-24 17:16:43', '2017-12-24 17:16:43'),
(799, 'Gnar''s biggest Top Lane strength is abusing melee champions with his range. Press the Attack''s exposed bonus damage makes Gnar''s [W] an incredible threat.', 134, 2, '2017-12-24 17:16:43', '2017-12-24 17:16:43'),
(800, 'Triumph means more health and gold on kills and because you''re looking to duel, kill, and escape safely this is the best option in this row.', 134, 6, '2017-12-24 17:16:43', '2017-12-24 17:16:43'),
(801, 'Gnar loves a lot of attack speed to abuse his range and proc his [W] as often as possible in melee matchups.', 134, 8, '2017-12-24 17:16:43', '2017-12-24 17:16:43'),
(802, 'Between Press the Attack and repeated procs of Gnar''s [W] you should be able to quickly whittle the enemy champion to 40% health and get the bonus damage to kill them.', 134, 11, '2017-12-24 17:16:43', '2017-12-24 17:16:43'),
(803, 'Gnar shines when he''s able to pressure his lane, split push, and take towers. Demolish is key in taking those towers and scales well with Gnar''s natural health stacking.', 134, 42, '2017-12-24 17:16:43', '2017-12-24 17:16:43'),
(804, 'Conditioning is a great all-around defensive rune choice. If you''re looking for more lane pressure feel free to take Iron Skin or Mirror Shell depending on the matchup.', 134, 46, '2017-12-24 17:16:43', '2017-12-24 17:16:43'),
(805, 'Shen naturally takes great advantage of Grasp''s empowered auto-attacks thanks to the majority of his power being in his [Q].', 135, 38, '2017-12-24 17:16:43', '2017-12-24 17:16:43'),
(806, 'This loadout focuses on split push pressure thanks to a lower cooldown [R]. Demolish excels in situations where you''re able to split and take towers.', 135, 42, '2017-12-24 17:16:43', '2017-12-24 17:16:43'),
(807, 'Conditioning is an all-around solid defensive rune, giving up early weak resists for stronger resists later. These resists also scale well with Shen''s natural health stacking.', 135, 46, '2017-12-24 17:16:43', '2017-12-24 17:16:43'),
(808, 'Shen loves to stack health as it improves his passive shield and tankiness. Overgrowth scales incredibly well with high-health items and champions. ', 135, 47, '2017-12-24 17:16:43', '2017-12-24 17:16:43'),
(809, 'Transcendence + The Ultimate hat will go a long way in getting you to CDR cap and above so you''re able to continue splitting an enter any fight with [R].', 135, 32, '2017-12-24 17:16:43', '2017-12-24 17:16:43'),
(810, 'Shen''s [R] has a naturally long cooldown so every percentage of CDR from The Ultimate hat has even more value.', 135, 31, '2017-12-24 17:16:43', '2017-12-24 17:16:43'),
(811, 'Singed''s unique play-style allows him to excel in situations where he is able to cheese and split-push. Spellbook allows him to not only cheese for a kill by taking ignite, but also gives him the freedom to use his Summoner Spells more liberally thanks to the bonus Summoner CDR.', 136, 50, '2017-12-24 17:16:43', '2017-12-24 17:16:43'),
(812, 'Biscuit Delivery not only grants a massive amount Health regeneration but mana as well. Combined with the Inspiration''s +20% potion bonus and Dark Seal, you can easily double the strength of all potions and Biscuits.', 136, 54, '2017-12-24 17:16:43', '2017-12-24 17:16:43'),
(813, 'Singed likes to run, and if you''re able to effectively make it to the 10min mark without boots you''ll be running even faster with the enhanced boots.', 136, 56, '2017-12-24 17:16:43', '2017-12-24 17:16:43'),
(814, 'Celestial Body allows singed to endure a bit of harassment in the early-game so that he can get to the point of unstoppable split-pushing.', 136, 61, '2017-12-24 17:16:43', '2017-12-24 17:16:43'),
(815, 'Unflinching synergizes incredibly well with both Spellbook''s play-style of active Summoner use and granting Singed a large amount of Tenacity/Slow Resistance, his biggest counters.', 136, 41, '2017-12-24 17:16:43', '2017-12-24 17:16:43'),
(816, 'Iron Skin allows you to take a small amount of less damage from minions while proxying. You''re also able to easily proc the bonus Armor effect thanks to Biscuits and Refillable.', 136, 44, '2017-12-24 17:16:43', '2017-12-24 17:16:43'),
(817, 'Braum naturally spends a lot of time near his teammates thanks to his [W] and [E]. The shield Provided by Guardian allows you and your AD Carry to absorb a bit of damage before you start blocking with [E].', 137, 40, '2017-12-24 17:16:43', '2017-12-24 17:16:43'),
(818, 'Between his Passive, [Q], and [R] Braum has a number of means of marking enemies for healing with Font of Life.', 137, 43, '2017-12-24 17:16:43', '2017-12-24 17:16:43'),
(819, 'Braum spends a lot of time and health blocking auto attacks with [E] resulting in him taking a majority of Physical damage. Iron Skin allows you to come out the other end of that healthy.', 137, 44, '2017-12-24 17:16:43', '2017-12-24 17:16:43'),
(820, 'Second Wind''s massive mid-fight health sustain allows you to absorb the brunt of your team''s incoming damage when your [E] is up and come out the other side healthy enough to keep fighting.', 137, 49, '2017-12-24 17:16:43', '2017-12-24 17:16:43'),
(821, 'The massive bonus health from Celestial Body contributes to the healing and shielding on Font of Life and Guardian.', 137, 61, '2017-12-24 17:16:43', '2017-12-24 17:16:43'),
(822, 'Magical Footwear is an interesting rune choice in that it can often be seen as a raw value of 350g allowing you to invest that into other items.', 137, 56, '2017-12-24 17:16:43', '2017-12-24 17:16:43'),
(823, 'Leona''s all-in style of gameplay heavily revolves around jumping on your target and killing them as fast as possible. Aftershock''s explosion damage further pushes your ability to kill the enemy after CCing them.', 138, 39, '2017-12-24 17:16:43', '2017-12-24 17:16:43'),
(824, 'Engage your target, kill, and punish them by dealing massive amounts of damage to the tower while they respawn.', 138, 42, '2017-12-24 17:16:43', '2017-12-24 17:16:43'),
(825, 'Conditioning on Leona is great once you''ve hit the 10min mark as both the bonus Armor and MR contribute to your [W] strength.', 138, 46, '2017-12-24 17:16:43', '2017-12-24 17:16:43'),
(826, 'After engaging, Second Wind allows you to regenerate health mid-fight and chase down your target.', 138, 49, '2017-12-24 17:16:43', '2017-12-24 17:16:43'),
(827, 'Leona''s all-in and CC heavy play-style makes Cheap Shot a great option for that extra bit of damage when looking to make a pick and kill your target as quickly as possible.', 138, 17, '2017-12-24 17:16:43', '2017-12-24 17:16:43'),
(828, 'Relentless Hunter''s extra bit of out of combat Movement Speed empowers your ability as Leona to roam the map and easily get into range to land your [E] and make picks.', 138, 25, '2017-12-24 17:16:43', '2017-12-24 17:16:43'),
(829, 'Aftershock, like Courage of the Colossus, is a great keystone choice for Alister as it gives you defenses upon engaging and a bit of extra damage thanks to the explosion.', 139, 39, '2017-12-24 17:16:43', '2017-12-24 17:16:43'),
(830, 'Font of Life is a solid rune choice for Alistar as both his  [W], [Q], and stun on [E] will proc the mark providing a lot of healing for your team if you''re able to hit multiple enemies.', 139, 43, '2017-12-24 17:16:43', '2017-12-24 17:16:43'),
(831, 'Icon Skin is a great rune choice for laning as the bonus Armor lets you take efficient trades.', 139, 44, '2017-12-24 17:16:43', '2017-12-24 17:16:43'),
(832, 'Revitaltize is a suprisingly good rune choice here on Alistar. He gains bonus healing on his passive as well as Font of Life and his item actives (Lock/Redemption/Face of the Mountain).', 139, 48, '2017-12-24 17:16:43', '2017-12-24 17:16:43'),
(833, 'Supports ward more than any other position in the game and Zombie ward scales quite well with the number of wards you place throughout the game.', 139, 20, '2017-12-24 17:16:43', '2017-12-24 17:16:43'),
(834, 'Because Alistar''s item choices often include huge actives like Locket and Face of the Mountain, Ingenious Hunter + Ruby Sightstone gives you insane uptime on those big teamfight winning items.', 139, 24, '2017-12-24 17:16:43', '2017-12-24 17:16:43'),
(835, 'Darius''s reset nature on his [R] is prime for Dark Harvest thanks to its perpetually stacking on-champion-kill damage proc. When executed properly, each of your[R] casts will gain a significant amount of damage.', 140, 16, '2017-12-24 17:16:43', '2017-12-24 17:16:43'),
(836, 'A bit of extra true damage is just what Darius wants in this build, being all about kills and snowballing. [W], Deadman''s Plate, and Righteous Glory all contribute to you doing more True Damage. ', 140, 17, '2017-12-24 17:16:43', '2017-12-24 17:16:43'),
(837, 'Kills, kill, and more kill. this loadout is all about snowballing and taking over the game and Eyeball collection rewards you for that.', 140, 22, '2017-12-24 17:16:43', '2017-12-24 17:16:43'),
(838, 'Darius is a Juggernaut who heavily relies on the healing from his [Q] to sustain through a fight. Ravenous Hunter allows you to push that further while adding some healing to your other abilities as well.', 140, 23, '2017-12-24 17:16:43', '2017-12-24 17:16:43'),
(839, 'Darius tends to heal quite a bit through the combination of his [Q] and Spirit Visage and Revitalize empowers that, especially in fights where you run low on health.', 140, 48, '2017-12-24 17:16:43', '2017-12-24 17:16:43'),
(840, 'Like a typical Juggernaut you''re incredible immobile so resistances pay off huge when chasing your target down. Feel free to take Iron Skin or Mirror shell based on the enemy team comp.', 140, 46, '2017-12-24 17:16:43', '2017-12-24 17:16:43'),
(841, 'Darius often struggles sticking to his targets to finish the kill. Thankfully with Phase rush a simple [E] -> Auto -> [W] will proc the move speed to allow you to position for your [Q] and chase them down.', 141, 28, '2017-12-24 17:16:43', '2017-12-24 17:16:43'),
(842, 'While Darious doesn''t typically suffer from mana issues the other options in the tier aren''t much better. If the enemy team has multiple AP threats, take Nullifying Orb here.', 141, 30, '2017-12-24 17:16:43', '2017-12-24 17:16:43'),
(843, 'Celerity pairs very nicely with Phase Rush and Darius''s item build (Black Cleaver Movement Speed, Deadman''s, etc.) the Movement Speed from these items grant you more AD, who doesn''t love that?', 141, 33, '2017-12-24 17:16:43', '2017-12-24 17:16:43'),
(844, 'Again, this slot doesn''t have too many great options for Darius, but Gathering Storm is probably the best. It allows you to opt into more defensive items and let the Rune do the heavy lifting for damage in late games.', 141, 37, '2017-12-24 17:16:43', '2017-12-24 17:16:43'),
(845, 'Darius tends to heal quite a bit through the combination of his [Q] and Spirit Visage and Revitalize empowers that, especially in fights where you run low of health.', 141, 48, '2017-12-24 17:16:43', '2017-12-24 17:16:43'),
(846, 'Like a typical Juggernaut you''re incredible immobile so resistances pay off huge when chasing your target down. Feel free to take Iron Skin or Mirror shell based on the enemy team comp.', 141, 46, '2017-12-24 17:16:43', '2017-12-24 17:16:43'),
(847, 'With the use of his [W] Jayce is easily able to quickly proc the bonus damage and empower the rest of his combo.', 142, 2, '2017-12-24 17:16:43', '2017-12-24 17:16:43'),
(848, 'The combination of Presence of Mind and Manaflow Band relieve you of having to delay your damage by purchasing a tear for Mana sustain.', 142, 7, '2017-12-24 17:16:43', '2017-12-24 17:16:43'),
(849, 'Jayce''s biggest weakness is Crowd Control. Legend: Tenacity paired with Mercury Treads means you should be able to escape most ganks with relative safety.', 142, 9, '2017-12-24 17:16:43', '2017-12-24 17:16:43'),
(850, 'Jayce excels in matchups into tanks where he can abuse his ranged kit. Cut Down brings some extra damage to kill those tanks.', 142, 12, '2017-12-24 17:16:43', '2017-12-24 17:16:43'),
(851, 'As a form-swapping champion, Jayce''s damage comes from repeated casts of his abilities so CDR is a must have.', 142, 32, '2017-12-24 17:16:43', '2017-12-24 17:16:43'),
(852, 'Combined with Presence of Mind, you should have little issues with mana sustain while still being able to harass your opponent with abilities.', 142, 30, '2017-12-24 17:16:43', '2017-12-24 17:16:43'),
(853, 'Yasuo can proc the bonus damage on Press the attack extremely quickly with a [Q] + Auto [Q] allowing you to cut down your foes. ', 143, 2, '2017-12-24 17:16:43', '2017-12-24 17:16:43'),
(854, 'Overheal pairs very nicely with some of our other rune choices like Legend: Bloodline and Revitalize to keep us healthy from poke.', 143, 5, '2017-12-24 17:16:43', '2017-12-24 17:16:43'),
(855, 'Top lane, especially again bruisers, can often be a war of attrition where sustain over a long period of time reign supreme, and Bloodline gives us the Lifesteal to power through.', 143, 10, '2017-12-24 17:16:43', '2017-12-24 17:16:43'),
(856, 'Tanks often dominate the top lane attrition fight and Cut Down excels at chopping those champions at the knees.', 143, 12, '2017-12-24 17:16:43', '2017-12-24 17:16:43'),
(857, 'Freely swap this out with Mirror Shell depending on your lane matchup (Armor or MR) to further out-trade your lane opponent', 143, 44, '2017-12-24 17:16:43', '2017-12-24 17:16:43'),
(858, 'Revitalize synergizes so incredibly well with our Life Steal rune setup and Yasuo''s passive. Pair that with a BotRK and you''ll be hard-pressed to leave lane ever again.', 143, 48, '2017-12-24 17:16:43', '2017-12-24 17:16:43'),
(859, 'Yasuo can proc the bonus damage on Press the attack extremely quickly with a [Q] + Auto [Q] allowing you to cut down your foes. ', 144, 2, '2017-12-24 17:16:43', '2017-12-24 17:16:43'),
(860, 'Because this loadouts excels at killing and moving on, Triumph helps you to stay in the fight after kills and continue dealing damage.', 144, 6, '2017-12-24 17:16:43', '2017-12-24 17:16:43'),
(861, 'Naturally Yasuo love building Attack Speed. More autos means more crits which means more kills.', 144, 8, '2017-12-24 17:16:43', '2017-12-24 17:16:43'),
(862, 'This loadout is all about punishing weak targets swiftly and painlessly. After the kill, move on to the next target.', 144, 11, '2017-12-24 17:16:43', '2017-12-24 17:16:43'),
(863, 'Yasuo is arguably the biggest abuser of Sudden Impact. Think of it as permanent Armor Penetration on every cast of [E] .', 144, 19, '2017-12-24 17:16:43', '2017-12-24 17:16:43'),
(864, 'Ghost poro is a great choice in assisting you to avoid early game ganks so you can scale to your kill potential.', 144, 21, '2017-12-24 17:16:43', '2017-12-24 17:16:43'),
(865, 'Aftershock is a fantastic keystone choice for Gragas because it provides him with the defenses needed in an engage, as well as a bit of extra offensive power with the explosion.', 145, 39, '2017-12-24 17:16:43', '2017-12-24 17:16:43'),
(866, 'Gragas can very easily apply Font of Life to a large number of targets from his [Q], [E], and [R] results in a lot of healing in teamfights.', 145, 43, '2017-12-24 17:16:43', '2017-12-24 17:16:43'),
(867, 'Gragas naturally builds a good amount of health and that health is multiplicative with every defensive stat he gets from Conditioning.', 145, 46, '2017-12-24 17:16:43', '2017-12-24 17:16:43'),
(868, 'Revitalize synergizes incredibly well increasing the healing of both Gragas'' passive and Font of Life healing.', 145, 48, '2017-12-24 17:16:43', '2017-12-24 17:16:43'),
(869, 'Now this is largely a stylistic choice rune. Because Gragas likes to burn his flash as often as possible for an engage, Hex Flash gives you the option to find other entrances into a to lane gank when Flash in on cooldown.', 145, 53, '2017-12-24 17:16:43', '2017-12-24 17:16:43'),
(870, 'Through the combination of itemization and skill kit, Gragas can very effectively make use of every CDR stat on Cosmic Insight.', 145, 59, '2017-12-24 17:16:43', '2017-12-24 17:16:43'),
(871, 'Due to his natural reset nature, Kha''Zix makes great use of Dark Harvest''s perpetual damage increase upon killing enemy champions.', 146, 16, '2017-12-24 17:16:43', '2017-12-24 17:16:43'),
(872, 'Through the use of his [R] and [E] Kha''Zix is able to keep Sudden Impact''s Lethality buff for the entirety of almost all fights.', 146, 19, '2017-12-24 17:16:43', '2017-12-24 17:16:43'),
(873, 'Kill wards, kills champion, gain damage. Kha loves to check all of those boxes so Eyeball Collection is a no-brainer.', 146, 22, '2017-12-24 17:16:43', '2017-12-24 17:16:43'),
(874, 'Ingenious Hunter provides an incredible amount of item CDR. A few early kills and you''ll be clearing every ward with Duskblade and entering every lane with Ghostblade.', 146, 24, '2017-12-24 17:16:43', '2017-12-24 17:16:43'),
(875, 'Execution on squishy targets is the name of the game for Kha''Zix so Coup De Grace adds the most damage for ending those target''s lives ASAP.', 146, 11, '2017-12-24 17:16:43', '2017-12-24 17:16:43'),
(876, 'Because you''re naturally looking to kill ASAP, reset, and jump to the next target you''ll want to make sure you''re healthy enough to move on and Triumph plays up on that by giving you a lot of health after each kill.', 146, 6, '2017-12-24 17:16:43', '2017-12-24 17:16:43'),
(877, 'Elise has a very assassain-heavy play style so Electrocute suits her well as she can quickly and easily proc it.', 147, 14, '2017-12-24 17:16:43', '2017-12-24 17:16:43'),
(878, 'In spider form, Elise''s [Q] acts as a dash granting her BOTH Magic Pen. and Lethality, making her [W] autos do a ton of damage.', 147, 19, '2017-12-24 17:16:43', '2017-12-24 17:16:43'),
(879, 'Jungle''s live and die by ward control throughout the jungle so why not be rewarded with more damage by doing so?', 147, 22, '2017-12-24 17:16:43', '2017-12-24 17:16:43'),
(880, 'Combined with her [W] in spider form, Elise can out duel most other Junglers in 1v1 situations thanks to all of this combined healing.', 147, 23, '2017-12-24 17:16:43', '2017-12-24 17:16:43'),
(881, 'Elise loves CDR in her item build, largely because if she is able to get multiple spell rotations off in a skirmish, she''s sure to win.', 147, 32, '2017-12-24 17:16:43', '2017-12-24 17:16:43'),
(882, 'Waterwalking is an interesting rune choice in that it gives you a lot of power in a very specific scenario. Control the jungle and take fights near the river to win them all.', 147, 36, '2017-12-24 17:16:43', '2017-12-24 17:16:43'),
(883, 'Press the Attack is a great replacement to Fervor for Warwack as he''s able to easily proc it with an auto + [Q] + auto or [R].', 148, 2, '2017-12-24 17:16:43', '2017-12-24 17:16:43'),
(884, 'Combined with the heal from your [Q] Overheal provides a stable shield to keep you healthy entering into fights from the jungle.', 148, 5, '2017-12-24 17:16:43', '2017-12-24 17:16:43'),
(885, 'As an immobile melee champion you''re subject to a lot of CC. The tenacity from his rune will help you stick to your targets.', 148, 9, '2017-12-24 17:16:43', '2017-12-24 17:16:43'),
(886, 'Because Warwick naturally heals and builds health he gets the most damage value from Coup De Grace.', 148, 11, '2017-12-24 17:16:43', '2017-12-24 17:16:43'),
(887, 'Unflinching is a rune that synergizes well with most Junglers as smite casts will grant you the Tenacity and Slow resist buff when sprinting in for a gank.', 148, 41, '2017-12-24 17:16:43', '2017-12-24 17:16:43'),
(888, 'More Armor and Magic Resist is strong and is multiplicative with the extra shielding and healing from Overheal and Font of Life.', 148, 46, '2017-12-24 17:16:43', '2017-12-24 17:16:43'),
(889, 'This is pretty obvious. More attacks means more passive procs which means more kills. Right up Yi''s alley.', 149, 3, '2017-12-24 17:16:43', '2017-12-24 17:16:43'),
(890, 'The heal from Triumph after a kill lets you reset and continue hunting down your next target.', 149, 6, '2017-12-24 17:16:43', '2017-12-24 17:16:43'),
(891, 'Yi''s favorite stat is Attack Speed so this is rune choice is a no-brainer.', 149, 8, '2017-12-24 17:16:43', '2017-12-24 17:16:43'),
(892, 'Because Yi is an assassin, he wants to end his target''s life as quickly as possible and Coup De Grace is the go-to for that.', 149, 11, '2017-12-24 17:16:43', '2017-12-24 17:16:43'),
(893, 'Yi''s [Q] grants him free Lethality upon arrival to provide more damage and end your target''s life.', 149, 19, '2017-12-24 17:16:44', '2017-12-24 17:16:44'),
(894, 'Ward clearing and kills means more damage and because Yi like to snowball and take over games Eyeball collection is a great choice.', 149, 22, '2017-12-24 17:16:44', '2017-12-24 17:16:44'),
(895, 'Jarvan makes excellent use of Electrocute in all scenarios as his [W] count as a hit ability, so a basic combo at level 3 procs it.', 150, 14, '2017-12-24 17:16:44', '2017-12-24 17:16:44'),
(896, 'Both Jarvan''s [E] + [Q] combo and [R] proc the bonus lethality for more kill potential.', 150, 19, '2017-12-24 17:16:44', '2017-12-24 17:16:44'),
(897, 'Placing pinks and clearing wards is key to any successful Jungler, so why not earn some AD in the process?', 150, 22, '2017-12-24 17:16:44', '2017-12-24 17:16:44'),
(898, 'Getting around the map to join fights and match roams is important as any Jungler.', 150, 25, '2017-12-24 17:16:44', '2017-12-24 17:16:44'),
(899, 'The bonus healing from Triumph allows you to dive the backline for the quick assassination kill and survive with enough health to get out.', 150, 6, '2017-12-24 17:16:44', '2017-12-24 17:16:44'),
(900, 'The bonus attack speed from Alacrity grants you a much faster/healthy jungle clear allowing you to take earlier trades and ganks.', 150, 8, '2017-12-24 17:16:44', '2017-12-24 17:16:44'),
(901, 'Fleet Footwork is a fantastic rune choice for lane sustain and the movement speed needed to get into position to fight.', 151, 4, '2017-12-24 17:16:44', '2017-12-24 17:16:44'),
(902, 'Overheal pairs very nicely with Fleet Footwork for a reliable shield to keep you healthy going into trades/fights.', 151, 5, '2017-12-24 17:16:44', '2017-12-24 17:16:44'),
(903, 'Legend: Alacrity is the go-to on pretty much every AD Carry, especially Ashe who loves to auto as much as possible.', 151, 8, '2017-12-24 17:16:44', '2017-12-24 17:16:44'),
(904, 'Cut Down is a great rune choice to take into a game against multiple tank who will be stacking any amount of health.', 151, 12, '2017-12-24 17:16:44', '2017-12-24 17:16:44'),
(905, 'This loadout is all about utility and spamming your [R]. Well, Ultimate Hat is right up that alley.', 151, 31, '2017-12-24 17:16:44', '2017-12-24 17:16:44'),
(906, 'Ashe is one of the few ADCs who prioritize CDR, largely because her abilities provide so much utility. Transcendence let''s us hit cap ASAP without worrying about going over.', 151, 32, '2017-12-24 17:16:44', '2017-12-24 17:16:44'),
(907, 'Thanks to the slow from Ashe''s passive she''s able to easily stay in range to proc the bonus damage.', 152, 2, '2017-12-24 17:16:44', '2017-12-24 17:16:44'),
(908, 'Overheal is an all-around great rune choices on most AD Carries. The shield while small, negates a lot of damage over the course of the game.', 152, 5, '2017-12-24 17:16:44', '2017-12-24 17:16:44'),
(909, 'Legend: Alacrity is the go-to on pretty much every AD Carry, especially Ashe who loves to auto as much as possible.', 152, 8, '2017-12-24 17:16:44', '2017-12-24 17:16:44'),
(910, 'Coup De Grace pairs so well with Press the Attack''s bonus damage and is more reliable than Last Stand when you have healing.', 152, 11, '2017-12-24 17:16:44', '2017-12-24 17:16:44'),
(911, 'Of all AD Carries Ashe can abuse Cheap Shot more than any other. Her auto-attacks alone keep them slowed for free true damage on cooldown.', 152, 17, '2017-12-24 17:16:44', '2017-12-24 17:16:44'),
(912, 'Ghost Poro is an excellent way to provide reliable vision to keep yourself safe during the laning phase.', 152, 21, '2017-12-24 17:16:44', '2017-12-24 17:16:44'),
(913, 'Jinx is all about that Attack Speed, especially with Mini-gun. Lethal Tempo will also provide a lot of extra damage in Rocket form as well, helping you overcome the natural attack speed slow.', 153, 3, '2017-12-24 17:16:44', '2017-12-24 17:16:44'),
(914, 'Jinx''s passive synergizes incredibly well with Triumph, keeping you healthy enough after a close fight to move onto the next target.', 153, 6, '2017-12-24 17:16:44', '2017-12-24 17:16:44'),
(915, 'Moar attacks means moar damage. We''re all about that.', 153, 8, '2017-12-24 17:16:44', '2017-12-24 17:16:44'),
(916, 'Coup De Grace is the reliable go-to rune when looking to do maximum damage to squishy targets. The extra bit of Attack Damage after a kill also synergizes well with Jinx''s passive to reset for more kills.', 153, 11, '2017-12-24 17:16:44', '2017-12-24 17:16:44'),
(917, 'Celerity''s extra bit of movement speed is a great passive stat for all AD Carries as it allows you to reposition in fights more accurately and swiftly.', 153, 33, '2017-12-24 17:16:44', '2017-12-24 17:16:44'),
(918, 'AD Carries are typically the late-game insurance policy where they kick into gear and take over post 30 minutes. Gather Storm further empowers that role to help you in killing any target you set your sights on in long games.', 153, 37, '2017-12-24 17:16:44', '2017-12-24 17:16:44'),
(919, 'Call-back to the original Kog''maw rework, Lethal Tempo is a wet dream for the on-hit nature of Kog''s damage.', 154, 3, '2017-12-24 17:16:44', '2017-12-24 17:16:44'),
(920, 'Kog is all about ending the enemy''s lives and Triumph is your paycheck for doing so.', 154, 6, '2017-12-24 17:16:44', '2017-12-24 17:16:44'),
(921, 'Legend: Alacrity is the go-to on pretty much every AD Carry, especially Kog who loves to auto as much as possible.', 154, 8, '2017-12-24 17:16:44', '2017-12-24 17:16:44'),
(922, 'Kog''Maw is great at taking down huge tanks thanks to his [W] and Cut Down pushes that even further.', 154, 12, '2017-12-24 17:16:44', '2017-12-24 17:16:44'),
(923, 'Ghost Poro is a great option for any champion because it allows you to keep up steady vision.', 154, 21, '2017-12-24 17:16:44', '2017-12-24 17:16:44'),
(924, 'Ravenous Hunter isn''t an obvious choice here, but it actually allows you to heal from the on-hit damage of your [W].', 154, 23, '2017-12-24 17:16:44', '2017-12-24 17:16:44'),
(925, 'if you''re able to open up with your [R] in a teamfight with Lethal Tempo you can take over an entire game.', 155, 3, '2017-12-24 17:16:44', '2017-12-24 17:16:44'),
(926, 'Triumph is an all-around great rune on AD Carries. In the case of having a healing support, take Overheal.', 155, 6, '2017-12-24 17:16:44', '2017-12-24 17:16:44'),
(927, 'Legend: Alacrity is the go-to on pretty much every AD Carry. Break that Attack Speed cap.', 155, 8, '2017-12-24 17:16:44', '2017-12-24 17:16:44'),
(928, 'Cut Down is a great option on Twitch thanks to his ability to hit everyone on the enemy team who would build more health than an AD Carry.', 155, 12, '2017-12-24 17:16:44', '2017-12-24 17:16:44'),
(929, 'Twitch''s [Q] reliably procs Sudden Impact for extra Lethality and kill potential when coming out of stealth.', 155, 19, '2017-12-24 17:16:44', '2017-12-24 17:16:44'),
(930, 'Ghost Poro is a great option for keeping up steady vision. You''re even able to place the Poros while in stealth.', 155, 21, '2017-12-24 17:16:44', '2017-12-24 17:16:44'),
(931, 'Vayne is an AD carry that can have a difficult laning phase because of her low range. Fleet Footwork provides a reliable lane sustain.', 156, 4, '2017-12-24 17:16:44', '2017-12-24 17:16:44'),
(932, 'Triumph here is mainly to keep you healthy after a kill and play up the reset nature of your [R].', 156, 6, '2017-12-24 17:16:44', '2017-12-24 17:16:44'),
(933, 'Vayne is all about getting as many auto attack off as possible to proc [W]. Alactrity''s bonus Attack Speed also empowers you ability to proc more instances of Fleet Footwork for more healing and chase.', 156, 8, '2017-12-24 17:16:44', '2017-12-24 17:16:44'),
(934, 'Coup De Grace is a solid all-around damage rune that can be taken in any game. The bonus AD after kills also allows you to move on and empower your ability to reset kills for [R].', 156, 11, '2017-12-24 17:16:44', '2017-12-24 17:16:44'),
(935, 'The beauty of Sudden Impact on Vayne is that you''re able to keep the Lethality buff up permanently with a 3 points in [Q].', 156, 19, '2017-12-24 17:16:44', '2017-12-24 17:16:44'),
(936, 'Ravenous Hunter allows you to heal from your [Q] and [W], assisting laning and empowering your ability to duel.', 156, 23, '2017-12-24 17:16:44', '2017-12-24 17:16:44'),
(937, 'Fizz is able to quickly and reliably proc Electrocute for the burst damage needed to secure any kill.', 157, 14, '2017-12-24 17:16:44', '2017-12-24 17:16:44'),
(938, 'Between Fizz''s [Q] and [E] Fizz can easily proc Sudden Impact for bonus Magic Penetration when jumping onto his target.', 157, 19, '2017-12-24 17:16:44', '2017-12-24 17:16:44'),
(939, 'Fizz is an assassin and is all about kills and snowballing and Eyeball Collection is the rune here that does just that.', 157, 22, '2017-12-24 17:16:44', '2017-12-24 17:16:44'),
(940, 'Fizz''s kit is ripe for active items (Protobelt, Zhonyas, etc.) and Ingenious hunter ensures you''ll have those actives ready for any fight.', 157, 24, '2017-12-24 17:16:44', '2017-12-24 17:16:44'),
(941, 'Fizz''s itemization and skillset are heavily reliant on CDR so Transcendence is the best option here.', 157, 32, '2017-12-24 17:16:44', '2017-12-24 17:16:44'),
(942, 'Fizz can be difficult to play in the early game against AP mids that can harass him. Nullifying Orb helps ensure you make it to your assassination power spikes.', 157, 29, '2017-12-24 17:16:44', '2017-12-24 17:16:44'),
(943, 'Electrocute''s extra bit of burst damage allows you to finish off a kill to get the resets going.', 158, 14, '2017-12-24 17:16:44', '2017-12-24 17:16:44'),
(944, 'Kat''s [E] is a reliable blink that, when paired with Sudden Impact, grants the Magic Penetration needed to assassinate your target.', 158, 19, '2017-12-24 17:16:44', '2017-12-24 17:16:44'),
(945, 'This loadout is all about kills and snowballing and Eyeball Collection is the rune here that does just that.', 158, 22, '2017-12-24 17:16:44', '2017-12-24 17:16:44'),
(946, 'Kat naturally likes Spell Vamp as her abilities deal a high amount of base damage and she needs to get up close and personal.', 158, 23, '2017-12-24 17:16:44', '2017-12-24 17:16:44'),
(947, 'Triumph''s extra burst of healing allows you to continue resetting your abilities and killing as many people as possible.', 158, 6, '2017-12-24 17:16:44', '2017-12-24 17:16:44'),
(948, 'Coup De Grace is the go-to rune when looking to finish off squishy targets quickly. The bonus execution damage synergizes well with Katarina''s assassination playstyle.', 158, 11, '2017-12-24 17:16:44', '2017-12-24 17:16:44'),
(949, 'Like Thunderlords, Electrocute is a fantastic and reliable source of damage thanks to her semi-long range abilities and auto-attack range.', 159, 14, '2017-12-24 17:16:44', '2017-12-24 17:16:44'),
(950, 'Between the Stun from your [E] and slow from [W]  you''re able to reliably harrass with true damage from Cheap Shot.', 159, 17, '2017-12-24 17:16:44', '2017-12-24 17:16:44'),
(951, 'Ghost Poro is fantastic for providing reliable and safe lane-safety warding so you can pressure for kills and play aggressively.', 159, 21, '2017-12-24 17:16:44', '2017-12-24 17:16:44'),
(952, 'Spell Vamp is a key stat in coming out ahead in high damage trades in mid-lane.', 159, 23, '2017-12-24 17:16:44', '2017-12-24 17:16:44'),
(953, 'As Syndra if you''re able to stay healthy and on the move while casting your abilities the bonus AP will give you immense kill pressure with [R].', 159, 34, '2017-12-24 17:16:44', '2017-12-24 17:16:44'),
(954, 'Gathering Storm acts as a late-game insurance policy to help you execute your target and close out games.', 159, 37, '2017-12-24 17:16:44', '2017-12-24 17:16:44'),
(955, 'Like Thunderlords, Electrocute is quite easy for Zed to proc and gives him great kill threat.', 160, 14, '2017-12-24 17:16:44', '2017-12-24 17:16:44'),
(956, 'Sudden Impact is easily procced by Zed from [W] or [R] granting the Lethality needed for the kill.', 160, 19, '2017-12-24 17:16:44', '2017-12-24 17:16:44'),
(957, 'Zed is all about the kills and Eyeball Collection rewards you for doing so by granting you more damage.', 160, 22, '2017-12-24 17:16:44', '2017-12-24 17:16:44'),
(958, 'Movement Speed is a key stat for hunting down and finding an angle on your prey and Relentless Hunt helps you find those openings.', 160, 25, '2017-12-24 17:16:44', '2017-12-24 17:16:44'),
(959, 'Zed loves CDR through his itemization and Transcendence doubles down on that. It also allows you to build every Lethality item without worrying about going over the CDR cap.', 160, 32, '2017-12-24 17:16:44', '2017-12-24 17:16:44'),
(960, 'Nullifying Orb is a key rune in this loadout as it''s an integral part in surviving hard AP matchups. Think of it as a free hexdrinker.', 160, 29, '2017-12-24 17:16:44', '2017-12-24 17:16:44'),
(961, 'Like Thunderlords, Electrocute is quite easily for Zed to proc and gives him great kill threat.', 161, 14, '2017-12-24 17:16:44', '2017-12-24 17:16:44'),
(962, 'Sudden Impact is easily procced by Zed from [W] or [R] granting the Lethality needed for the kill.', 161, 19, '2017-12-24 17:16:44', '2017-12-24 17:16:44');
INSERT INTO `keystones_why` (`id`, `stone_why`, `builds_id`, `keystones_id`, `created_at`, `updated_at`) VALUES
(963, 'Zed is all about the kills and Eyeball Collection rewards you for doing so by granting you more damage.', 161, 22, '2017-12-24 17:16:44', '2017-12-24 17:16:44'),
(964, 'Movement Speed is a key stat for hunting down and finding an angle on your prey and Relentless Hunt helps you find those openings.', 161, 25, '2017-12-24 17:16:44', '2017-12-24 17:16:44'),
(965, 'Kill and cash in, Triumph excels at Zed''s natural tendency to want to snowball on kills and get ahead.', 161, 6, '2017-12-24 17:16:44', '2017-12-24 17:16:44'),
(966, 'Coup De Grace synergizes well with Zed''s [R] when looking to execute enemy champions.', 161, 11, '2017-12-24 17:16:44', '2017-12-24 17:16:44'),
(967, 'Aery is an incredibly reliable source of damage in the early to mid game. It''s also very strong in scrappy fights thanks to the bonus shielding on your [E].', 162, 26, '2017-12-24 17:16:44', '2017-12-24 17:16:44'),
(968, 'Spamming abilities for lane pressure is Ori''s forte and Manaflow Band enables her to do so very regularly.', 162, 30, '2017-12-24 17:16:44', '2017-12-24 17:16:44'),
(969, 'Stacking CDR on Orianna is a priority and in doing so you gain significantly more damage.', 162, 32, '2017-12-24 17:16:44', '2017-12-24 17:16:44'),
(970, 'The safe harassment range on your [Q] makes for an easy proc on Scorch for lane pressure damage.', 162, 35, '2017-12-24 17:16:44', '2017-12-24 17:16:44'),
(971, 'Zhonya''s is a strong item on Orianna in many situations and Perfect Timing helps you hit that power spike even sooner.', 162, 55, '2017-12-24 17:16:44', '2017-12-24 17:16:44'),
(972, 'Cosmic Insight synergies very well with both Transcendence for CDR and Perfect Timing for a lower Zhonya''s cooldown.', 162, 59, '2017-12-24 17:16:44', '2017-12-24 17:16:44'),
(973, 'Summon Aery is a great option for Soraka both offensively (with autos and [Q]) and defensively (with [W]). ', 163, 26, '2017-12-24 17:16:44', '2017-12-24 17:16:44'),
(974, 'Manaflow Band is a great option here for Soraka because you''re going to want to  play aggressively in lane early spamming [Q].', 163, 30, '2017-12-24 17:16:44', '2017-12-24 17:16:44'),
(975, 'Celerity on Soraka allows you to position yourself safely in teamfights and skirmishes so that you''re able to continue pumping out heals.', 163, 33, '2017-12-24 17:16:44', '2017-12-24 17:16:44'),
(976, 'Scorch allows you to dominate the lane phase if you''re able to consistently land your [Q].', 163, 35, '2017-12-24 17:16:44', '2017-12-24 17:16:44'),
(977, 'Because you''re going to be healing so much over the course of the game, Revitalize gets fantastic value, especially if the target is low health.', 163, 48, '2017-12-24 17:16:44', '2017-12-24 17:16:44'),
(978, 'Font of Life doesn''t seem like an obvious choice but if you can land your [Q] regularly it synergies well with your itemization and Revitalize.', 163, 43, '2017-12-24 17:16:44', '2017-12-24 17:16:44'),
(979, 'Dark Harvest pairs nicely with Rhaast because if you''re able to stay alive during fights the kill/assist will rack up more and more scaling damage.', 164, 16, '2017-12-24 17:16:44', '2017-12-24 17:16:44'),
(980, 'Kayn is one of the biggest abusers of Sudden Impact as simply casting [Q} will grant you Lethality.', 164, 19, '2017-12-24 17:16:44', '2017-12-24 17:16:44'),
(981, 'Eyeball Collection is all about fighting from the get-go and getting takedowns to scale into the mid-game.', 164, 22, '2017-12-24 17:16:44', '2017-12-24 17:16:44'),
(982, 'Because Kayn likes to duel and spam his abilities, Ravenous Hunter provides a lot of extra healing in those fights. It also pairs nicely with Rhaast''s passive.', 164, 23, '2017-12-24 17:16:44', '2017-12-24 17:16:44'),
(983, 'A big part of Rhaast''s power comes from the healing on his passive and Revitalize further pushes that healing.', 164, 48, '2017-12-24 17:16:44', '2017-12-24 17:16:44'),
(984, 'Conditioning provides a stable amount of defensive power heading into the mid-game to allow you to take longer duration trades in any lane gank.', 164, 46, '2017-12-24 17:16:44', '2017-12-24 17:16:44'),
(985, 'Dark Harvest''s ability to stack damage infinitely and sale with kills pairs well with Shadow Assassin.', 165, 16, '2017-12-24 17:16:44', '2017-12-24 17:16:44'),
(986, 'Kayn is one of the biggest abusers of Sudden Impact as simply casting [Q} will grant you Lethality.', 165, 19, '2017-12-24 17:16:44', '2017-12-24 17:16:44'),
(987, 'The name of the game here is damage and snowballing. Eyeball Collection is all about damage.', 165, 22, '2017-12-24 17:16:44', '2017-12-24 17:16:44'),
(988, 'Because Kayn likes to duel and spam his abilities, Ravenous Hunter provides a lot of extra healing in those fights.', 165, 23, '2017-12-24 17:16:44', '2017-12-24 17:16:44'),
(989, 'The execution play style of Shadow Assassin paisr nicely with Triumph''s healing and bonus gold.', 165, 6, '2017-12-24 17:16:44', '2017-12-24 17:16:44'),
(990, 'Kill kill kill. Coup De Grace promotes ending your target''s life ASAP and Shadow Kayn is all about that.', 165, 11, '2017-12-24 17:16:44', '2017-12-24 17:16:44'),
(991, 'As Blitz you can easily proc Aftershock to continue fighting. The explosion further assist in kill potential.', 166, 39, '2017-12-24 17:16:44', '2017-12-24 17:16:44'),
(992, 'This Blitz loadout focuses on snowball and Demolish lets you punish the enemy by taking towers after killing them, further pushing your lead.', 166, 42, '2017-12-24 17:16:44', '2017-12-24 17:16:44'),
(993, 'Early fighting (especially level 2) heavily relies on armor to mitigate minion damage.', 166, 44, '2017-12-24 17:16:44', '2017-12-24 17:16:44'),
(994, 'As a melee support you''re often going to be taking poke/harass damage from ranged mage supports. Second Wind helps you sustain through some of the poke so that you''re still able to take those all-ins when you land a hook.', 166, 49, '2017-12-24 17:16:44', '2017-12-24 17:16:44'),
(995, 'Flashtraption on Blitz allows you to get the jump on your opponent at unsuspecting times by controlling bushing and flashing out into them', 166, 53, '2017-12-24 17:16:44', '2017-12-24 17:16:44'),
(996, 'Future''s Market on Blitz allows you to snowball your gold lead from successful hook kills by finishing your big purchases sooner.', 166, 57, '2017-12-24 17:16:44', '2017-12-24 17:16:44'),
(997, 'Summon Aery makes Janna''s [E] an incredibly strong and reliable shield.', 167, 26, '2017-12-24 17:16:44', '2017-12-24 17:16:44'),
(998, 'Manaflow Band acts as our primary source of mana sustain in lane, allowing you to spam abilities more often for trades.', 167, 30, '2017-12-24 17:16:44', '2017-12-24 17:16:44'),
(999, 'Like all Enchanter supports, cooldown reduction is a key stat for direct power.', 167, 32, '2017-12-24 17:16:44', '2017-12-24 17:16:44'),
(1000, 'Thanks to her passive, Janna is heavily focused on moving quickly around the map and Waterwalking helps with that.', 167, 36, '2017-12-24 17:16:44', '2017-12-24 17:16:44'),
(1001, 'The bonus shielding and healing from Revitalize makes Janna''s [E] and [R] very powerful, especially in clutch situations.', 167, 48, '2017-12-24 17:16:44', '2017-12-24 17:16:44'),
(1002, 'Early lane trading heavily relies around having armor as minion damage is a major source of incoming damage.', 167, 44, '2017-12-24 17:16:44', '2017-12-24 17:16:44'),
(1003, 'Aftershock is the successor to Courage of the Colossus, but rather than granting a shield it does damage and give a ton of Armor and Magic Resist. Galio loves Magic Resist', 168, 39, '2017-12-24 17:16:44', '2017-12-24 17:16:44'),
(1004, 'One of Galio''s biggest weaknesses is his lack of mobility and CC can punish him hard (especially being melee). The bonus tenacity and slow resist from Perseverance will help you get to your targets and escape.', 168, 41, '2017-12-24 17:16:44', '2017-12-24 17:16:44'),
(1005, 'Galio loves Magic Resist for both offense and defense. Mirror shell gives you some early MR and further helps your MR scale into the late game.', 168, 45, '2017-12-24 17:16:44', '2017-12-24 17:16:44'),
(1006, 'Paired with with early resists and health, Second wind provides excellent lane sustain and trading power.', 168, 49, '2017-12-24 17:16:44', '2017-12-24 17:16:44'),
(1007, 'Galio''s abilities have relative high mana costs and be needs to spam to keep up with wave pushes. Manaflow Band will give you the needed mana sustain to shove and roam.', 168, 30, '2017-12-24 17:16:44', '2017-12-24 17:16:44'),
(1008, 'Entering the mid-game, Multiple successful taunts from [W] will make or break your teamfights and CDR is what enables that.', 168, 32, '2017-12-24 17:16:44', '2017-12-24 17:16:44'),
(1009, 'Aftershock is the successor to Courage of the Colossus, but rather than granting a shield it does damage and give a ton of Armor and Magic Resist. Galio loves Magic Resist', 169, 39, '2017-12-24 17:16:44', '2017-12-24 17:16:44'),
(1010, 'One of Galio''s biggest weaknesses is his lack of mobility and CC can punish him hard (especially being melee). The bonus tenacity and slow resist from Perseverance will help you get to your targets and escape.', 169, 41, '2017-12-24 17:16:44', '2017-12-24 17:16:44'),
(1011, 'Galio loves Magic Resist for both offense and defense. Mirror shell gives you some early MR and further helps your MR scale into the late game.', 169, 45, '2017-12-24 17:16:44', '2017-12-24 17:16:44'),
(1012, 'Paired with with early resists and health, Second wind provides excellent lane sustain and trading power.', 169, 49, '2017-12-24 17:16:44', '2017-12-24 17:16:44'),
(1013, 'Galio''s abilities have relative high mana costs and be needs to spam to keep up with wave pushes. Manaflow Band will give you the needed mana sustain to shove and roam.', 169, 30, '2017-12-24 17:16:44', '2017-12-24 17:16:44'),
(1014, 'Entering the mid-game, Multiple successful taunts from [W] will make or break your teamfights and CDR is what enables that.', 169, 32, '2017-12-24 17:16:44', '2017-12-24 17:16:44'),
(1015, 'Easily proc the bonus damage and scales really well in long fights.', 170, 2, '2017-12-24 17:16:44', '2017-12-24 17:16:44'),
(1016, 'Close skirmishes will allow you to come out with plenty of health and continue fighting.', 170, 6, '2017-12-24 17:16:44', '2017-12-24 17:16:44'),
(1017, 'The bonus Life Steal allows you to stack even more Press the Attack attack during trades.', 170, 10, '2017-12-24 17:16:44', '2017-12-24 17:16:44'),
(1018, 'Execute your target and proc your [R] heal as soon as possible.', 170, 11, '2017-12-24 17:16:44', '2017-12-24 17:16:44'),
(1019, 'Your [Q] easily proc Sudden Impact giving you free Lethality.', 170, 19, '2017-12-24 17:16:44', '2017-12-24 17:16:44'),
(1020, 'Snowball from kills and skirmishes to gain some extra damage.', 170, 22, '2017-12-24 17:16:44', '2017-12-24 17:16:44'),
(1021, 'Like Courage of the Colossus, Sejuani can reliably proc it for the bonus defenses and extra bit of damage.', 171, 39, '2017-12-24 17:16:45', '2017-12-24 17:16:45'),
(1022, 'All 4 of Sejuani''s abilities can easily proc Font of Life, and because you naturally stack health the on-hit heal adds up to be considerable for fights.', 171, 43, '2017-12-24 17:16:45', '2017-12-24 17:16:45'),
(1023, 'As a jungler, early game armor allows you to sustain longer clears while remaining healthy for fights.', 171, 44, '2017-12-24 17:16:45', '2017-12-24 17:16:45'),
(1024, 'Because you naturally itemize stacking a lot of health as Sejuani, Overgrowth doubles-down on that by providing a lot of bonus scaling health based on how much health you''ve built.', 171, 47, '2017-12-24 17:16:45', '2017-12-24 17:16:45'),
(1025, 'Sweeping Lens and Control Wards are the mainstay of a jungler. Why not benefit by getting extra vision for yourself when you go on a ward-clearing spree.', 171, 20, '2017-12-24 17:16:45', '2017-12-24 17:16:45'),
(1026, 'It''s important for a jungler to be able to quickly react and get to a skirmish happening anywhere on the map. Relentless Hunter gives you the Movespeed Speed necessary to get there and win.', 171, 25, '2017-12-24 17:16:45', '2017-12-24 17:16:45'),
(1027, 'Aery synergies incredibly well with Lulu''s play-style mix of offensive lane pressure and late-game shielding. Makre sure to pick up Aery as often as you can to make full use of her.', 172, 26, '2017-12-24 17:16:45', '2017-12-24 17:16:45'),
(1028, 'The Ultimate Hat allows you the freedom to use Wild Growth more offensively and liberally when fighting skirmishes without worry of it being on cooldown for a teamfight.', 172, 31, '2017-12-24 17:16:45', '2017-12-24 17:16:45'),
(1029, 'Transcendence is a great rune choice for most mages and supports as repetitive spell casts is the majority of their damage/utility, and pairs well with Ultimate Hat.', 172, 32, '2017-12-24 17:16:45', '2017-12-24 17:16:45'),
(1030, 'Paired with Summoner Aery, Scorch grants Lulu fantastic lane power and harassment chip damage.', 172, 35, '2017-12-24 17:16:45', '2017-12-24 17:16:45'),
(1031, 'As a support placing wards is one of your primary duties. Zombie Ward doubles down on that and scales incredibly well the more wards you place during the game.', 172, 20, '2017-12-24 17:16:45', '2017-12-24 17:16:45'),
(1032, 'The combination of Summon Aery, Scorch, and Cheap Shot gives any early game offensive Enchanter the ability to deal an incredible amount of damage in skirmishes while building no damage.', 172, 17, '2017-12-24 17:16:45', '2017-12-24 17:16:45'),
(1033, 'Cho''Gath is known for getting insane amounts of health and Grasp exemplifies that, giving even more health and damage for being so tanky.', 173, 38, '2017-12-24 17:16:45', '2017-12-24 17:16:45'),
(1034, 'All that stacking max health allows you to easily do half a tower''s health with a single auto-attack with Demolish', 173, 42, '2017-12-24 17:16:45', '2017-12-24 17:16:45'),
(1035, 'Effective health comes from multiplying health with resists. Grasp and and you ultimate stacking health pairs very nicely with Conditioning to make you very tanky.', 173, 46, '2017-12-24 17:16:45', '2017-12-24 17:16:45'),
(1036, 'Overgrow multiplies and scales incredibly well as you continue to gain health from Feast stacks and Grasp health gained.', 173, 47, '2017-12-24 17:16:45', '2017-12-24 17:16:45'),
(1037, 'As a big beefy front-liner, Cho''gath absorbs a massive amount of damage in teamfights while standing in the front line. Triumph allows you to pick up assists with your AoE and still stay heathy and unkillable.', 173, 6, '2017-12-24 17:16:45', '2017-12-24 17:16:45'),
(1038, 'Cho''s biggest weakness is his lack of mobility and that is heavily abused with CC. Additional Tenacity with further enable you to get to your target or escape ganks safely.', 173, 9, '2017-12-24 17:16:45', '2017-12-24 17:16:45'),
(1039, 'Arcane Comet has a low cooldown allowing Ahri to proc it repetitively in lane for harassment damage.', 174, 27, '2017-12-24 17:16:45', '2017-12-24 17:16:45'),
(1040, 'Ahri''s ultimate grants her incredible kill potential and lane safety. Having it off cooldown as often as possible is fantastic for her.', 174, 31, '2017-12-24 17:16:45', '2017-12-24 17:16:45'),
(1041, 'Transcendence is a great rune choice for most mages as repetitive spell casts is the majority of their damage, and pairs well with Ultimate Hat.', 174, 32, '2017-12-24 17:16:45', '2017-12-24 17:16:45'),
(1042, 'Scorch is a rune that is incredibly reliable and provides the damage needed to eek out lane dominance.', 174, 35, '2017-12-24 17:16:45', '2017-12-24 17:16:45'),
(1043, 'Perfect timing is a great option on Ahri who often wants Zhonyas as she tends to dive in for her damage. It also secondarily acts as a pure gold, saving you the cost of an item component.', 174, 55, '2017-12-24 17:16:45', '2017-12-24 17:16:45'),
(1044, 'Magical footwear is a great choice on any champion loadout as it can be seen as simple earning 350g at level 10, which is always good. Ahri can also make great use of the bonus movespeed.', 174, 56, '2017-12-24 17:16:45', '2017-12-24 17:16:45'),
(1045, 'Ahri is able to quickly and easily activate Electrocute with her skillset for an extra bit of damage and kill potential.', 175, 14, '2017-12-24 17:16:45', '2017-12-24 17:16:45'),
(1046, 'Once 6, Ahri''s [R] paired with Sudden Impact offers incredible kill potential against any lane opponent.', 175, 19, '2017-12-24 17:16:45', '2017-12-24 17:16:45'),
(1047, 'Eyeball Collection pairs nicely with Electrocute and Sudden Impact to further push Ahri into a carry role.', 175, 22, '2017-12-24 17:16:45', '2017-12-24 17:16:45'),
(1048, 'The Spell Vamp from Ravenous Hunter gives Ahri the healing necessary in fights for multiple spell rotations.', 175, 23, '2017-12-24 17:16:45', '2017-12-24 17:16:45'),
(1049, 'Scorch in an incredibly reliable source of early-game extra damage and Ahri is easily able to proc it on cooldown.', 175, 35, '2017-12-24 17:16:45', '2017-12-24 17:16:45'),
(1050, 'Like most Mid Laners cooldown reduction is a huge source of power. More Spell rotations means more damage and more healing from Ahri''s passive and Ravenous Hunter.', 175, 32, '2017-12-24 17:16:45', '2017-12-24 17:16:45');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2017_12_16_1_create_patch_table', 1),
(2, '2017_12_16_2_create_users_table', 1),
(3, '2017_12_16_3_create_runes_table', 1),
(4, '2017_12_16_4_create_roles_table', 1),
(5, '2017_12_16_5_create_champions_table', 1),
(6, '2017_12_16_6_create_notes_table', 1),
(7, '2017_12_16_7_create_keystones_table', 1),
(8, '2017_12_16_8_top_player_table', 1),
(9, '2017_12_16_9_create_builds_table', 1),
(10, '2017_12_18_10_review_build_table', 1),
(11, '2017_12_19_11_create_keystones_why_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `notes`
--

CREATE TABLE IF NOT EXISTS `notes` (
  `id` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rune_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `patch_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notes`
--

INSERT INTO `notes` (`id`, `title`, `description`, `type`, `rune_id`, `patch_id`, `created_at`, `updated_at`) VALUES
(1, 'ZOMBIE WARD', 'Killing a Zombie Ward now grants one gold', 'adjust', '8136', 1, '2017-12-19 02:07:08', '2017-12-24 19:40:09'),
(2, 'PREDATOR', 'Cooldown decreased: 180-120 seconds (at levels 1-18) ⇒ 150-100 seconds (at levels 1-18)', 'buff', '8124', 1, '2017-12-19 02:14:32', '2017-12-19 02:14:32'),
(3, 'SUMMON AERY', 'Damage lowered: 20-60 (at levels 1-18) ⇒ 15-40 (at levels 1-18) \\n Aery now deals the correct adaptive damage', 'buff', '8214', 1, '2017-12-19 02:15:59', '2017-12-19 02:15:59'),
(5, 'PRESS THE ATTACK', 'Bonus damage now applied after 3rd attack instead of at the same time.', 'nerf', '8005', 2, '2017-12-19 02:31:01', '2017-12-19 02:31:01'),
(6, 'LETHAL TEMPO', 'Cooldown lowered: 10 seconds ⇒ 6 seconds', 'buff', '8008', 2, '2017-12-19 02:31:03', '2017-12-19 02:31:03'),
(7, 'FLEET FOOTWORK', 'Base heal increased: 5-50 ⇒ 3-60 \\n AD ratio increased increased: 10% Bonus AD ⇒ 30% Bonus AD \\n AP ratio increased increased: 20% ⇒ 40% \\n *NEW* crit mulitplier: If you crit, Footwork’s healing is increased by 40% of your critical damage modifier', 'buff', '8021', 2, '2017-12-19 02:31:04', '2017-12-19 02:31:04'),
(8, 'OVERHEAL', 'Self generation increased: 30% of healing ⇒ 40% of healing', 'buff', '9101', 2, '2017-12-19 02:31:06', '2017-12-19 02:31:06'),
(9, 'TRIUMPH', 'Heal decreased: 15% ⇒ 12%', 'nerf', '9111', 2, '2017-12-19 02:31:08', '2017-12-19 02:31:08'),
(10, 'PRESENCE OF MIND', 'Duration increased: 5 seconds ⇒ 7 seconds', 'buff', '8009', 2, '2017-12-19 02:31:10', '2017-12-19 02:31:10'),
(11, 'COUP DE GRACE', 'Damage nerfed: 10% ⇒ 9%', 'nerf', '8014', 2, '2017-12-19 02:31:12', '2017-12-19 02:31:12'),
(12, 'EYEBALL COLLECTION', 'Stacks per assist reduced: 2 ⇒ 1', 'nerf', '8138', 2, '2017-12-19 02:31:14', '2017-12-19 02:31:14'),
(13, 'PHASE RUSH', 'Slow resist: Now also grants slow resist to ranged champions', 'buff', '8230', 2, '2017-12-19 02:31:15', '2017-12-19 02:31:15'),
(14, 'CELERITY', 'Movement Speed reduced: 4% ⇒ 3%', 'nerf', '8234', 2, '2017-12-19 02:31:17', '2017-12-19 02:31:17'),
(15, 'MIRROR SHELL', 'MR increased: 5 ⇒ 6', 'buff', '8435', 2, '2017-12-19 02:31:18', '2017-12-19 02:31:18'),
(16, 'REVITALIZE', 'Now also increases shields and heals that are cast on the user of Revitalize', 'buff', '8453', 2, '2017-12-19 02:31:20', '2017-12-19 02:31:20'),
(17, 'KLEPTOMANCY', 'No longer increases attack range by 25', 'nerf', '8359', 2, '2017-12-19 02:32:22', '2017-12-19 02:32:22'),
(18, 'SORCERY PATH BONUSES', 'SORCERY + ANY SECONDARY: 15 attack damage or 25 ability power, adaptive ⇒ 12 attack damage or 20 ability power, adaptive \\n INSPIRATION + SORCERY: 16 attack damage or 27 ability power, adaptive ⇒ 13 attack damage or 22 ability power, adaptive', 'nerf', '8200', 3, '2017-12-19 02:34:33', '2017-12-19 02:34:33'),
(19, 'MANAFLOW BAND', 'Cooldown increased: 60 seconds ⇒ 75 seconds', 'nerf', '8226', 3, '2017-12-19 02:35:59', '2017-12-19 02:35:59'),
(20, 'SCORCH', 'Damage decreased: 30-60 (at levels 1-18) ⇒ 20-60 (at levels 1-18)', 'nerf', '8237', 3, '2017-12-19 02:36:24', '2017-12-19 02:36:24');

-- --------------------------------------------------------

--
-- Table structure for table `patch`
--

CREATE TABLE IF NOT EXISTS `patch` (
  `id` int(10) unsigned NOT NULL,
  `patch` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `patch_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `patch`
--

INSERT INTO `patch` (`id`, `patch`, `title`, `description`, `patch_date`, `created_at`, `updated_at`) VALUES
(1, '7.23', 'Patch 7.23', 'The first balance patch of the pre-season brings a much needed <strong>damage nerf to Summon Aery</strong>. The damage was just too high for how reliable it is. We also see a bit of a <strong>cooldown buff to Predator</strong> to hopefully bring it in line with the other Domination Keystones. Check out the exact numbers after the jump', 'November 21, 2017', '2017-12-19 01:21:52', '2017-12-19 01:21:52'),
(2, '7.24', 'Patch 7.24', 'Patch 7.24 is the first major balance pass at the new rune system and touches a number of of runes throughout including buffs to <strong>Fleet Feetwork and Phase Rush, nerfs to Press the Attack and Triumph</strong> and many more.', 'December 6, 2017', '2017-12-19 01:23:08', '2017-12-19 01:23:08'),
(3, '7.24B', 'Patch 7.24B', 'Micro-patch 7.24b is the last patch of 2017 and with it comes a few minor nerfs to the Sorcery Path including its bonus stats, Manaflow Band, and Scorch to keep them in line with other rune trees. More info on these nerfs after the jump', 'December 14, 2017', '2017-12-19 01:23:41', '2017-12-19 01:23:41');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE IF NOT EXISTS `reviews` (
  `id` int(10) unsigned NOT NULL,
  `rate` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `builds_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE IF NOT EXISTS `roles` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Middle', 'Middle', '2017-12-19 00:48:43', '2017-12-19 00:48:43'),
(2, 'Top', 'Top', '2017-12-19 00:48:43', '2017-12-19 00:48:43'),
(3, 'Support', 'Support', '2017-12-19 00:48:43', '2017-12-19 00:48:43'),
(4, 'Jungle', 'Jungle', '2017-12-19 00:48:43', '2017-12-19 00:48:43'),
(5, 'AD Carry', 'ADC', '2017-12-19 00:48:43', '2017-12-19 00:48:43'),
(6, 'Free', 'Free', '2017-12-19 19:11:56', '2017-12-19 19:11:56');

-- --------------------------------------------------------

--
-- Table structure for table `runes`
--

CREATE TABLE IF NOT EXISTS `runes` (
  `id` int(10) unsigned NOT NULL,
  `rune_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rune_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rune_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rune_sub_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rune_description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `runes`
--

INSERT INTO `runes` (`id`, `rune_id`, `rune_title`, `rune_image`, `rune_sub_title`, `rune_description`, `created_at`, `updated_at`) VALUES
(1, '8000', 'Precision', '8000', 'AUTO ATTACKS', '+18% Attack Speed', '2017-12-18 22:35:41', '2017-12-20 16:13:42'),
(2, '8100', 'Domination', '8100', 'BURST DAMAGE', '+11 Attack Damage or +18 Ability Power, adaptive', '2017-12-18 22:41:01', '2017-12-20 16:14:27'),
(3, '8200', 'Sorcery', '8200', 'EMPOWERED ABILITIES', '+15 attack damage or +25 ability power, adaptive', '2017-12-18 22:41:01', '2017-12-20 16:14:27'),
(4, '8400', 'Resolve', '8400', 'DURABILITY', '+130 Health', '2017-12-18 22:41:01', '2017-12-20 16:14:27'),
(5, '8300', 'Inspiration', '8300', 'DURABILITY', 'Inspiration + Resolve: +20% Potion and Elixir Duration +145 Health\nInspiration + Domination: +20% Potion and Elixir Duration +16 Attack Damage or +27 Ability Power,adaptive\nInspiration + Sorcery: +20% Potion and Elixir Duration +16 Attack Damage or +27 Ability Power, adaptive\nInspiration + Precision: +20% Potion and Elixir Duration +20% Attack Speed', '2017-12-18 22:41:01', '2017-12-20 16:14:27');

-- --------------------------------------------------------

--
-- Table structure for table `top_player`
--

CREATE TABLE IF NOT EXISTS `top_player` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `top_player`
--

INSERT INTO `top_player` (`id`, `name`, `image`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 'Faker', 'FAKER', 1, '2017-12-19 19:21:42', '2017-12-19 19:24:40'),
(2, 'Free', 'FREE', 1, '2017-12-19 19:21:42', '2017-12-24 17:16:45'),
(3, 'Score', 'SCORE', 4, '2017-12-19 19:21:42', '2017-12-19 19:24:40'),
(4, 'Aphromoo', 'APHROMOO', 3, '2017-12-19 19:21:42', '2017-12-19 19:24:40'),
(5, 'Bang', 'BANG', 5, '2017-12-19 19:21:42', '2017-12-19 19:24:40'),
(6, 'Zven', 'ZVEN', 5, '2017-12-19 19:21:42', '2017-12-19 19:24:40'),
(7, 'CoreJJ', 'COREJJ', 3, '2017-12-19 19:21:42', '2017-12-19 19:24:40'),
(8, 'Stixxay', 'STIXXAY', 5, '2017-12-19 19:21:42', '2017-12-19 19:24:40'),
(9, 'Shiphtur', 'SHIPHTUR', 1, '2017-12-19 19:21:42', '2017-12-19 19:24:40'),
(10, 'Crown', 'CROWN', 1, '2017-12-19 19:21:42', '2017-12-19 19:24:40'),
(11, 'MaRin', 'MARIN', 2, '2017-12-19 19:21:42', '2017-12-19 19:24:40'),
(12, 'Spirit', 'SPIRIT', 4, '2017-12-19 19:21:42', '2017-12-19 19:24:40'),
(13, 'Jatt', 'JATT', 4, '2017-12-19 19:21:42', '2017-12-19 19:24:40'),
(14, 'Levi', 'LEVI', 4, '2017-12-19 19:21:42', '2017-12-19 19:24:40'),
(15, 'Cuvee', 'CUVEE', 2, '2017-12-19 19:21:42', '2017-12-19 19:24:40'),
(16, 'Maxlore', 'MAXLORE', 4, '2017-12-19 19:21:42', '2017-12-19 19:24:40'),
(17, 'Wickd', 'WICKD', 2, '2017-12-19 19:21:42', '2017-12-19 19:24:40'),
(18, 'Froggen', 'FROGGEN', 1, '2017-12-19 19:21:42', '2017-12-19 19:24:40'),
(19, 'Sneaky', 'SNEAKY', 5, '2017-12-19 19:21:42', '2017-12-19 19:24:40'),
(20, 'Doublelift', 'DOUBLELIFT', 5, '2017-12-19 19:21:42', '2017-12-19 19:24:40'),
(21, 'Darshan', 'DARSHAN', 2, '2017-12-19 19:21:42', '2017-12-19 19:24:40'),
(22, 'PawN', 'PAWN', 1, '2017-12-19 19:21:42', '2017-12-19 19:24:40'),
(23, 'MikeYeung', 'MIKEYEUNG', 4, '2017-12-19 19:21:42', '2017-12-19 19:24:40'),
(24, 'Scarra', 'SCARRA', 1, '2017-12-19 19:21:42', '2017-12-19 19:24:40'),
(25, 'Khan', 'KHAN', 2, '2017-12-24 13:51:41', '2017-12-24 13:51:41');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL,
  `account_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `verify` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `summoner_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `summoner_region` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `summoner_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `summoner_profile_icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `summoner_level` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `account_id`, `verify`, `summoner_name`, `summoner_region`, `summoner_id`, `summoner_profile_icon`, `summoner_level`, `created_at`, `updated_at`) VALUES
(3, '1', '1', 'Runeforge.gg', '', '', '', '', '2017-12-19 21:10:32', '2017-12-24 17:16:45'),
(4, '201811723', '0', 'Skt T1 Feed3r', 'euw1', '43216818', '3233', '39', '2017-12-21 22:47:00', '2017-12-21 22:49:16');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `builds`
--
ALTER TABLE `builds`
  ADD PRIMARY KEY (`id`),
  ADD KEY `builds_rune_secondary_id_foreign` (`rune_secondary_id`),
  ADD KEY `builds_rune_main_id_foreign` (`rune_main_id`),
  ADD KEY `builds_patch_id_foreign` (`patch_id`),
  ADD KEY `builds_role_id_foreign` (`role_id`),
  ADD KEY `builds_user_id_foreign` (`user_id`),
  ADD KEY `builds_champion_id_foreign` (`champion_id`),
  ADD KEY `builds_top_player_id_foreign` (`top_player_id`);

--
-- Indexes for table `champions`
--
ALTER TABLE `champions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `keystones`
--
ALTER TABLE `keystones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `keystones_runes_id_foreign` (`runes_id`);

--
-- Indexes for table `keystones_why`
--
ALTER TABLE `keystones_why`
  ADD PRIMARY KEY (`id`),
  ADD KEY `keystones_why_builds_id_foreign` (`builds_id`),
  ADD KEY `keystones_why_keystones_id_foreign` (`keystones_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notes_patch_id_foreign` (`patch_id`);

--
-- Indexes for table `patch`
--
ALTER TABLE `patch`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_builds_id_foreign` (`builds_id`),
  ADD KEY `reviews_user_id_foreign` (`user_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `runes`
--
ALTER TABLE `runes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `top_player`
--
ALTER TABLE `top_player`
  ADD PRIMARY KEY (`id`),
  ADD KEY `top_player_role_id_foreign` (`role_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `builds`
--
ALTER TABLE `builds`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=176;
--
-- AUTO_INCREMENT for table `champions`
--
ALTER TABLE `champions`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=140;
--
-- AUTO_INCREMENT for table `keystones`
--
ALTER TABLE `keystones`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=62;
--
-- AUTO_INCREMENT for table `keystones_why`
--
ALTER TABLE `keystones_why`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1051;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `notes`
--
ALTER TABLE `notes`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `patch`
--
ALTER TABLE `patch`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `runes`
--
ALTER TABLE `runes`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `top_player`
--
ALTER TABLE `top_player`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `builds`
--
ALTER TABLE `builds`
  ADD CONSTRAINT `builds_champion_id_foreign` FOREIGN KEY (`champion_id`) REFERENCES `champions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `builds_patch_id_foreign` FOREIGN KEY (`patch_id`) REFERENCES `patch` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `builds_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `builds_rune_main_id_foreign` FOREIGN KEY (`rune_main_id`) REFERENCES `runes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `builds_rune_secondary_id_foreign` FOREIGN KEY (`rune_secondary_id`) REFERENCES `runes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `builds_top_player_id_foreign` FOREIGN KEY (`top_player_id`) REFERENCES `top_player` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `builds_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `keystones`
--
ALTER TABLE `keystones`
  ADD CONSTRAINT `keystones_runes_id_foreign` FOREIGN KEY (`runes_id`) REFERENCES `runes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `keystones_why`
--
ALTER TABLE `keystones_why`
  ADD CONSTRAINT `keystones_why_builds_id_foreign` FOREIGN KEY (`builds_id`) REFERENCES `builds` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `keystones_why_keystones_id_foreign` FOREIGN KEY (`keystones_id`) REFERENCES `keystones` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `notes`
--
ALTER TABLE `notes`
  ADD CONSTRAINT `notes_patch_id_foreign` FOREIGN KEY (`patch_id`) REFERENCES `patch` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_builds_id_foreign` FOREIGN KEY (`builds_id`) REFERENCES `builds` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reviews_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `top_player`
--
ALTER TABLE `top_player`
  ADD CONSTRAINT `top_player_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
