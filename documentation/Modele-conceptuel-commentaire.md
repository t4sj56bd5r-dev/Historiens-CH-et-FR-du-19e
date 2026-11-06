# Commentaire du modèle conceptuel

## Person
Tout être humain.
### Propriétés
Nom standard, date de naissances, éventuellement la date de mort. Le lieu de naissance et l'origine ne déterminant pas automatiquement la nationalité, la séparation des deux propriétés est nécessaire pour répondre à la problématique. Il s'agit d'une classe objet.

## Institution
Classe d'objet se rapportant à une institution à laquelle des membres appartienennent.
### Propriétés
Nom, type, siège, fondation, définition.

## Geographical place 
Classe d'objet qui précise un lieu.
### Propriétés
Nom, type, définition, coordonnées géographiques.

## Publication
Décrit ce qu'une ou plusieurs Person ont publié au cours de leur vie.
### Propriétés 
Titre, année de publication, édition, sujet ou thème de la publication, sources, notice.

## Publication's Type
Précise la nature de la Publication et son contenu pour plus de contexte.
### Propriétés
Nom, définition. 

## Occupation
Un métier ou tout autre type d'occupation. Il s'agit d'une classe objet. Une même Person peut avoir plusieurs Occupations. Simultanées ou successives.
### Propriétés
Nom standard, notice.
### Relations
Une relation réfléxive de spécialisation, termes plus génériques associés à des termes plus précis. Par exemple 'épicier' spécialise le terme de 'négociant'.

## Appellation
Noms existants d'une même Person, qui peuvent être multiples.
### Propriétés
Nom, type de nom, langage, sources.

## Persons' Relationship
Classe décrivant la relation entre plusieurs Person, qui peuvent être multiples. Le principale type de realtion qui nous intéresse ici est celle d'enseignant-élève.
### Propriétés
Date de début, date de fin, sources.

## Persons' Relationship Type 
Classe décrivant le type de Relationship décrit plus haut. Il peut y avoir plusieurs Relationship Type pour une même Relationship entre les mêmes Person.
### Propriétés
Nom, définition.

## Membership
Classe qui décrit l'appartenance d'une Person à une Institution.  
### Propriétés
Date de début, date de fin, notes.

## Membership's Type
Précise la nature de Membership décrit plus haut. Les appartenances nous intéressant le plus sont celles dans le cadre d'une formation ou d'une activité professionnelle.
### Propriétés
Nom, définition.

## Pursuit
Le fait d'avoir telle occupation ou activité durant telle période. Il s'agit d'une classe temporalité (temporal entity).
### Propriétés
Date de début, date de fin, sources.
### Relations
Une Pursuit peut comprendre une et une seule personne, une et une seule occupation (ces deux relations sont nécessaires) et éventuellement on peut associer une (et une seule) organisation auprès de laquelle l'activité est exercée.

Si plusieurs organisation sont concernées par une activité, plusieurs individus de la classe Pursuit seront créées.