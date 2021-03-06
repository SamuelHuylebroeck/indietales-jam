{
  "spriteId": {
    "name": "spr_slowdown_trap",
    "path": "sprites/spr_slowdown_trap/spr_slowdown_trap.yy",
  },
  "solid": false,
  "visible": true,
  "spriteMaskId": null,
  "persistent": false,
  "parentObjectId": {
    "name": "p_trap",
    "path": "objects/p_trap/p_trap.yy",
  },
  "physicsObject": false,
  "physicsSensor": false,
  "physicsShape": 1,
  "physicsGroup": 1,
  "physicsDensity": 0.5,
  "physicsRestitution": 0.1,
  "physicsLinearDamping": 0.1,
  "physicsAngularDamping": 0.1,
  "physicsFriction": 0.2,
  "physicsStartAwake": true,
  "physicsKinematic": false,
  "physicsShapePoints": [],
  "eventList": [],
  "properties": [],
  "overriddenProperties": [
    {"propertyId":{"name":"trap_active_duration","path":"objects/p_trap/p_trap.yy",},"objectId":{"name":"p_trap","path":"objects/p_trap/p_trap.yy",},"value":"5","resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMOverriddenProperty",},
    {"propertyId":{"name":"sprite_active_start_index","path":"objects/p_trap/p_trap.yy",},"objectId":{"name":"p_trap","path":"objects/p_trap/p_trap.yy",},"value":"5","resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMOverriddenProperty",},
    {"propertyId":{"name":"sprite_active_end_index","path":"objects/p_trap/p_trap.yy",},"objectId":{"name":"p_trap","path":"objects/p_trap/p_trap.yy",},"value":"9","resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMOverriddenProperty",},
    {"propertyId":{"name":"trap_player_effect_script","path":"objects/p_trap/p_trap.yy",},"objectId":{"name":"p_trap","path":"objects/p_trap/p_trap.yy",},"value":"apply_slowdown_debuff","resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMOverriddenProperty",},
    {"propertyId":{"name":"trap_trigger_delay","path":"objects/p_trap/p_trap.yy",},"objectId":{"name":"p_trap","path":"objects/p_trap/p_trap.yy",},"value":"0.05","resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMOverriddenProperty",},
    {"propertyId":{"name":"sfx_trap_hit","path":"objects/p_trap/p_trap.yy",},"objectId":{"name":"p_trap","path":"objects/p_trap/p_trap.yy",},"value":"snd_slow_trap_hit","resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMOverriddenProperty",},
  ],
  "parent": {
    "name": "traps",
    "path": "folders/Objects/traps.yy",
  },
  "resourceVersion": "1.0",
  "name": "obj_slowdown_trap",
  "tags": [],
  "resourceType": "GMObject",
}