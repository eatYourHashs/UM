scoreboard players set @s um.version 10
scoreboard players set @s um.blood 0
scoreboard players add world um.familiar_id 1
scoreboard players operation @s um.familiar_id = world um.familiar_id
tellraw @s ["",{"text":"Undermagic has been updated. Please download the new version of the resource pack, and check out the changelog to see the new additions.","color":"red"}]
tellraw @s ["",{"text":"Click here to download the new version at The Data Pack Center.","color":"red","underlined":true,"clickEvent":{"action":"open_url","value":"https://datapackcenter.com/resources/undermagic-resource-pack.47/"}},{"text":" This message will only display once.","color":"gray","italic":true,"underlined":false}]
