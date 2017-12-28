<p align="center"><img src="https://image.prntscr.com/image/95kB4FcaRbaGbILlaxlxqA.png"></p>

# Forge Wizard
## General Information

This project is an entry for the [The Riot Games API Challenge 2017](https://discussion.developer.riotgames.com/articles/4395/the-riot-games-api-challenge-2017.html).

by (EUW: Skt T1 Feed3r, EUW: )

You can download the app from Itunes [Forge Wizard](https://itunes.apple.com), a video demo [here](https://youtu.be/m943wpkSOiI)


The project is an iOS application which helps the new users to educate about using the new RUNES, and help the pro players to share their experience in the game by adding their own RUNES, not to mention the RUNES description with videos and how it works and the patch changes.

The app itself is an online/offline mode in case you want to see the champions RUNES and how it works, it's also provide the ability to specific your own RUNES so the other people could use them and share it with other friends,

Champions runes data reads from http://runeforge.gg

## Features

* Check the best why you have to pick this runes for the champion.
* Offline and online mode.
* You can share your own runes with other people.
* Check runes changes with league of legends updates
* Describe the new runes system with video and more !

## Technologies used

- Swift 
- Php Laravel framework

## Setup for laravel project

- Configure [.env.example](Web/.env.example) with the username, password, database for your installation
- Rename .env.example to .env
- Add to .env file RIOT_API=API KEY by change API KEY with riot api
- Create the database with the [sql-file](forgewizard.sql)
- Now you can call the endpoint :)


## Documentation 

Web service [here](web.md).


## Disclaimer 

Forge Wizard isn't endorsed by Riot Games and doesn't reflect the views or opinions of Riot Games or anyone officially involved in producing or managing League of Legends. League of Legends and Riot Games are trademarks or registered trademarks of Riot Games, Inc. League of Legends © Riot Games, Inc.



