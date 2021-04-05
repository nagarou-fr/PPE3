<?php
/**
 * Classe d'utilitaires.
 * pour l'application GSB
 * Les fonctions sont toutes statiques,
 *
 *
 * PHP Version 7
 *
 * @category  PPE
 * @package   GSB
 * @author    Cheri Bibi - Réseau CERTA <contact@reseaucerta.org>
 * @author    José GIL <jgil@ac-nice.fr>
 * @copyright 2017 Réseau CERTA
 * @license   Réseau CERTA
 * @version   Release: 1.0
 * @link      http://www.php.net/manual/fr/book.pdo.php PHP Data Objects sur php.net
 */
class Utils
{


    

    /**
     * Echappe les caractères spéciaux d'une chaîne.

     * Envoie la chaîne $str échappée, càd avec les caractères considérés 
     * spéciaux par MySql précédés d'un \, ce qui annule 
     * leur effet spécial

     * @param String $str chaîne à échapper
     *
     * @return String chaîne avec les antislashes
     *
     * @assert ('&quot;le meilleur&quot; film') == '\"le meilleur\" film'
     */
    public static function filtrerChainePourBdd($str)
    {
        if (!get_magic_quotes_gpc()) {
            $str = addslashes(htmlspecialchars_decode($str, ENT_QUOTES));
        }
        return $str;
    }

    /**
     * Retire les échappements d'une chaîne.

     * Envoie la chaîne $str non échappée, càd avec les caractères considérés 
     * spéciaux par MySql non précédé d'un \, ce qui valide 
     * leur effet spécial

     * @param String $str chaîne échappée
     *
     * @return String chaîne sans les antislashes
     *
     * @assert ('le meilleur \" film') == 'le meilleur " film'
     */
    public static function filtrerChainePourVue($str)
    {
        if (!get_magic_quotes_gpc()) {
            $str = stripslashes($str);
        }
        return $str;
    }
     
  
	
	/**
     * Transforme une date au format format anglais aaaammjj vers le format
     * français jj/mm/aaaa
     *
     * @param String $date date au format aaaammjj
     *
     * @return String date au format aaaa-mm-jj
     *
     * @assert ('20070122') == '2007-01-22'
     * @assert ('20171209') == '2017-12-09'
     */
    public static function dateAnglaisNonCompact($dateMois)
    {
		
		$annee = substr($dateMois, 0, 4);
        $mois = substr($dateMois, 4, 2);
        $jour = substr($dateMois, 6, 2);
        $date =  $annee . "-" . $mois . "-" . $jour;
		return $date;
		
    }

    /**
     * Retourne le mois au format aaaamm selon le jour dans le mois
     *
     * @param String $date date au format  aaaamm
     *
     * @return String mois au format aaaamm
     *
     * @assert ('26/02/2018') == '201802'
     * @assert ('09/11/1999') == '199911'
     */
    public static function getMois($date)
    {
        @list($jour, $mois, $annee) = explode('/', $date);
        unset($jour);
        if (strlen($mois) == 1) {
            $mois = '0' . $mois;
        }
        return $annee . $mois;
    }


   
}
