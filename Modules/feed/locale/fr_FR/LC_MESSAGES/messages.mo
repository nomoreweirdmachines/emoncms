��    �      D  �   l      8     9     B     K     R     X     `     d     l     t     x     {          �     �     �     �  �   �     *     1  1   G  5   y      �      �     �  
   �            
                  /     5     >  h   O     �     �     �     �     �            "   9  !   \  	   ~     �     �     �     �     �  &   �          (  @   /     p     y     �     �     �  
   �     �     �     �  �  �     �     �      �     �            �     �   �     Z     p     y     �  /   �     �  $   �     �          '      0  $   Q     v     ~     �     �     �     �     �      �  #        2     ?     F     T     f  
   }     �     �  "   �     �     �       D        ]  <   b  �   �  E   G     �     �     �  6   �     �     �  c     Y   l  	   �  :   �  #        /  	   4     >     T     Y     k     }  #   �     �     �     �     �  	  �  
   �                          "  	   &     0     8     <     ?     C     K     O     V     Y  �   b          
  :   $  D   _  &   �  %   �     �  
   �          	          (     /  	   F     P     a  �   ~           #      B      ]   )   o      �   7   �   <   �   *   -!     X!  #   i!  (   �!     �!     �!  &   �!  @   �!  %   9"     _"  d   h"     �"     �"     �"     �"     #     &#     8#     G#     g#  �  l#     '     %'  +   >'  (   j'     �'     �'  �   �'  �   �(  %   )  
   A)     L)     \)  =   n)     �)  6   �)  $   �)  $   *     2*  -   @*  2   n*     �*     �*     �*     �*     �*  #   �*  !   +  $   3+  4   X+     �+     �+     �+     �+  &   �+     ,     ,  /   6,  5   f,  &   �,     �,  '   �,  m   
-     x-  M   �-  �   �-  \   �.  )   /     :/     A/  ;   X/  
   �/     �/  �   �/     80     �0  E   �0  2   1     P1     Y1  (   o1     �1  #   �1     �1     �1  4   �1     %2  (   ,2     U2  (   b2     �            x   |      B   m           `   �   g   F   W   d   <      o      u   k   U   K       ,      t   R       z   h   ;   "       $       s       �       I   ~   e                  b   @          (   n              H      A   V   ]   L   �   T          }   *               Z       q   M   :      .       
   �   p       v       [   6   ^       a   4       '   l   w   f           	   S   r   C   8       _      #   E   -   7          2   Q          P   y   O       1      Y      >   9      X          c           G      !       ?           )              /   3   \   +   i       =   j         �   5   0              %       &          N       D          J                 {    - 1 year - 2 year 1 hour 1 min 10 mins 10s 12 hour 15 mins 15s 1s 20s 30 mins 30s 5 mins 5s 6 hour Add the HTTP header: "Authorization: Bearer APIKEY" e.g. curl http://127.0.0.1/emoncms/feed/value.json?id=1 -H "Authorization: Bearer APIKEY" Annual Apikey authentication Append on the URL of your request: &apikey=APIKEY Are you sure you want to delete all the feed's data?? Are you sure you want to delete: Are you sure you want to delete? Auto CSV export Cancel Clear Clear Data Close Create new feed Daily Datatype Date time format Date time in excel format is in user timezone. Offset can be set if exporting in Unix epoch time format. Days Delete data point Delete existent feed Delete feed Delete feed permanently Delete permanently Deleting a feed is permanent. ERROR: Could not save processlist. ERROR: Feed could not be created. Edit feed Empty feed data up to Empty feed of all data End date & time  Engine Error setting processlist Estimated download file size is large. Estimated download size:  Export Export CSV data (timeformat=1: provides date time string format) Feed API Feed API Help Feed API helper Feed DataType:  Feed Name:  Feed Tag:  Feed deleted Feed setup actions Feeds Feeds are where your monitoring data is stored. The route for creating storage feeds is to start by creating inputs (see the inputs tab). Once you have inputs you can either log them straight to feeds or if you want you can add various levels of input processing to your inputs to create things like daily average data or to calibrate inputs before storage. Alternatively you can create Virtual feeds, this is a special feed that allows you to do post processing on existing storage feeds data, the main advantage is that it will not use additional storage space and you may modify post processing list that gets applyed on old stored data. You may want the next link as a guide for generating your request:  Get all feed fields Get feed field Get feed meta (PHPFina, PHPFiwa) Get feed process list Html Id If you have Input Processlist processors that use this feed, after deleting it, review that process lists or they will be in error, freezing other Inputs. Also make sure no Dashboards use the deleted feed. If you want to call any of the following actions when your not logged in you have this options to authenticate with the API key: Insert new data point Interval Invalid feed Invalid input Invalid proccess for Virtual Feed, try another. JSON Last updated time and value for feed Last value for multiple feeds Last value of a given feed Limit is List feeds for autenticated user List public feeds for the given user Monthly Name New Virtual Feed New virtual feed No feeds created Offset secs (for daily) Please enter a valid end date. Please enter a valid start date. Please select interval to download. Process list Public Read & Write: Read feed actions Read feed data actions Read only: Refresh feed size Reset feed process list Return buffer points pending write Return total engines size Returns feed data Returns histogram data Returns kwh consumed in a given power band using histogram data type Save Select the time range and interval that you wish to export:  Selecting an interval shorter than the feed interval (or Auto) will use the feed interval instead. Averages are only returned for feed engines with built in averaging. Server could take a long time or abort depending on stored data size. Set feed process list Size Start date & time Start date must be further back in time than end date. Tag The feed list view This is a Virtual Feed, after deleting it, make sure no Dashboard continue to use the deleted feed. This is a new feature. Consider backing up your data before you continue. OK to continue? This page To use the json api the request url needs to include .json Total size of used space for feeds: Trim Trim Data Try exporting anyway? Unit Update data point Update feed field Updated Use POST parameter: "apikey=APIKEY" Value Virtual feed process actions Weekly Write feed data actions Project-Id-Version: emoncms3
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2018-08-06 12:30+0200
PO-Revision-Date: 2018-08-06 12:41+0200
Last-Translator: Aymeric THIBAUT
Language-Team: Baptiste Gaultier (Télécom Bretagne) <baptiste.gaultier@telecom-bretagne.eu>
Language: fr_FR
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Poedit-KeywordsList: _;gettext;gettext_noop
X-Poedit-Basepath: .
X-Poedit-SourceCharset: utf-8
X-Generator: Poedit 2.1.1
X-Poedit-SearchPath-0: ../../..
 - 1 année - 2 années 1 heure 1 min 10 mins 10s 12 heures 15 mins 15s 1s 20s 30 mins 30s 5 mins 5s 6 heures Ajoutez l'en-tête HTTP : <b>"Authorization: Bearer APIKEY"</b> par exemple curl http://127.0.0.1/emoncms/feed/value.json?id=1 -H "Authorization: Bearer APIKEY" Annuel Authentification clé API Ajoutez à l'URL de votre requête : <b>&apikey=APIKEY</b> Etes vous sûr de vouloir supprimer toutes les données de ce flux ? Êtes-vous sûr de vouloir supprimer : Êtes-vous sûr de vouloir supprimer? Auto Export CSV Annuler Nettoyer Nettoyer les données Fermer Créer un nouveau flux Quotidien Type de données Format de l'heure de la date L'heure de la date au format excel est dans le fuseau horaire de l'utilisateur. Le décalage peut être réglé si vous exportez au format d'heure epoch Unix. Jours Supprimer un point de données Supprimer un flux existant Supprimer le flux Supprimer le flux de manière permanente? Supprimer de façon permanente ATTENTION ! La suppression d'un flux est irréversible. ERREUR : Impossible de sauvegarder la liste des traitements. ERREUR : Le flux ne peut pas être créé. Modifier le flux Vider les flux de données jusqu'à Nettoyer les flux de toutes les données Date & heure de fin Moteur Erreur définition liste de traitement La taille estimée du fichier de téléchargement est importante Taille de téléchargement estimée : Exporter Exporter des données CSV (timeformat=1: fournit la date et l'heure au format chaine de caractères) API Flux Aide de l'API Flux Aide de l'API Flux Type de données de flux :  Nom de flux : Étiquette flux : Flux supprimé Actions de paramétrage de flux Flux Les flux sont l'endroit où vos données sont stockées. L'itinéraire pour créer des flux de stockage consiste à créer des sources (voir l'onglet des sources). Une fois que vous avez des sources, vous pouvez les enregistrer directement dans des flux ou, si vous le souhaitez, vous pouvez ajouter différents niveaux de traitement d'entrée à vos sources pour créer des choses comme des données moyennes quotidiennes ou pour calibrer les sources avant le stockage. Alternativement, vous pouvez créer des flux virtuels, il s'agit d'un flux spécial qui vous permet de faire un post-traitement sur les données existantes de stockage, l'avantage principal est qu'il n'utilise pas d'espace de stockage supplémentaire et que vous pouvez modifier la liste de post-traitement qui est appliquée sur les anciennes données stockées. Vous pouvez considérer le lien suivant comme un guide pour générer votre demande : Obtenir tous les champs du flux Obtenir le champ du flux Obtenir les meta du flux (PHPFina, PHPFiwa) Obtenir la liste des traitements de flux Html Id Si vous avez des traitements qui utilisent ce flux, après l'avoir supprimé, examinez ces listes de traitements sinon ils seront en erreur, en bloquant d'autres sources. Assurez-vous également qu'aucun tableau de bord n'utilise le flux supprimé. Si vous voulez appeler une des actions suivantes sans être connecté, vous avez ces options pour vous authentifier avec la clé API : Insérer un nouveau point de données Intervalle Flux non valide Source non valide Traitement non valide pour ce Flux Virtuel, essayez un autre. JSON Dernière valeur et temps de mise à jour pour le flux Dernière valeur pour plusieurs flux Dernière valeur pour un flux donné La limite est Lister les flux pour utilisateur authentifié Lister les flux publics pour un utilisateur donné Mensuel Nom Nouveau Flux Virtuel Nouveau flux virtuel Aucun flux disponible Secondes décalage (pour quotidien) Entrez SVP une date de fin valide Entrez SVP une date de début valide Sélectionnez SVP un intervalle de téléchargement. Liste des traitements Public Lecture & Écriture : Actions de flux en lecture Actions de données de flux en lecture Lecture uniquement :  Rafraîchir la taille du flux Réinitialiser la liste des traitements de flux Retourner les points de tampon en attente d'écriture Retourner la taille totale des moteurs Retourner les données du flux Retourner les données de l'histogramme Retourner les kwh consommés pour une bande de puissance donnée en utilisant un type de données histogramme Sauvegarder Sélectionner la plage et l'intervalle de temps que vous souhaitez exporter : La sélection d'un intervalle plus petit que l'intervalle du flux (ou Auto) utilisera l'intervalle du flux à la place. Les moyennes sont retournées seulement pour les moteurs de flux avec intégration interne des moyennes. Le serveur peut prendre du temps ou abandonner suivant la taille des données enregistrées. Définir la liste des traitements de flux Taille Date & heure de début La date de début doit être antérieure à la date de fin. Étiquette Liste des flux  C'est un Flux Virtuel, après avoir supprimé ce dernier, assurez-vous qu'aucun Tableau de bord continue à utiliser le champ supprimé. Ceci est une nouvelle fonctionnalité. Veuillez effectuer une sauvegarde de vos données avant de continuer. Ok pour continuer? Cette page (documentation API) Pour utiliser l'api json, vous devez ajouter .json à la fin de l'url Taille totale de l'espace utilisé pour les flux : Réduire Réduire les données Essayer l'exportation dans tous les cas? Unité Mettre à jour un point de données Mettre à jour un champ de flux Mise à jour Utilisez le paramètre POST : <b>"apikey=APIKEY"</b> Valeur Actions de traitements des flux virtuels Hebdomadaire Actions de données de flux en écriture 