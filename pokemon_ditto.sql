-- phpMyAdmin SQL Dump
-- version 4.6.6deb5ubuntu0.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 27, 2022 at 01:16 AM
-- Server version: 5.7.36
-- PHP Version: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pokemon_ditto`
--

-- --------------------------------------------------------

--
-- Table structure for table `ability`
--

CREATE TABLE `ability` (
  `effect_entries` varchar(255) NOT NULL,
  `flavor_text_entries` varchar(255) NOT NULL,
  `generation` varchar(255) NOT NULL,
  `names` varchar(255) NOT NULL,
  `pokemon` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `berry`
--

CREATE TABLE `berry` (
  `firmness` varchar(255) NOT NULL,
  `flavors` varchar(255) NOT NULL,
  `item` varchar(255) NOT NULL,
  `natural_gift_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `berry-firmness`
--

CREATE TABLE `berry-firmness` (
  `berries` varchar(255) NOT NULL,
  `names` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `berry-flavor`
--

CREATE TABLE `berry-flavor` (
  `berries` varchar(255) NOT NULL,
  `contest_type` varchar(255) NOT NULL,
  `names` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `characteristic`
--

CREATE TABLE `characteristic` (
  `descriptions` varchar(255) NOT NULL,
  `highest_stat` varchar(255) NOT NULL,
  `possible_values` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `contest-effect`
--

CREATE TABLE `contest-effect` (
  `effect_entries` varchar(255) NOT NULL,
  `flavor_text_entries` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `contest-type`
--

CREATE TABLE `contest-type` (
  `berry_flavor` varchar(255) NOT NULL,
  `names` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `egg-group`
--

CREATE TABLE `egg-group` (
  `names` varchar(255) NOT NULL,
  `pokemon_species` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `encounter-method`
--

CREATE TABLE `encounter-method` (
  `names` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `evolution-chain`
--

CREATE TABLE `evolution-chain` (
  `chain` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `evolution-trigger`
--

CREATE TABLE `evolution-trigger` (
  `names` varchar(255) NOT NULL,
  `pokemon_species` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `generation`
--

CREATE TABLE `generation` (
  `abilities` varchar(255) NOT NULL,
  `main_region` varchar(255) NOT NULL,
  `moves` varchar(255) NOT NULL,
  `names` varchar(255) NOT NULL,
  `pokemon_species` varchar(255) NOT NULL,
  `types` varchar(255) NOT NULL,
  `version_groups` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `growth-rate`
--

CREATE TABLE `growth-rate` (
  `descriptions` varchar(255) NOT NULL,
  `levels` varchar(255) NOT NULL,
  `pokemon_species` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `attributes` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `effect_entries` varchar(255) NOT NULL,
  `flavor_text_entries` varchar(255) NOT NULL,
  `game_indices` varchar(255) NOT NULL,
  `names` varchar(255) NOT NULL,
  `sprites` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `item-attribute`
--

CREATE TABLE `item-attribute` (
  `descriptions` varchar(255) NOT NULL,
  `items` varchar(255) NOT NULL,
  `names` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `item-category`
--

CREATE TABLE `item-category` (
  `items` varchar(255) NOT NULL,
  `names` varchar(255) NOT NULL,
  `pocket` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `item-pocket`
--

CREATE TABLE `item-pocket` (
  `categories` varchar(255) NOT NULL,
  `names` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `language`
--

CREATE TABLE `language` (
  `names` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `areas` varchar(255) NOT NULL,
  `game_indices` varchar(255) NOT NULL,
  `names` varchar(255) NOT NULL,
  `region` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `location-area`
--

CREATE TABLE `location-area` (
  `encounter_method_rates` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `names` varchar(255) NOT NULL,
  `pokemon_encounters` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `machine`
--

CREATE TABLE `machine` (
  `item` varchar(255) NOT NULL,
  `move` varchar(255) NOT NULL,
  `version_group` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `move`
--

CREATE TABLE `move` (
  `contest_effect` varchar(255) NOT NULL,
  `contest_type` varchar(255) NOT NULL,
  `damage_class` varchar(255) NOT NULL,
  `effect_entries` varchar(255) NOT NULL,
  `flavor_text_entries` varchar(255) NOT NULL,
  `generation` varchar(255) NOT NULL,
  `learned_by_pokemon` varchar(255) NOT NULL,
  `machines` varchar(255) NOT NULL,
  `meta` varchar(255) NOT NULL,
  `names` varchar(255) NOT NULL,
  `past_values` varchar(255) NOT NULL,
  `super_contest_effect` varchar(255) NOT NULL,
  `target` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `move-ailment`
--

CREATE TABLE `move-ailment` (
  `moves` varchar(255) NOT NULL,
  `names` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `move-damage-class`
--

CREATE TABLE `move-damage-class` (
  `descriptions` varchar(255) NOT NULL,
  `moves` varchar(255) NOT NULL,
  `names` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `move-learn-method`
--

CREATE TABLE `move-learn-method` (
  `descriptions` varchar(255) NOT NULL,
  `names` varchar(255) NOT NULL,
  `version_groups` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `move-target`
--

CREATE TABLE `move-target` (
  `descriptions` varchar(255) NOT NULL,
  `moves` varchar(255) NOT NULL,
  `names` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pal-park-area`
--

CREATE TABLE `pal-park-area` (
  `names` varchar(255) NOT NULL,
  `pokemon_encounters` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pokedex`
--

CREATE TABLE `pokedex` (
  `descriptions` varchar(255) NOT NULL,
  `names` varchar(255) NOT NULL,
  `pokemon_entries` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pokemon`
--

CREATE TABLE `pokemon` (
  `abilities` varchar(255) NOT NULL,
  `forms` varchar(255) NOT NULL,
  `game_indices` varchar(255) NOT NULL,
  `held_items` varchar(255) NOT NULL,
  `moves` varchar(255) NOT NULL,
  `species` varchar(255) NOT NULL,
  `sprites` varchar(255) NOT NULL,
  `stats` varchar(255) NOT NULL,
  `types` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pokemon-color`
--

CREATE TABLE `pokemon-color` (
  `names` varchar(255) NOT NULL,
  `pokemon_species` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pokemon-habitat`
--

CREATE TABLE `pokemon-habitat` (
  `names` varchar(255) NOT NULL,
  `pokemon_species` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pokemon-shape`
--

CREATE TABLE `pokemon-shape` (
  `awesome_names` varchar(255) NOT NULL,
  `names` varchar(255) NOT NULL,
  `pokemon_species` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pokemon-species`
--

CREATE TABLE `pokemon-species` (
  `color` varchar(255) NOT NULL,
  `egg_groups` text NOT NULL,
  `evolution_chain` varchar(255) NOT NULL,
  `flavor_text_entries` varchar(255) NOT NULL,
  `genera` varchar(255) NOT NULL,
  `generation` varchar(255) NOT NULL,
  `growth_rate` varchar(255) NOT NULL,
  `habitat` varchar(255) NOT NULL,
  `names` varchar(255) NOT NULL,
  `pal_park_encounters` varchar(255) NOT NULL,
  `pokedex_numbers` varchar(255) NOT NULL,
  `shape` varchar(255) NOT NULL,
  `varieties` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pokemon_form`
--

CREATE TABLE `pokemon_form` (
  `pokemon` varchar(255) NOT NULL,
  `sprites` varchar(255) NOT NULL,
  `types` varchar(255) NOT NULL,
  `version_group` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `region`
--

CREATE TABLE `region` (
  `locations` varchar(255) NOT NULL,
  `main_generation` varchar(255) NOT NULL,
  `names` varchar(255) NOT NULL,
  `pokedexes` varchar(255) NOT NULL,
  `version_groups` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `stat`
--

CREATE TABLE `stat` (
  `affecting_moves` varchar(255) NOT NULL,
  `affecting_natures` varchar(255) NOT NULL,
  `characteristics` varchar(255) NOT NULL,
  `names` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `super-contest-effect`
--

CREATE TABLE `super-contest-effect` (
  `flavor_text_entries` varchar(255) NOT NULL,
  `moves` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `type`
--

CREATE TABLE `type` (
  `damage_relations` varchar(255) NOT NULL,
  `game_indices` varchar(255) NOT NULL,
  `generation` varchar(255) NOT NULL,
  `move_damage_class` varchar(255) NOT NULL,
  `moves` varchar(255) NOT NULL,
  `names` varchar(255) NOT NULL,
  `pokemon` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `version`
--

CREATE TABLE `version` (
  `names` varchar(255) NOT NULL,
  `version_group` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `version-group`
--

CREATE TABLE `version-group` (
  `generation` varchar(255) NOT NULL,
  `move_learn_methods` varchar(255) NOT NULL,
  `pokedexes` varchar(255) NOT NULL,
  `regions` varchar(255) NOT NULL,
  `versions` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
