package fr.cned.emdsgil.suividevosfrais.tools;
import android.content.Context;
import java.util.List;
import android.util.Log;
import fr.cned.emdsgil.suividevosfrais.activities.TransfertActivity;

/**
 * Classe pour gérer la relation entre l'activity TransfertActivity et les classes de connexion AccesDistant et Profil
 */

public final class LoginAcces {

    // propriétés
    private static LoginAcces instance = null ;
    private static Profil profil ;
    //private static AccesLocal accesLocal ;
    private static AccesDistant accesDistant;
    private static Context contexte ;

    /**
     * Constructeur appel au constructeur de la classe mère Object
     */
    private LoginAcces() {
        super();
    }

    /**
     * Création de l'instance unique
     *
     * @return l'instance de la classe LoginAcces
     */
    public static final LoginAcces getInstance(Context contexte) {
        if (LoginAcces.instance == null) {
            LoginAcces.contexte = contexte;
            LoginAcces.instance = new LoginAcces() ;
        }
        return LoginAcces.instance ;
    }

    /**
     * Création du profil de connexion
     *
     * @param success la nature de la connexion
     * @param status message renvoyé par le serveur
     * @param username usename utilisé et confimé pour la connexion
     * @param mdp mot de passe utilisé et confimé pour la connexion
     * @param data données pour la connexion
     */
    public void creerProfil(String success, String status, String username, String mdp, List data) {
        profil = new Profil(success, status, username, mdp, data);
        // Serializer.serialize(nomFic, profil, contexte);
        // accesLocal.ajout(profil);
        accesDistant = new AccesDistant() ;
        String operation = (success == "0")?"connexion":"enreg";
        accesDistant.envoi(operation, profil.convertToJSONArray()) ;
    }

    /**
     * Récupération d'un profil sérialisé
     *
     * @param contexte contexte de l'application
     */
    private static void recupSerialize(Context contexte) {
        profil = (Profil)Serializer.deSerialize(contexte) ;
    }

    /**
     * valorisation du profil
     *
     * @param profil profil de connexion
     */
    public void setProfil(Profil profil){
        LoginAcces.profil = profil;
        Log.d("Profil : ", "************" + profil);
        ((TransfertActivity)contexte).recupProfil();
    }


    /**
     * Récupération du succès
     *
     * @return la valeur de la propriété succes
     */
    public String getSuccess() {
        if (profil==null) {
            return null ;
        }else {
            return profil.getSuccess() ;
        }
    }

    /**
     * Récupération du statut de la connexion
     *
     * @return la valeur de la propriété status
     */
    public String getStatus() {
        if (profil==null) {
            return null ;
        }else {
            return profil.getStatus() ;
        }
    }

    /**
     * Récupération de l'username
     *
     * @return la valeur de la propriété username
     */
    public String getUsername() {
        if (profil==null) {
            return null ;
        }else {
            return profil.getUsername() ;
        }
    }

    /**
     * Récupération du mot de passe
     *
     * @return la valeur de la propriété mdp
     */
    public String getMdp() {
        if (profil==null) {
            return null ;
        }else {
            return profil.getMdp() ;
        }
    }

    /**
     * Récupération des données de connexion
     *
     * @return la valeur de la propriété data
     */
    public List getData() {
        if (profil==null) {
            return null ;
        }else {
            return profil.getData() ;
        }
    }

}