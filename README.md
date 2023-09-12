# Stage_Actia_gesture_recognition_using_Mmwave_radar_Data
# Description
Ce projet vise à développer un modele de reconnaissance de gestes en utilisant des données radar. Il exploite les informations radar pour identifier et classifier divers gestes effectués par un utilisateur, ouvrant ainsi la voie à des applications potentielles comme les véhicules autonomes.
# Technologies Utilisées
Ce projet a été développé en utilisant les technologies suivantes :
*MATLAB  

*Python
# Base de Données
Dans ce projet, nous avons utilisé la base de données "dopnet", qui contient les données de 6 personnes effectuant différents gestes tels que click, swipe, pinch et wave. Cette base de données est essentielle pour l'entraînement et les tests du système de reconnaissance de gestes radar.

Vous pouvez télécharger les données depuis le lien suivant ("https://github.com/UCLRadarGroup/DopNet/blob/master/data/Data_Download_And_Details.md") et les placer dans le même répertoire que le projet.

Une fois les données téléchargées, assurez-vous de les organiser correctement dans la structure de répertoire requise pour que votre application puisse les utiliser sans problème.
# Structure du Projet
Le projet est organisé de manière à faciliter le développement, l'entraînement et la compréhension du système de reconnaissance de gestes radar. Voici une explication de la structure du projet :

CNN.m : Ce fichier MATLAB contient le code source du modèle de réseau de neurones convolutif (CNN) utilisé pour la reconnaissance de gestes radar. Vous pouvez explorer ce fichier pour comprendre la structure et les paramètres du modèle.

read_data.mat : Ce fichier MATLAB est conçu pour lire les données d'entraînement du modèle. Il est essentiel pour charger les données nécessaires à l'entraînement du CNN. Assurez-vous d'avoir correctement organisé vos données dans le répertoire data pour une utilisation efficace de ce fichier.

read_test_data.mat : Ce fichier MATLAB est utilisé pour lire les données de test. Il permet au modèle d'évaluer sa performance sur un ensemble de données de test distinct. De même, assurez-vous que vos données de test sont correctement organisées dans le répertoire data.

visualize_data.ipynb : Ce fichier python est un outil de visualisation qui vous permet d'explorer les spectrogrammes des différents gestes enregistrés dans la base de données. Cette visualisation peut vous aider à mieux comprendre les données radar que vous utilisez dans votre projet.



=> Après l'entraînement du modèle, nous avons obtenu une précision remarquable de 97,905 %. Vous pouvez consulter la figure ci-jointe pour visualiser la matrice de confusion qui détaille les performances du modèle en termes de classification des gestes.  

<p align="center">
  <img src="https://github.com/140300/Stage_Actia_gesture_recognition_using_Mmwave_radar_Data/blob/main/confusion_matrix.png" alt="Alt Text">
</p>



