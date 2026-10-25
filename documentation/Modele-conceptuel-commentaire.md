# Commentaire du modèle conceptuel

## Person
Tout être humain.
### Propriétés
Nom standard, notice, le genre, éventuellement la date de mort. Il s'agit d'une classe objet (persistent item).

## Birth
Toute date se rapportant à la naissance d'une Person. Il ne peut y en avoir qu'une.
### Propriétés
Date, sources. 

## Appellation
Noms existants d'une même Person, qui peuvent être multiples.
### Propriétés
Nom, type de nom, langage, sources.

## Persons' Relationship
Classe décrivant la relation entre plusieurs Person, qui peuvent être multiples.
### Propriétés
Date de début, date de fin, sources.

## Persons' Relationship Type 
Classe décrivant le type de Relationship décrit plus haut. Il peut y avoir plusieurs Relationship Type pour une même Relationship entre les mêmes Person.
### Propriétés
Nom, définition.

## Occupation
Un métier ou tout autre type d'occupation. Il s'agit d'une classe objet (persistent item). Une même Person peut avoir plusieurs Occupations. simultanées ou successives.
### Propriétés
Nom standard, notice.
### Relations
Une relation réfléxive de spécialisation, termes plus génériques associés à des termes plus précis. Par exemple 'épicier' spécialise le terme de 'négociant'.

## Pursuit
Le fait d'avoir telle occupation ou activité durant telle période Il s'agit d'une classe temporalité (temporal entity).

Exemple: "Kepler was a mathematics teacher at a seminary school in Graz" (Wikipedia)
### Relations
Une Pursuit peut comprend une et une seule personne, une et une seule occupation (ces deux relations sont nécessaires) et éventuellement on peut associer une (et une seule) organisation auprès de laquelle l'activité est exercée.

Si plusieurs organisation sont concernées par une activité, plusieurs individus de la classe Pursuit seront créées.

## Tag
Un mot clé qui introduit un classement de recherche, généralement lié au questionnement.
### Relations
Relation reflexive (d'un classe vers elle même) qui créer une taxonomie (i.e. une hiérarchie) de mots clés, les plus généraux étant les parents ou ancêtres des plus spécifiques.

## Diplomas / Certificates
Documents attestant de l'achèvement d'une formation par une Person, délivrés par une Organisation. Une Person peut avoir plusieurs Diplomas.
### Propriétés
Date d'obtention, definition, sources.

## Organisation
Classe d'objet se rapportant à une institution à laquelle des membres appartienennent. 
### Propriétés
Nom, définition.

## Organisation Type
Classe qui précise la nature de l'Organisation.
### Propriétés
Nom, définition.

## Membership
Classe qui décrit l'appartenance d'une Person à une Organisation. 
### Propriétés
Label, date de début, date de fin, notes.

## Membership Type
Précise la nature de Membership décrit plus haut. 
### Propriétés
Nom, définition.

## Publication
Décrit ce qu'une ou plusieurs Person ont publié au cours de leur vie.
### Propriétés 
Date de publication, sujet ou thème de la publication, sources.

## Publication Type
Précise la nature de la Publication.
### Propriétés
Nom, définition. 

## Geographical place 

## Geographical place Type