<p align="center"><img src="https://image.prntscr.com/image/95kB4FcaRbaGbILlaxlxqA.png" alt="logo" title="logo" /></p>

# Forge Wizard

<table>
  <tr>
    <td><a href=""><img src="https://image.prntscr.com/image/_BncBgN9StCNArvFjsZLvA.png" width="200" height="600" alt="screenshot" title="screenshot" /></a></td>
    <td><a href=""><img src="https://image.prntscr.com/image/_BncBgN9StCNArvFjsZLvA.png" width="200" height="600" alt="screenshot" title="screenshot" /></a></td>
    <td><a href=""><img src="https://image.prntscr.com/image/_BncBgN9StCNArvFjsZLvA.png" width="200" height="600" alt="screenshot" title="screenshot" /></a></td>
  </tr>
</table>
  

## General Information

This project is an entry for the [The Riot Games API Challenge 2017](https://discussion.developer.riotgames.com/articles/4395/the-riot-games-api-challenge-2017.html).

by (EUW: Skt T1 Feed3r, EUW: ðemoń)

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


## Endpoints

- Riot endpoints

| Endpoint  | Description | Method | Parameters |
| ------------- | ------------- |
| v1/champions/update  | Install the latest champions from league of legends to database  |
| v1/champions/updateFreeRotate  | Update free rotate stats for the champions  |
| v1/summoner/verify | Check summoner name if exist and verify by third party verification endpoint from league |

- Runes Endpoint

| Endpoint  | Description | Method | Parameters |
| ------------- | ------------- |
| v1/runes/updateRunes  | Update or install the new runes fetch from [en_US_runesReforged.json](Web/public/en_US_runesReforged.json) | GET | Null
| v1/runes/updateLanes  | Update or install the champiosn roles fetch from [Lanes.json](Web/public/Lanes.json)  | GET | Null
| v1/runes/getRunes | Get latest runes for using in application | POST | Null


- Patch Endpoint

| Endpoint  | Description | Method | Parameters |
| ------------- | ------------- |
| v1/patch/addPatch  | Add patch version for the database  |
| v1/patch/addNote  | Add note for the added patch |
| v1/patch/getPatches | Get lataest patch for the runes include the notes |



- Rune Build Endpoint

| Endpoint  | Description | Method | Parameters |
| ------------- | ------------- |
| v1/build/getTools  | Fetch latest patches change, champions, and roles for using it before add the build |
| v1/build/setupData  | Fetch latest runes build from [data.json](Web/public/data.json) |
| v1/patch/getPatches | Get lataest patch for the runes include the notes |





## Disclaimer 

Forge Wizard isn't endorsed by Riot Games and doesn't reflect the views or opinions of Riot Games or anyone officially involved in producing or managing League of Legends. League of Legends and Riot Games are trademarks or registered trademarks of Riot Games, Inc. League of Legends © Riot Games, Inc.



