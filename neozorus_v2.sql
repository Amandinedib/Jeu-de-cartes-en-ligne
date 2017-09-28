-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Mer 27 Septembre 2017 à 16:04
-- Version du serveur :  10.1.19-MariaDB
-- Version de PHP :  7.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `neozorus_v2`
--

-- --------------------------------------------------------

--
-- Structure de la table `abilite`
--

CREATE TABLE `abilite` (
  `a_id` int(11) NOT NULL,
  `a_libelle` varchar(60) DEFAULT NULL,
  `a_description` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `abilite`
--

INSERT INTO `abilite` (`a_id`, `a_libelle`, `a_description`) VALUES
(1, 'Bouclier', 'L’adversaire sera obligé d’attaquer en premier les serviteurs dotés de Bouclier. Cependant, il est possible de choisir une cible entre plusieurs créatures avec Provocation.'),
(2, 'Pioche1', 'Pioche une carte'),
(3, 'Pioche2', 'Pioche deux cartes');

-- --------------------------------------------------------

--
-- Structure de la table `carte`
--

CREATE TABLE `carte` (
  `c_id` int(11) NOT NULL,
  `c_libelle` varchar(60) DEFAULT NULL,
  `c_description` varchar(60) DEFAULT NULL,
  `c_type` varchar(60) DEFAULT NULL,
  `c_puissance` int(11) DEFAULT NULL,
  `c_pvMax` int(11) DEFAULT NULL,
  `c_mana` int(11) DEFAULT NULL,
  `c_illustration` varchar(60) DEFAULT NULL,
  `c_gabarit` varchar(60) DEFAULT NULL,
  `c_personnage_fk` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `carte`
--

INSERT INTO `carte` (`c_id`, `c_libelle`, `c_description`, `c_type`, `c_puissance`, `c_pvMax`, `c_mana`, `c_illustration`, `c_gabarit`, `c_personnage_fk`) VALUES
(1, 'TRINITY', 'La meuf collante.', 'sort', 1, NULL, 1, NULL, NULL, 1),
(2, 'MORPHEUS', 'Le dealer de pilules :<br /> <b>pioche 2 cartes.</b>', 'sort', 4, NULL, 3, NULL, NULL, 1),
(3, 'L''ORACLE', 'Un petit cookie?', 'sort', 6, NULL, 5, NULL, NULL, 1),
(4, 'L''AGENT SMITH', 'Je suis SmiTH,<br />agent SSSSSmiTH.', 'creature', 2, 1, 1, NULL, NULL, 1),
(5, 'LE MAÎTRE DES CLEFS', 'Cousin de Passe-Partout.', 'creature', 2, 3, 2, NULL, NULL, 1),
(6, 'CYPHER', 'Quelqu''un le connaît ?', 'creature', 5, 3, 3, NULL, NULL, 1),
(7, 'LES TWINS', 'Pas un pour rattraper l'' autre...', 'creature', 2, 4, 4, NULL, NULL, 1),
(8, 'NIOBE', 'Rasta vibration:<br /><b>pioche 1 carte.</b>', 'creature', 7, 5, 5, NULL, NULL, 1),
(9, 'L''ARCHITECTE', 'À court de plan.', 'creature', 8, 6, 7, NULL, NULL, 1),
(10, 'LE FEMME EN ROUGE', 'Dans les yeux j'' ai dit!', 'creature', 1, 3, 1, NULL, NULL, 1),
(11, 'SENTINELLE', 'Attaque du poulpe :<br /><b>pioche 2 cartes/</b>', 'creature', 3, 6, 3, NULL, NULL, 1),
(12, 'LE CHAT NOIR', 'Tu me vois tu me vois pas.<br />Bug dans la matrice.', 'speciale', 9, 9, 9, NULL, NULL, 1),
(13, 'PARASAUROLOPHUS', 'Inflige un délit<br /> de sale gueule.', 'sort', 2, NULL, 1, NULL, NULL, 2),
(14, 'TRICÉRATOPS', 'Inflige un tri sélectif :<br /><b>pioche 2 cartes/</b>', 'sort', 5, NULL, 3, NULL, NULL, 2),
(15, 'PTERODACTYL', 'Attaque de la tornade.', 'sort', 7, NULL, 5, NULL, NULL, 2),
(16, 'KRONOSAURUS', 'Inflige une course<br />contre la montre.', 'creature', 1, 1, 1, NULL, NULL, 2),
(17, 'PROTOCERATOPS', 'Applique le protocole :<br />chasser/dévorer/digérer.', 'creature', 2, 3, 2, NULL, NULL, 2),
(18, 'BRACHIOSAURE', 'Bascule du cou:<br /><b>pioche 1 carte.</b>', 'creature', 4, 3, 3, NULL, NULL, 2),
(19, 'DILOPHOSAURE', 'Danse de l'' éventail<br />préhistorique.', 'creature', 2, 4, 4, NULL, NULL, 2),
(20, 'SPINOSAURE', 'Attaque dorsale :<br /><b>pioche 2 cartes.</b>', 'creature', 6, 5, 5, NULL, NULL, 2),
(21, 'PACHYCEPHALOSAURUS', 'Attaque Scrabble<br />mot compte triple.', 'creature', 8, 6, 7, NULL, NULL, 2),
(22, 'ANKYLOSAURE', 'Strike tout ce qui bouge.', 'creature', 1, 3, 1, NULL, NULL, 2),
(23, 'ELASMASAURUS', 'Attaque tes dents<br />de traviole.', 'creature', 3, 6, 3, NULL, NULL, 2),
(24, 'RAPTOR JESUS', 'Attaque de la bonne parole.', 'speciale', 9, 9, 9, NULL, NULL, 2);

-- --------------------------------------------------------

--
-- Structure de la table `c_a_inclure`
--

CREATE TABLE `c_a_inclure` (
  `c_a_abilite_fk` int(11) NOT NULL,
  `c_a_carte_fk` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `c_a_inclure`
--

INSERT INTO `c_a_inclure` (`c_a_abilite_fk`, `c_a_carte_fk`) VALUES
(1, 10),
(1, 11),
(1, 22),
(1, 23),
(2, 8),
(2, 18),
(3, 2),
(3, 11),
(3, 14),
(3, 20);

-- --------------------------------------------------------

--
-- Structure de la table `deck`
--

CREATE TABLE `deck` (
  `d_id` int(11) NOT NULL,
  `d_libelle` varchar(60) NOT NULL,
  `d_nbMaxCarte` int(11) DEFAULT NULL,
  `d_personnage_fk` int(11) DEFAULT NULL,
  `d_user_fk` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `deck`
--

INSERT INTO `deck` (`d_id`, `d_libelle`, `d_nbMaxCarte`, `d_personnage_fk`, `d_user_fk`) VALUES
(1, 'deckDino', 20, 2, 1),
(2, 'deckMatrix', 20, 1, 2),
(3, 'DeckMatrix', 20, 1, 1),
(4, 'DeckDino', 20, 2, 2);

-- --------------------------------------------------------

--
-- Structure de la table `d_c_inclure`
--

CREATE TABLE `d_c_inclure` (
  `d_c_nbExemplaire` int(11) DEFAULT NULL,
  `d_c_deck_fk` int(11) NOT NULL,
  `d_c_carte_fk` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `d_c_inclure`
--

INSERT INTO `d_c_inclure` (`d_c_nbExemplaire`, `d_c_deck_fk`, `d_c_carte_fk`) VALUES
(1, 1, 1),
(1, 1, 2),
(1, 1, 3),
(2, 1, 4),
(2, 1, 5),
(2, 1, 6),
(2, 1, 7),
(2, 1, 8),
(2, 1, 9),
(2, 1, 10),
(2, 1, 11),
(1, 1, 12),
(1, 2, 13),
(1, 2, 14),
(1, 2, 15),
(2, 2, 16),
(2, 2, 17),
(2, 2, 18),
(2, 2, 19),
(2, 2, 20),
(2, 2, 21),
(2, 2, 22),
(2, 2, 23),
(1, 2, 24),
(1, 3, 1),
(1, 3, 2),
(1, 3, 3),
(2, 3, 4),
(2, 3, 5),
(2, 3, 6),
(2, 3, 7),
(2, 3, 8),
(2, 3, 9),
(2, 3, 10),
(2, 3, 11),
(1, 3, 12),
(1, 4, 13),
(1, 4, 14),
(1, 4, 15),
(2, 4, 16),
(2, 4, 17),
(2, 4, 18),
(2, 4, 19),
(2, 4, 20),
(2, 4, 21),
(2, 4, 22),
(2, 4, 23),
(1, 4, 24);

-- --------------------------------------------------------

--
-- Structure de la table `historique`
--

CREATE TABLE `historique` (
  `h_id` int(11) NOT NULL,
  `h_numTour` int(11) DEFAULT NULL,
  `h_attaquant` tinyint(1) DEFAULT NULL,
  `h_action` varchar(25) DEFAULT NULL,
  `h_cible` varchar(25) DEFAULT NULL,
  `h_date` date DEFAULT NULL,
  `h_partie_fk` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `partie`
--

CREATE TABLE `partie` (
  `p_id` int(11) NOT NULL,
  `p_etat` tinyint(1) DEFAULT NULL,
  `p_gagnant` varchar(25) DEFAULT NULL,
  `p_joueur1` int(11) DEFAULT NULL,
  `p_joueur2` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `personnage`
--

CREATE TABLE `personnage` (
  `p_id` int(11) NOT NULL,
  `p_libelle` varchar(60) NOT NULL,
  `p_description` varchar(60) DEFAULT NULL,
  `p_pvMax` int(11) DEFAULT NULL,
  `p_illustration` varchar(60) DEFAULT NULL,
  `p_gabarit` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `personnage`
--

INSERT INTO `personnage` (`p_id`, `p_libelle`, `p_description`, `p_pvMax`, `p_illustration`, `p_gabarit`) VALUES
(1, 'NEO', 'Suis le lapin blanc.', 20, NULL, NULL),
(2, 'TYRANNOSAURE REX', 'Si tu bouges pas je te vois pas.', 20, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `saloncarte`
--

CREATE TABLE `saloncarte` (
  `s_id` int(11) NOT NULL,
  `s_mana` int(11) DEFAULT NULL,
  `s_pv` int(11) DEFAULT NULL,
  `s_puissance` int(11) DEFAULT NULL,
  `s_lieu` varchar(25) DEFAULT NULL,
  `s_user_fk` int(11) DEFAULT NULL,
  `s_partie_fk` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `s_c_composer`
--

CREATE TABLE `s_c_composer` (
  `s_c_salonCarte_fk` int(11) NOT NULL,
  `s_c_carte_fk` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `u_id` int(11) NOT NULL,
  `u_mail` varchar(60) DEFAULT NULL,
  `u_pseudo` varchar(60) DEFAULT NULL,
  `u_mdp` varchar(60) DEFAULT NULL,
  `u_nom` varchar(60) DEFAULT NULL,
  `u_prenom` varchar(60) DEFAULT NULL,
  `u_dateNaissance` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `user`
--

INSERT INTO `user` (`u_id`, `u_mail`, `u_pseudo`, `u_mdp`, `u_nom`, `u_prenom`, `u_dateNaissance`) VALUES
(1, 'arnaud.ruffault@hotmail.fr', 'Nono', 'password', 'ruffault', 'arnaud', '1990-09-07'),
(2, 'amandine.mail.com', 'mignon', 'cornichon', 'di bernardo', 'amandine', '1992-11-05');

-- --------------------------------------------------------

--
-- Structure de la table `u_p_jouer`
--

CREATE TABLE `u_p_jouer` (
  `u_p_pvPersonnage` int(11) DEFAULT NULL,
  `u_p_manaPersonnage` int(11) DEFAULT NULL,
  `u_p_user_fk` int(11) NOT NULL,
  `u_p_partie_fk` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Index pour les tables exportées
--

--
-- Index pour la table `abilite`
--
ALTER TABLE `abilite`
  ADD PRIMARY KEY (`a_id`);

--
-- Index pour la table `carte`
--
ALTER TABLE `carte`
  ADD PRIMARY KEY (`c_id`),
  ADD KEY `FK_carte_p_id` (`c_personnage_fk`);

--
-- Index pour la table `c_a_inclure`
--
ALTER TABLE `c_a_inclure`
  ADD PRIMARY KEY (`c_a_abilite_fk`,`c_a_carte_fk`),
  ADD KEY `FK_c_a_inclure_c_id` (`c_a_carte_fk`);

--
-- Index pour la table `deck`
--
ALTER TABLE `deck`
  ADD PRIMARY KEY (`d_id`),
  ADD KEY `FK_deck_p_id` (`d_personnage_fk`),
  ADD KEY `FK_deck_u_id` (`d_user_fk`);

--
-- Index pour la table `d_c_inclure`
--
ALTER TABLE `d_c_inclure`
  ADD PRIMARY KEY (`d_c_deck_fk`,`d_c_carte_fk`),
  ADD KEY `FK_d_c_inclure_c_id` (`d_c_carte_fk`);

--
-- Index pour la table `historique`
--
ALTER TABLE `historique`
  ADD PRIMARY KEY (`h_id`),
  ADD KEY `FK_historique_p_id` (`h_partie_fk`);

--
-- Index pour la table `partie`
--
ALTER TABLE `partie`
  ADD PRIMARY KEY (`p_id`);

--
-- Index pour la table `personnage`
--
ALTER TABLE `personnage`
  ADD PRIMARY KEY (`p_id`);

--
-- Index pour la table `saloncarte`
--
ALTER TABLE `saloncarte`
  ADD PRIMARY KEY (`s_id`),
  ADD KEY `FK_salonCarte_u_id` (`s_user_fk`),
  ADD KEY `FK_salonCarte_p_id` (`s_partie_fk`);

--
-- Index pour la table `s_c_composer`
--
ALTER TABLE `s_c_composer`
  ADD PRIMARY KEY (`s_c_salonCarte_fk`,`s_c_carte_fk`),
  ADD KEY `FK_s_c_composer_c_id` (`s_c_carte_fk`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`u_id`);

--
-- Index pour la table `u_p_jouer`
--
ALTER TABLE `u_p_jouer`
  ADD PRIMARY KEY (`u_p_user_fk`,`u_p_partie_fk`),
  ADD KEY `FK_u_p_jouer_p_id` (`u_p_partie_fk`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `abilite`
--
ALTER TABLE `abilite`
  MODIFY `a_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `carte`
--
ALTER TABLE `carte`
  MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT pour la table `deck`
--
ALTER TABLE `deck`
  MODIFY `d_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `historique`
--
ALTER TABLE `historique`
  MODIFY `h_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `partie`
--
ALTER TABLE `partie`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `personnage`
--
ALTER TABLE `personnage`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `saloncarte`
--
ALTER TABLE `saloncarte`
  MODIFY `s_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `u_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `carte`
--
ALTER TABLE `carte`
  ADD CONSTRAINT `FK_carte_p_id` FOREIGN KEY (`c_personnage_fk`) REFERENCES `personnage` (`p_id`);

--
-- Contraintes pour la table `c_a_inclure`
--
ALTER TABLE `c_a_inclure`
  ADD CONSTRAINT `FK_c_a_inclure_a_id` FOREIGN KEY (`c_a_abilite_fk`) REFERENCES `abilite` (`a_id`),
  ADD CONSTRAINT `FK_c_a_inclure_c_id` FOREIGN KEY (`c_a_carte_fk`) REFERENCES `carte` (`c_id`);

--
-- Contraintes pour la table `deck`
--
ALTER TABLE `deck`
  ADD CONSTRAINT `FK_deck_p_id` FOREIGN KEY (`d_personnage_fk`) REFERENCES `personnage` (`p_id`),
  ADD CONSTRAINT `FK_deck_u_id` FOREIGN KEY (`d_user_fk`) REFERENCES `user` (`u_id`);

--
-- Contraintes pour la table `d_c_inclure`
--
ALTER TABLE `d_c_inclure`
  ADD CONSTRAINT `FK_d_c_inclure_c_id` FOREIGN KEY (`d_c_carte_fk`) REFERENCES `carte` (`c_id`),
  ADD CONSTRAINT `FK_d_c_inclure_d_id` FOREIGN KEY (`d_c_deck_fk`) REFERENCES `deck` (`d_id`);

--
-- Contraintes pour la table `historique`
--
ALTER TABLE `historique`
  ADD CONSTRAINT `FK_historique_p_id` FOREIGN KEY (`h_partie_fk`) REFERENCES `partie` (`p_id`);

--
-- Contraintes pour la table `saloncarte`
--
ALTER TABLE `saloncarte`
  ADD CONSTRAINT `FK_salonCarte_p_id` FOREIGN KEY (`s_partie_fk`) REFERENCES `partie` (`p_id`),
  ADD CONSTRAINT `FK_salonCarte_u_id` FOREIGN KEY (`s_user_fk`) REFERENCES `user` (`u_id`);

--
-- Contraintes pour la table `s_c_composer`
--
ALTER TABLE `s_c_composer`
  ADD CONSTRAINT `FK_s_c_composer_c_id` FOREIGN KEY (`s_c_carte_fk`) REFERENCES `carte` (`c_id`),
  ADD CONSTRAINT `FK_s_c_composer_s_id` FOREIGN KEY (`s_c_SalonCarte_fk`) REFERENCES `saloncarte` (`s_id`),
  ADD CONSTRAINT `s_c_composer_ibfk_1` FOREIGN KEY (`s_c_salonCarte_fk`) REFERENCES `saloncarte` (`s_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `u_p_jouer`
--
ALTER TABLE `u_p_jouer`
  ADD CONSTRAINT `FK_u_p_jouer_p_id` FOREIGN KEY (`u_p_partie_fk`) REFERENCES `partie` (`p_id`),
  ADD CONSTRAINT `FK_u_p_jouer_u_id` FOREIGN KEY (`u_p_user_fk`) REFERENCES `user` (`u_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
