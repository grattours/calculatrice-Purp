
Calculatrice  PURP exercice

    design simple comme celle d'apple, avec ldes boutons : 
    AC, +/-, %, /, X,-,+,=,1,2,3,4,5,6,7,8,9
    avec un tag par boutons de chiffre = chiffre

    Connection du Label des résultats, et des actions par boutons
    action commune pour tous les boutons de chiffre, avec un sender

    variable du nombre en cours avec didset : s'il ce nombre est modifié, on met à  jour le label des résultat

    variable type d'opération( Charactere) 
    actions d'opération : alimenter la variable
    
    Fonction bouton chiffre touché: 
    récupération du tag avec le sender, a
    (alimenation du label de résultat)
    
    Fonction calcul en cours en fonction du type d'opération

    Fonction affichage du résultat : executer le calcul

    fonction executer le calcul attendu
        resultat = chiffre précédent (opération) chiffre en cours
        chiffre précédent = résultat
        chiffre en cours = résultat
    
    gérer la continuité du calcul avec les boutons d'opérations
    
    gérer la remise à zéro des opérations

(modif test pour Git Tower/Ghithub)

Améliorations à voir :

        autres opérations
        enumération pour les opérations
        prendre en compte la touche virgule
        MVC


