# analyse-sql-assurance
Analyse de données sur la corrélation entre l'âge et le coût d'assurance médicale. Projet réalisé en sql et pyhton
🧠 Titre du projet
Analyse des charges d’assurance santé selon les tranches d’âge
🎯 Objectif du projet
Ce projet vise à explorer comment les frais médicaux moyens (charges) évoluent en fonction de l’âge des assurés. À partir d’un jeu de données anonymisé, nous avons regroupé les individus par tranche d’âge et analysé les coûts associés à chaque groupe.
Saviez-vous que les frais médicaux moyens augmentent de façon marquée avec l’âge ?
Dans ce projet, j’ai exploré un jeu de données anonymisé issu du secteur de l’assurance santé pour comprendre comment les charges (frais médicaux annuels) varient selon les tranches d’âge.

📊 Méthodologie
•	Source : jeu de données insurance.csv (Kaggle)
•	Outils : SQL pour l’analyse, Excel/Power BI pour la visualisation
•	Objectif : Identifier les profils les plus coûteux pour les assureurs
•	Étapes :
•	Nettoyage des données
•	Regroupement des âges en 5 catégories :
o	Jeunes adultes (18–25)
o	Adultes (26–35)
o	Adultes matures (36–45)
o	Pré-retraités (46–60)
o	Retraités (61+)
•	Calcul de la moyenne des charges par groupe
📈 Résultats
		
		
		
		
		<img width="574" height="278" alt="Capture d'écran 2025-09-20 041044" src="https://github.com/user-attachments/assets/c581936c-683a-4861-97b5-0a0688458c38" />

		
		
🔍 Interprétation
Les charges augmentent de manière significative avec l’âge. Cela reflète une hausse des besoins médicaux chez les individus plus âgés, notamment en raison de pathologies chroniques, de consultations plus fréquentes et de traitements spécialisés.
💼 Implications métier
•	Les assureurs peuvent ajuster les primes selon les profils d’âge
•	Les retraités représentent un segment à haut risque financier
•	Les jeunes adultes ont des charges plus faibles, mais peuvent bénéficier de produits d’entrée de gamme

💡 Ce que j’ai appris :
• 	Les charges augmentent progressivement avec l’âge, reflétant une hausse des besoins médicaux.
• 	Les retraités représentent le segment le plus coûteux, avec des charges annuelles supérieures de 130 % à celles des jeunes adultes.
• 	Ces données sont précieuses pour les assureurs qui souhaitent ajuster leurs primes ou proposer des produits adaptés à chaque profil.

🧰 Prochaines étapes :
Je travaille actuellement sur un simulateur de prime personnalisée basé sur l’âge, l’IMC et le statut de fumeur. 
Prochain Objectif : croiser les charges avec le statut de fumeur et l’IMC 
