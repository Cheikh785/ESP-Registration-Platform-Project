<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<link type="text/css" rel="stylesheet" href="<c:url value="/css/fiche_inscription.css"/>" /> 
		<link type="text/css" rel="stylesheet" href="<c:url value="/css/bootstrap-4.4.1-dist/css/bootstrap.min.css"/>" /> 
		<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
		<script type="text/javascript" src="<c:url value="/css/bootstrap-4.4.1-dist/js/bootstrap.min.js"/>"></script>
		<script type="text/javascript" src="<c:url value="/css/materialize/js/materialize.min.js"/>"></script>
		<script> function verifierValide(valeur){ document.getElementById('valider').disabled = (valeur == false)? true : false; } </script>
		<title>Fiche d'inscription</title>
	</head>
	<body>
    
 	<h2>UNIVERSITÉ CHEIKH ANTA DIOP DE DAKAR</h2> 
   	<div class="universite">
   		<h4>ANNÉE UNIVERSITAIRE 2020/2021</h4>
   	</div>
    <img alt="logo de l'ucad" src="<c:url value="/images/ucad1.jpg"/>"> 
    <h1>DOSSIER D'INSCRIPTION ADMINISTRATIVE</h1> 
        
    <form action="fiche_etudiant" method="post">                
        <label for="carte_identite">N° Carte d'Identité Nationale(Sénégalais uniquement)</label>&nbsp;&nbsp;&nbsp;
        <input type="text" name="carte_identite" id="carte_identite" required><br><br><br>
   
        <fieldset>
            <legend>1. ÉTAT CIVIL</legend>
                <table>
                    <tr>
                        <td><label for="nom">Nom</label></td>
                        <td><input type="text" name="nom" id="nom" required></td>

                        <td><label for="prenom1">Prénom1</label></td>
                        <td><input type="text" name="prenom1" id="prenom1" required></td>
                    </tr>   

                    <tr>
                        <td><label for="nom_mari">Nom du mari</label></td>
                        <td><input type="text" name="nom_mari" id="nom_mari"></td>

                        <td><label for="prenom2">Prénom2</label></td>
                        <td><input type="text" name="prenom2" id="prenom2"></td>
                    </tr>

                    <tr>
                        <td><label for="date_naissance">Date de naissance </label></td>
                        <td>
                            <input type="date" name="date_naissance" id="date_naissance" required>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <label for="sexe">Sexe</label>
                            <input type="text" name="sexe" class="input_sexe"id="input_sexe" required>
                        </td>
                        
                        <td><label for="prenom3">Prénom3</label></td>
                        <td><input type="text" name="prenom3" id="prenom3"></td>
                    </tr>

                    <tr>
                        <td><label for="lieu_naissance">Lieu de naissance</label></td>
                        <td><input type="text" name="lieu_naissance" id="lieu_naissance" required></td>

                        <td><label for="region_naissance">Région de naissance&nbsp;&nbsp;&nbsp;</label></td>
                        <td><input type="text" name="region_naissance" id="region_naissance" required></td>
                    </tr>
                    <tr>
                        <td><label for="pays_naissance">Pays de naissance&nbsp;&nbsp;&nbsp;</label></td>
                        <td><input type="text" name="pays_naissance" id="pays_naissance" required></td>

                        <td><label for="nationalite">Nationalité</label></td>
                        <td><input type="text" name="nationalite" id="nationalite" required></td>
                    </tr>
                </table>

                

                
            </fieldset><br><br><br>






            <fieldset>
                <legend>2. ADRESSE ACTUELLE</legend>
                <table>
                    <tr>
                        <td><label for="adresse_dakar">Adresse à Dakar(obligatoire)&nbsp;&nbsp;&nbsp;</label></td>
                        <td><input type="text" name="adresse_dakar" id="adresse_dakar"></td>

                        <td><label for="boite_postale">Boite Postale</label></td>
                        <td><input type="text" name="boite_postale" id="boite_postale"></td>
                    </tr>
                    
                    <tr>
                        <td><label for="portable">Portable</label></td>
                        <td><input type="text" name="portable" id="portable" required>&nbsp;&nbsp;&nbsp;
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                        
                        <td><label for="email">E-mail(obligatoire)&nbsp;&nbsp;&nbsp;</label></td>
                        <td><input type="email" name="email" id="email" required></td>
                    </tr>
                </table>
                    <label for="telephone">Téléphone</label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <input type="text" name="telephone" id="telephone">
            </fieldset><br><br><br>






            <fieldset>
                <legend>3. EMPLOI</legend>
                <div class="activite_salarie">
                    Exercez-vouz une activité salariée ?&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                    <label for="activite_salarie">Oui</label>
                    <input type="radio" name="activite_salarie" value="Oui" id="activite_salarie" required>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    <label for="activite_salarie1">Non</label>
                    <input type="radio" name="activite_salarie" value="Non" id="activite_salarie1" required>      				

                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;Status de l'Étudiant &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br><br><br>
                    <label for="categorie_socioprofessionelle">Catégorie_socioprofessionelle</label>&nbsp;&nbsp;&nbsp;
                    <input type="text" name="categorie_socioprofessionelle" id="categorie_socioprofessionelle">
                </div>

                <table>
                    <tr>
                        <td><label for="status_etudiant">Régime normal</label></td>
                        <td><input type="radio" name="status_etudiant" value="regime_normal" id="status_etudiant" required></td>
                    </tr>

                    <tr>
                        <td><label for="status_etudiant1">Régime Salarié</label></td>
                        <td><input type="radio" name="status_etudiant" value="regime_salarie" id="status_etudiant1" required></td>
                    </tr>

                    <tr>
                        <td><label for="status_etudiant2">Régime Particulier</label></td>
                        <td><input type="radio" name="status_etudiant" value="regime_particulier" id="status_etudiant2" required></td>
                    </tr>

                    <tr>
                        <td><label for="status_etudiant3">Mise en Position de stage</label></td>
                        <td><input type="radio" name="status_etudiant" value="regime_stage" id="status_etudiant3" required></td>
                    </tr>
                </table>
            </fieldset><br><br><br>






            <fieldset>
                <legend>4. SITUATION FAMILIALE</legend>

                <br><label for="situation_familiale">Situation Familiale&nbsp;&nbsp;&nbsp;</label>
                <input type="text" name="situation_familiale" id="situation_familiale" required>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;     
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;           

                <label for="nombre_enfants">Nombre d'enfants&nbsp;&nbsp;&nbsp;</label>
                <input type="text" name="nombre_enfants" class="nombre_enfant" id="nombre_enfants" required><br><br>
            </fieldset><br><br><br>






            <fieldset>
                <legend>5. INSCRIPTION ANNUELLE</legend><br>
                <table>
                    <tr>
                        <td><label for="annee_etude">Année d'étude&nbsp;&nbsp;&nbsp;</label></td>
                        <td>
                            <input type="text" name="annee_etude" id="annee_etude" required>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;     
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        </td>

                        <td><label for="departement">Département&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br><br></label></td>
                        <td><input type="text" name="departement" id="departement" required><br><br></td>
                    </tr>
                    
                    <tr>
                        <td><label for="cycle">Cycle</label></td>
                        <td><input type="text" name="cycle" id="cycle" required></td>

                        <td><label for="option">Option choisie</label></td>
                        <td><input type="text" name="option" id="option" required></td>
                    </tr>
                </table>

                Nombre d'inscription antérieures : &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                <label for="nombre_inscription">1ère Année</label>
                <input type="radio" name="nombre_inscription" value="1er annee" id="nombre_inscription" required>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                <label for="nombre_inscription1">2ème Année</label>
                <input type="radio" name="nombre_inscription" value="2ème annee" id="nombre_inscription1" required><br><br>

                Redoublez-vous ? &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                <label for="redoubler">Oui</label>
                <input type="radio" name="redoubler" value="Oui" id="redoubler" required>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                <label for="redoubler1">Non</label>
                <input type="radio" name="redoubler" value="Non" id="redoubler1" required><br><br>

                Horaires des TD : &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                
                <label for="horaire">Avant 18H </label>
                <input type="radio" name="horaire" value="avant18H" id="horaire">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;

                <label for="horaire1">Après 18H </label>
                <input type="radio" name="horaire" value="apres18H" id="horaire1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;

                <label for="horaire2">Régime Particulier </label>
                <input type="radio" name="horaire" value="particulier" id="horaire2">
            </fieldset><br><br><br>





            <fieldset>
                <legend>6. BOURSES</legend>

                <div class="bourse">
                    <table>
                        <tr>
                            <td>Bourse</td>
                            <td><br><input type="radio" name="bourse" id="bourse" value="nom_boursier" required>
                            <label for="bourse">Non Boursier</label>
                        </tr>

                        <tr>
                            <td></td>
                            <td><input type="radio" name="bourse" id="bourse1" value="boursier" required>
                            <label for="bourse1">Boursier</label>
                        </tr>
                        
                        <tr>
                            <td></td>
                            <td><input type="radio" name="bourse" id="bourse2" value="etranger" required>
                            <label for="bourse2">Étranger</label>
                        </tr>
                        
                        <tr>
                            <td></td>
                            <td><input type="radio" name="bourse" id="bourse3" value="exonere" required>
                            <label for="bourse3">Étranger exonéré</label>
                        </tr>

                        <tr>
                            <td></td>
                            <td><input type="radio" name="bourse" id="bourse4" value="etranger_normal" required>
                            <label for="bourse4">Étranger tarif normal</label>
                        </tr>
                    </table>
                </div>

                <table>
                    <tr>
                        <td>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            &nbsp;&nbsp;&nbsp;Nature de la bourse
                        </td>
                        <td><br><input type="radio" name="nature_bourse" id="nature_bourse" value="national" required>
                        <label for="nature_bourse">National</label></td>
                    </tr>

                    <tr>
                        <td></td>
                        <td><input type="radio" name="nature_bourse" id="nature_bourse1" value="etranger" required>
                        <label for="nature_bourse1">Étrangère</label></td>
                    </tr>

                    <tr>
                        <td></td>
                        <td><input type="radio" name="nature_bourse" id="nature_bourse2" value="etablissement" required>
                        <label for="nature_bourse2">de l'Établissement</label></td>
                    </tr>
                </table>

                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <label for="exonere_à">Exonéré à</label>&nbsp;&nbsp;&nbsp;&nbsp;
                <input type="text" name="exonere_a" id="exonere_à" class="exonere_à">&nbsp;%

                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <label for="montant_bourse">Montant de la bourse</label>&nbsp;&nbsp;&nbsp;&nbsp;
                <input type="text" name="montant_bourse" id="montant_bourse" class="montant_bourse">&nbsp;&nbsp;FCFA<br><br>

                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <label for="organisme_boursier">Organisme boursier</label>&nbsp;&nbsp;&nbsp;&nbsp;
                <input type="text" name="organisme_boursier" id="organisme_boursier">          
            </fieldset><br><br><br>





            <fieldset>
                <legend>7. CURRICULUM</legend>

                <table>
                    <tr>
                        <td>Diplômes obtenus</td>
                        <td>Série</td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>

                    <tr>
                        <td class="td_input"><label for="diplome_bac">Diplômé</label></td>
                        <td><input type="text" name="diplome_bac" placeholder="Baccalauréat" class="td_input_diplome" readonly></td>
                        <td><label for="annee_bac">Année</label></td>
                        <td><input type="text" name="annee_bac" id="annee_bac" class="annee_diplome" required></td>
                        <td><label for="mention_bac">Mention</label></td>
                        <td><input type="text" name="mention_bac" id="mention_bac" class="annee_mention" required></td>
                        <td><label for="lieu_bac">Lieu</label></td>
                        <td><input type="text" name="lieu_bac" id="lieu_bac" required></td>
                    </tr>

                    <tr>
                        <td><label for="diplome_dut">DUEL, DUES, DUT, BTS</label></td>
                        <td><input type="text" name="diplome_dut" id="diplome_dut" class="td_input_diplome"></td>
                        <td><label for="annee_dut">Année</label></td>
                        <td><input type="text" name="annee_dut" id="annee_dut" class="annee_diplome"></td>
                        <td><label for="mention_dut">Mention</label></td>
                        <td><input type="text" name="mention_dut" id="mention_dut" class="annee_mention"></td>
                        <td><label for="lieu_dut">Lieu</label></td>
                        <td><input type="text" name="lieu_dut" id="lieu_dut"></td>
                    </tr>

                    <tr>
                        <td><label for="diplome_license">License complète</label></td>
                        <td><input type="text" name="diplome_license" id="diplome_license" class="td_input_diplome"></td>
                        <td><label for="annee_license">Année</label></td>
                        <td><input type="text" name="annee_license" id="annee_license" class="annee_diplome"></td>
                        <td><label for="mention_license">Mention</label></td>
                        <td><input type="text" name="mention_license" id="mention_license" class="annee_mention"></td>
                        <td><label for="lieu_license">Lieu</label></td>
                        <td><input type="text" name="lieu_license" id="lieu_license"></td>
                    </tr>

                    <tr>
                        <td><label for="diplome_master">Master</label></td>
                        <td><input type="text" name="diplome_master" id="diplome_master" class="td_input_diplome"></td>
                        <td><label for="annee_master">Année</label></td>
                        <td><input type="text" name="annee_master" id="annee_master" class="annee_diplome"></td>
                        <td><label for="mention_master">Mention</label></td>
                        <td><input type="text" name="mention_master" id="mention_master" class="annee_mention"></td>
                        <td><label for="lieu_master">Lieu</label></td>
                        <td><input type="text" name="lieu_master" id="lieu_master"></td>
                    </tr>

                    <tr>
                        <td><label for="diplome_doctorat">Doctorat</label></td>
                        <td><input type="text" name="diplome_doctorat" id="diplome_doctorat" class="td_input_diplome"></td>
                        <td><label for="annee_doctorat">Année&nbsp;&nbsp;&nbsp;&nbsp;</label></td>
                        <td><input type="text" name="annee_doctorat" id="annee_doctorat" class="annee_diplome"></td>
                        <td><label for="mention_doctorat">Mention&nbsp;&nbsp;&nbsp;&nbsp;</label></td>
                        <td><input type="text" name="mention_doctorat" id="mention_doctorat" class="annee_mention"></td>
                        <td><label for="lieu_doctorat">Lieu&nbsp;&nbsp;&nbsp;&nbsp;</label></td>
                        <td><input type="text" name="lieu_doctorat" id="lieu_doctorat"></td>
                    </tr>
                </table>
            </fieldset><br><br><br>





            <fieldset>
                <legend>8. CONTACT</legend>

                <p>Responsable / Personne à contacter en cas de besoin à Dakar (à préciser)</p>
                <p>Etat civil</p>

                <table>
                    <tr>
                        <td><label for="nom_contact">Nom</label></td>
                        <td>
                            <input type="text" name="nom_contact" id="nom_contact" required>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            &nbsp;&nbsp;&nbsp;
                        </td>

                        <td><label for="prenom1_contact">Prénom1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label></td>
                        <td><input type="text" name="prenom1_contact" id="prenom1_contact" required></td>
                    </tr>

                    <tr>
                        <td><label for="nom_mari_contact">Nom du mari</label></td>
                        <td><input type="text" name="nom_mari_contact" id="nom_mari_contact"></td>

                        <td><label for="prenom2_contact">Prénom2</label></td>
                        <td><input type="text" name="prenom2_contact" id="prenom2_contact"></td>
                    </tr>

                    <tr>
                        <td><label for="lien_parente">Lien de parenté</label>&nbsp;&nbsp;&nbsp;&nbsp;</td>
                        <td><input type="text" name="lien_parente" id="lien_parente" required></td>

                        <td><label for="prenom3_contact">Prénom3</label></td>
                        <td><input type="text" name="prenom3_contact" id="prenom3_contact"></td>
                    </tr>
                </table>

                <p>Adresse</p>

                <table>
                    <tr>
                        <td><label for="ville_contact">Ville</label></td>
                        <td><input type="text" name="ville_contact" id="ville_contact" required>&nbsp;&nbsp;&nbsp;
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        </td>

                        <td><label for="quartier_contact">Rue, Quartier</label>&nbsp;&nbsp;&nbsp;&nbsp;</td>
                        <td><input type="text" name="quartier_contact" id="quartier_contact" required></td>

                        <td><label for="boite_postale_contact">Boite Postale&nbsp;&nbsp;&nbsp;&nbsp;</label></td>
                        <td><input type="text" name="boite_postale_contact" id="boite_postale_contact"></td>
                    </tr>

                    <tr>
                        <td><label for="telephone_contact">Téléphone</label>&nbsp;&nbsp;&nbsp;&nbsp;</td>
                        <td><input type="text" name="telephone_contact" id="telephone_contact"></td>

                        <td><label for="portable_contact">Portable</label></td>
                        <td><input type="text" name="portable_contact" id="portable_contact" required>&nbsp;&nbsp;
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        </td>

                        <td><label for="fax_contact">Fax</label></td>
                        <td><input type="text" name="fax_contact" id="fax_contact"></td>
                    </tr>
                </table>

                <label for="email_contact">E-mail&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
                <input type="email" name="email_contact" id="email_contact"><br><br><br>

                Le Responsable est-il étudiant ? &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                <input type="radio" name="responsable_etudiant" id="responsable_etudiant" value="Oui" required>
                <label for="responsable_etudiant">Oui</label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                <input type="radio" name="responsable_etudiant" id="responsable_etudiant1" value="Non" required> 
                <label for="responsable_etudiant1">Non</label><br><br>

                Personne à contacter ? &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                <input type="radio" name="personne_a_contacter" id="personne_a_contacter" value="Oui" required>
                <label for="personne_a_contacter">Oui</label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                <input type="radio" name="personne_a_contacter" id="personne_a_contacter1" value="Non" required>
                <label for="personne_a_contacter1">Non</label>
            </fieldset><br><br><br>





            <fieldset>
                <legend>9.VISITE MÉDICALE</legend>

                Apte &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                <input type="radio" name="apte" id="apte" value="Oui" disabled <c:if test="${ apte == true }" > <c:out value="checked"> </c:out> </c:if>
                >
                <label for="apte">Oui</label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                <input type="radio" name="apte" id="apte1" value="Non"  disabled 
                <c:if test="${ apte == false }" > <c:out value="checked"> </c:out> </c:if>>
                <label for="apte1">Non</label><br><br>

                Cachet du medecin &nbsp;&nbsp;&nbsp;&nbsp;
                <input type="checkbox" name="cachet_medecin" value="Oui" disabled <c:if test="${ cachet_medecin == true }" > <c:out value="checked"> </c:out> </c:if> >

                <p>La visite médicale est obligatoire et le certificat de visite/contre-visite <br>
                doit être établi et présenté aux services de la scolarité avant le 30 octobre <br>
                de l'année en couts, délai de rigueur.</p>
            </fieldset><br><br><br>





            <fieldset>
                <legend>10.PAIEMENT FRAIS SCOLARITÉ</legend>

                Payé &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                <label for="paye">Oui</label>
                <input type="radio" name="paye" id="paye" value="Oui" disabled <c:if test="${ paye == true }" > <c:out value="checked"> </c:out> </c:if> > 
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                <label for="paye1">Non</label>
                <input type="radio" name="paye" id="paye1" value="Non" disabled <c:if test="${ paye == false }" > <c:out value="checked"> </c:out> </c:if> ><br><br>

                Cachet de l'agent comptable&nbsp;&nbsp;&nbsp;&nbsp;
                <input type="checkbox" name="cachet_agent_comptable" id="" value="Oui" disabled <c:if test="${ cachet_agent_comptable == true }" > <c:out value="checked"> </c:out> </c:if> >

                <p>Le paiement des frais de scolarité est obligatoire et doit se faire au près <br>
                de l'agence comptable universitaire avant le 30 octobre 
                de l'année en cours, <br>délai de rigueur.</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            </fieldset><br><br><br>

            <p class="soussigne">Je soussigné(e) certifie sur l'honneur l'exactitude des renseignements fournis ci-dessus.</p>

            <label for="a_dakar_le">A Dakar, le (obligatoire)</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <input type="date" name="a_dakar_le" id="a_dakar_le" required>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

            <label for="signature">Signature</label>&nbsp;&nbsp;
            <input type="checkbox" value="Oui" name="signature" id="signature" required onclick="verifierValide(this.checked)"><br><br><br><br>
            
            <%-- <c:if test="${ !empty apte }" > <c:out value="${ apte }"> </c:out> </c:if>  --%>

            <input class="btn btn-primary" id="valider" type="submit" value="Soummettre" disabled />
            <input class="btn btn-danger" id="reset" type="reset" value="Reset">

        </form>
</body>
</html>



