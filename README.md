<p align="center"><img src="https://image.prntscr.com/image/95kB4FcaRbaGbILlaxlxqA.png" alt="logo" title="logo" /></p>

# Forge Wizard

<table>
  <tr>
    <td><a href="https://image.prntscr.com/image/VonEf-JZRzilGMM3x5wuIg.png"><img src="https://image.prntscr.com/image/VonEf-JZRzilGMM3x5wuIg.png" alt="screenshot" title="screenshot" /></a></td>
    <td><a href="https://image.prntscr.com/image/_BncBgN9StCNArvFjsZLvA.png"><img src="https://image.prntscr.com/image/_BncBgN9StCNArvFjsZLvA.png" alt="screenshot" title="screenshot" /></a></td>
    <td><a href="https://image.prntscr.com/image/8FnvWCJlSnq5WB9yoviIBw.png"><img src="https://image.prntscr.com/image/8FnvWCJlSnq5WB9yoviIBw.png" alt="screenshot" title="screenshot" /></a></td>
            <td><a href="https://image.prntscr.com/image/HvIZyBWNRlmdJOeuNWjvLA.png"><img src="https://image.prntscr.com/image/HvIZyBWNRlmdJOeuNWjvLA.png" alt="screenshot" title="screenshot" /></a></td>
    <td><a href="https://image.prntscr.com/image/pvCZTWgaTsa_1cxcrnzLag.png"><img src="https://image.prntscr.com/image/pvCZTWgaTsa_1cxcrnzLag.png" alt="screenshot" title="screenshot" /></a></td>
  </tr>
</table>
  

## General Information

This project is an entry for the [The Riot Games API Challenge 2017](https://discussion.developer.riotgames.com/articles/4395/the-riot-games-api-challenge-2017.html).

by (EUW: Skt T1 Feed3r, EUW: ðemoń)

You can download the app from Itunes [Forge Wizard](https://itunes.apple.com), a video demo [here](https://youtu.be/m943wpkSOiI)


The project is an iOS application which helps the new users to educate about using the new RUNES, and help the pro players to share their experience in the game by adding their own RUNES, not to mention the RUNES description with videos and how it works and the patch changes.

The app itself is an online/offline mode in case you want to see the champions RUNES and how it works, it's also provide the ability to specific your own RUNES so the other people could use them and share it with other friends,

Champions runes demo data reads from [RuneForge](http://runeforge.gg).

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

<table>
  <tr>
    <th>Endpoint</th>
    <th>Description</th>
    <th>Method</th>
    <th>Parameters</th>
  </tr>
  <tr>
    <td>v1/champions/update</td>
    <td>Install the latest champions from league of legends to database</td>
    <td>GET</td>
    <td>Germany</td>
  </tr>
    <tr>
    <td>v1/champions/updateFreeRotate</td>
    <td>Update free rotate stats for the champions</td>
    <td>GET</td>
    <td>Germany</td>
  </tr>
    <tr>
    <td>v1/summoner/verify</td>
    <td>Check summoner name if exist and verify by third party verification endpoint from league</td>
    <td>POST</td>
    <td>Germany</td>
  </tr>
</table>

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


## TODO in future 

* allow user to remove or edit his own build
* allow user to rate other people builds
* allow user to report the bad builds or troll builds


## Disclaimer 

Forge Wizard isn't endorsed by Riot Games and doesn't reflect the views or opinions of Riot Games or anyone officially involved in producing or managing League of Legends. League of Legends and Riot Games are trademarks or registered trademarks of Riot Games, Inc. League of Legends © Riot Games, Inc.



