{
  "spriteId": {
    "name": "playerStance2",
    "path": "sprites/playerStance2/playerStance2.yy",
  },
  "solid": false,
  "visible": true,
  "spriteMaskId": {
    "name": "playerCollision",
    "path": "sprites/playerCollision/playerCollision.yy",
  },
  "persistent": false,
  "parentObjectId": null,
  "physicsObject": false,
  "physicsSensor": false,
  "physicsShape": 1,
  "physicsGroup": 0,
  "physicsDensity": 0.5,
  "physicsRestitution": 0.1,
  "physicsLinearDamping": 0.1,
  "physicsAngularDamping": 0.1,
  "physicsFriction": 0.2,
  "physicsStartAwake": true,
  "physicsKinematic": false,
  "physicsShapePoints": [],
  "eventList": [
    {"isDnD":true,"eventNum":0,"eventType":3,"collisionObjectId":null,"parent":{"name":"Player_obj","path":"objects/Player_obj/Player_obj.yy",},"resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMEvent",},
    {"isDnD":true,"eventNum":0,"eventType":4,"collisionObjectId":{"name":"Boss1","path":"objects/Boss1/Boss1.yy",},"parent":{"name":"Player_obj","path":"objects/Player_obj/Player_obj.yy",},"resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMEvent",},
    {"isDnD":true,"eventNum":0,"eventType":2,"collisionObjectId":null,"parent":{"name":"Player_obj","path":"objects/Player_obj/Player_obj.yy",},"resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMEvent",},
    {"isDnD":true,"eventNum":0,"eventType":0,"collisionObjectId":null,"parent":{"name":"Player_obj","path":"objects/Player_obj/Player_obj.yy",},"resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMEvent",},
    {"isDnD":true,"eventNum":0,"eventType":1,"collisionObjectId":null,"parent":{"name":"Player_obj","path":"objects/Player_obj/Player_obj.yy",},"resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMEvent",},
    {"isDnD":true,"eventNum":0,"eventType":4,"collisionObjectId":{"name":"enem_projectile","path":"objects/enem_projectile/enem_projectile.yy",},"parent":{"name":"Player_obj","path":"objects/Player_obj/Player_obj.yy",},"resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMEvent",},
  ],
  "properties": [
    {"varType":1,"value":"5","rangeEnabled":false,"rangeMin":0.0,"rangeMax":10.0,"listItems":null,"multiselect":false,"filters":[
        "GMTileSet",
        "GMSprite",
        "GMSound",
        "GMPath",
        "GMScript",
        "GMShader",
        "GMFont",
        "GMTimeLine",
        "GMObject",
        "GMRoom",
      ],"resourceVersion":"1.0","name":"Spd","tags":[],"resourceType":"GMObjectProperty",},
    {"varType":1,"value":"4","rangeEnabled":false,"rangeMin":0.0,"rangeMax":10.0,"listItems":null,"multiselect":false,"filters":[
        "GMTileSet",
        "GMSprite",
        "GMSound",
        "GMPath",
        "GMScript",
        "GMShader",
        "GMFont",
        "GMTimeLine",
        "GMObject",
        "GMRoom",
      ],"resourceVersion":"1.0","name":"playerHealth","tags":[],"resourceType":"GMObjectProperty",},
    {"varType":3,"value":"True","rangeEnabled":false,"rangeMin":0.0,"rangeMax":10.0,"listItems":[],"multiselect":false,"filters":[],"resourceVersion":"1.0","name":"is_vulnerable","tags":[],"resourceType":"GMObjectProperty",},
  ],
  "overriddenProperties": [],
  "parent": {
    "name": "Player",
    "path": "folders/Objects/Player.yy",
  },
  "resourceVersion": "1.0",
  "name": "Player_obj",
  "tags": [],
  "resourceType": "GMObject",
}