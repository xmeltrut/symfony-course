-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 26, 2020 at 11:29 AM
-- Server version: 8.0.19
-- PHP Version: 7.3.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `symfony`
--

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `price`, `image`, `description`) VALUES
(1, 'Bianchi Aria', '2800.00', 'bianchi-aria.jpg', 'Bianchi\'s Aria 105 Disc Road Bike is aimed at the rider looking for aerodynamic performance on the road. The carbon frame and fork are optimised to cut drag, with the tube profiles engineered to cheat the wind, while the geometry also puts you in the most efficient position possible. Together they create a \'Full Aero\' race machine, that\'s easy to set up for triathlons, too.'),
(2, 'BMC Roadmachine', '3899.00', 'bmc-roadmachine.jpg', 'Catering to performance, no matter the ride distance or road conditions, the BMC Roadmachine 02 Two Ultegra Road Bike is perfect for riding further, faster. It\'s lighter and more compliant than it\'s predecessors, thanks to revisions to the frame and new technology. TCC Endurance in the seatstays, fork and seatpost is to thank for the added comfort. Vertical compliance is optimised across the frameset without compromising stiffness, so you still get a responsive, lively ride feel.'),
(3, 'BMC Timemachine', '2199.00', 'bmc-timemachine.jpg', 'Whether a time triallist or triathlete, when you\'re racing against the clock, the BMC Timemachine 02 Two 105 TT/Triathlon Bike will give you the advantage you need. The carbon frame and fork make for a stiff light construction designed to cut drag, with integrated direct mount brakes tucked out of the wind. The cockpit offers plenty of adjustability so you\'ll be able to dial in your position perfectly. A dual-mount seatpost means you can create a seat angle of between 71° and 81°.'),
(4, 'Cervelo S5', '4899.00', 'cervelo-s5.jpg', 'The S5 Ultegra 8020 Disc Road Bike is Cervélo’s latest aerodynamically biased machine. The TrueAero design of the carbon frame improves airflow around the bike whilst also increasing stiffness in the areas that matter; around the bottom bracket and head tube. The V-shaped stem and handlebar provide all the advantages of a one-piece design but add flexibility as the stem and handlebar are actually separate and are fully adjustable so it\'s easier to find the optimal position for both aerodynamics and power output.'),
(5, 'Specialized S-Works Tarmac', '6999.00', 'specialized-tarmac.jpg', 'The Specialized S-Works Tarmac SL6 Disc Womens Road Bike takes all the key features of the rim brake model and adapts the design to ensure increased stopping power and control. Utilising a full carbon construction, Roval CLX Wheels, Shimano\'s premium Dura-Ace Di2 Groupset and a host of women\'s specific components, the SL6 is suitable for road racing, endurance riding and anything in-between.'),
(6, 'Cannondale Supersix Evo', '2399.00', 'cannondale-supersix.jpg', 'With a full carbon frameset that combines several sophisticated features and a blend of high-level components, the Cannondale SuperSix EVO 105 Disc Road Bike is a true all-round road machine that adapts to any riding scenario with consummate ease.'),
(7, 'Colnago E64', '4999.00', 'colnago-e64.jpg', 'Italian brand Colnago have released their first e-bike, the E64 Ultegra Disc Electric Road Bike, so you can retain the traditional style and top performance, with a little extra help for faster climbing and longer, easier riding. The 250-watt motor is discreetly hidden inside the rear hub, and the battery inside the down tube so you have to look fairly closely to spot the difference from a non-assisted model. The system weight is kept to a minimum at around just 3.7kg so at around 12 - 13kg for the build, this is one of the lightest e-bikes out there.'),
(8, 'Specialized Allez', '725.00', 'specialized-allez.jpg', 'The Allez Road Bike from Specialized is ideal for a first foray into road cycling, whether for commuting, weekend exploring or sportives. The E5 Premium Aluminium frame uses SmoothWelds and internal cable routing for a lovely clean look and improved aerodynamics. Both the frame and the carbon fork have eyelets to make fitting mudguards a straightforward job to enable all-weather use. With the 8-speed Shimano Claris drivetrain matching the 50-34 tooth chainset with an 11-32 tooth SunRace cassette, there is a very wide range of ratios available, with the lowest gear making even steep hills rideable. Gear changes are facilitated using the dual-purpose Claris brake and shift levers meaning that control is easy to maintain at all times as gear changes are made without the need for hands to leave the handlebar.');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
