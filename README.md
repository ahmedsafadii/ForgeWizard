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
    <th>Controller</th>
  </tr>
  <tr>
    <td>v1/champions/update</td>
    <td>Install the latest champions from league of legends to database</td>
    <td>GET</td>
    <td><a href="Web/app/Http/Controllers/RiotController.php">RiotController.php</a>@InstallOrUpdateChampions</td>
  </tr>
    <tr>
    <td>v1/champions/updateFreeRotate</td>
    <td>Update free rotate stats for the champions</td>
    <td>GET</td>
    <td><a href="Web/app/Http/Controllers/RiotController.php">RiotController.php</a>@updateFreeRotate</td>
  </tr>
    <tr>
    <td>v1/summoner/verify</td>
    <td>Check summoner name if exist and verify by third party verification endpoint from league</td>
    <td>POST</td>
    <td><a href="Web/app/Http/Controllers/RiotController.php">RiotController.php</a>@VerifySummonerAccount</td>
  </tr>
</table>

- Runes Endpoint

<table>
  <tr>
    <th>Endpoint</th>
    <th>Description</th>
    <th>Method</th>
    <th>Parameters</th>
  </tr>
  <tr>
    <td>v1/runes/updateRunes</td>
    <td>Update or install the new runes fetch from <a href="Web/public/en_US_runesReforged.json">en_US_runesReforged.json</a> </td>
    <td>GET</td>
    <td><a href="Web/app/Http/Controllers/RunesController.php">RunesController.php</a>@InstallOrUpdateRunes</td>
  </tr>
    <tr>
    <td>v1/runes/updateLanes</td>
    <td>Update or install the champiosn roles fetch from <a href="Web/public/Lanes.json">Lanes.json</a></td>
    <td>GET</td>
    <td><a href="Web/app/Http/Controllers/RunesController.php">RunesController.php</a>@InstallOrUpdateLanes</td>
  </tr>
    <tr>
    <td>v1/runes/getRunes</td>
    <td>Get latest runes for using in application</td>
    <td>GET</td>
    <td><a href="Web/app/Http/Controllers/RunesController.php">RunesController.php</a>@getRunes</td>
  </tr>
</table>

- Patch Endpoint

<table>
  <tr>
    <th>Endpoint</th>
    <th>Description</th>
    <th>Method</th>
    <th>Parameters</th>
  </tr>
  <tr>
    <td>v1/patch/addPatch</td>
    <td>Add patch version for the database</td>
    <td>POST</td>
    <td><a href="Web/app/Http/Controllers/PatchController.php">PatchController.php</a>@AddPatch</td>
  </tr>
    <tr>
    <td>v1/patch/addNote</td>
    <td>Add note for the added patch</td>
    <td>POST</td>
      <td><a href="Web/app/Http/Controllers/PatchController.php">PatchController.php</a>@AddNote<td>
  </tr>
    <tr>
    <td>v1/patch/getPatches</td>
    <td>Get lataest patch for the runes include the notes</td>
    <td>GET</td>
    <td><a href="Web/app/Http/Controllers/PatchController.php">PatchController.php</a>@getPatches</td>
  </tr>
</table>



- Rune Build Endpoint


<table>
  <tr>
    <th>Endpoint</th>
    <th>Description</th>
    <th>Method</th>
    <th>Parameters</th>
  </tr>
  <tr>
    <td>v1/build/getTools</td>
    <td>Fetch latest patches change, champions, and roles for using it before add the build</td>
    <td>GET</td>
    <td><a href="Web/app/Http/Controllers/BuildsController.php">BuildsController.php</a>@getTools</td>
  </tr>
    <tr>
    <td>v1/build/setupData</td>
    <td>Fetch latest runes build from <a href="Web/public/data.json">data.json</a> and save it to the database</td>
    <td>GET</td>
    <td><a href="Web/app/Http/Controllers/BuildsController.php">BuildsController.php</a>@setupData</td>
  </tr>
   <tr>
    <td>v1/build/addTopPlayer</td>
    <td>Add pro player to the database</td>
    <td>POST</td>
    <td><a href="Web/app/Http/Controllers/BuildsController.php">BuildsController.php</a>@AddTopPlayer</td>
  </tr>
   <tr>
    <td>v1/build/getBuilds</td>
    <td>get latest builds for the every chmpion maximum 5 per one</td>
    <td>GET</td>
    <td><a href="Web/app/Http/Controllers/BuildsController.php">BuildsController.php</a>@getData</td>
  </tr>
   <tr>
    <td>v1/build/getBuilds/champion/{id}/</td>
    <td>get the latest champion build by champion id</td>
    <td>GET</td>
    <td><a href="Web/app/Http/Controllers/BuildsController.php">BuildsController.php</a>@getDataByChampionId</td>
  </tr>
   <tr>
    <td>v1/build/getBuilds/user/{id}/</td>
    <td>get the latest champion build by user id</td>
    <td>GET</td>
    <td><a href="Web/app/Http/Controllers/BuildsController.php">BuildsController.php</a>@getDataByUserId</td>
  </tr>
   <tr>
    <td>v1/build/addBuild</td>
    <td>Add new runes build to the database</td>
    <td>POST</td>
    <td><a href="Web/app/Http/Controllers/BuildsController.php">BuildsController.php</a>@AddBuild</td>
  </tr>
   <tr>
    <td>v1/build/removeBuild</td>
    <td>Remove build from the databbase</td>
    <td>POST</td>
    <td><a href="Web/app/Http/Controllers/BuildsController.php">BuildsController.php</a>@RemoveBuild</td>
  </tr>
    <tr>
    <td>v1/build/addRate</td>
    <td>Add rate for the build positive or negative</td>
    <td>POST</td>
    <td><a href="Web/app/Http/Controllers/BuildsController.php">BuildsController.php</a>@AddRate</td>
  </tr>
</table>

## TODO in future 

* allow user to remove or edit his own build
* allow user to rate other people builds
* allow user to report the bad builds or troll builds


## Disclaimer 

Forge Wizard isn't endorsed by Riot Games and doesn't reflect the views or opinions of Riot Games or anyone officially involved in producing or managing League of Legends. League of Legends and Riot Games are trademarks or registered trademarks of Riot Games, Inc. League of Legends © Riot Games, Inc.



