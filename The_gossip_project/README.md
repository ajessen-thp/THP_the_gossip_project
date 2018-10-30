# The Gossip Project

Dans cette version de ce projet, j'ai une base de donnée très réduite mais il y un peu de front avec un ajout, update, delete et affichage des gossips.

## How to use

Pour commencer il faut cloner le projet :
```
git clone https://github.com/JostQ/The_Gossip_Project
```

Ensuite installe les dépendances :
```
bundle install
```
On créé la base de données :
```
rails db:create
```
On migre la base de données :
```
rails db:migrate
```

Pour avoir un minimum de données dans la base, on envoie les seeds :
```
rails db:seed
```

Et on lance le serveur :
```
rails server
```

Le site se trouve à l'adresse suivante :
```
localhost:3000
```

Lien vers Heroku :
```
https://the-gossip-project-513.herokuapp.com/
```

## Fait par : Quentin (@Dremsis)
