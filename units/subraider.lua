unitDef = {
  unitname               = [[subraider]],
  name                   = [[Snake]],
  description            = [[Raider Submarine]],
  acceleration           = 0.06,
  activateWhenBuilt      = true,
  brakeRate              = 0.2,
  buildCostEnergy        = 210,
  buildCostMetal         = 210,
  builder                = false,
  buildPic               = [[CORSUB.png]],
  buildTime              = 210,
  canAttack              = true,
  canGuard               = true,
  canMove                = true,
  canPatrol              = true,
  canstop                = true,
  category               = [[SUB SINK]],
  collisionVolumeOffsets = [[0 0 0]],
  collisionVolumeScales  = [[22 22 89]],
  collisionVolumeType    = [[CylZ]],
  corpse                 = [[DEAD]],

  customParams           = {
    description_fr = [[Sous-Marin]],
	description_de = [[Unterseeboot]],
	description_pl = [[Lodz podwodna]],
    helptext       = [[Stealthy, fast, and fragile, this Submarine can quickly strike unprotected targets. Slow damage allows it to effectively kill lone units. Watch out for anything with anti-sub weaponry, especially Hunters.]],
    helptext_fr    = [[Le Snake est discret, cher et fragile, mais il peut couler trcs rapidement la plupart de ses ennemis. De plus il peut torpiller r de grande distance. Ne pouvant tirer derricre lui et tournant rapidement, son positionnement initial est la clef de l'éfficacité.]],
	helptext_de    = [[Teuer, versteckt und gebrechlich ist dieses U-Boot. Es kann nicht nach hinten schießen und seine Ausrichtung dauert lange. Daher lieber gleich richtig positionieren. Achte auf alles mit Anti-U-Boot Ausrüstung, besonders 'Hunter' - Torpedofregatten.]],
	helptext_pl    = [[Lodzie powolne, mimo ze sa drogie i delikatne, zadaja duze obrazenia i moga zostac wykryte tylko przez sonar. Wyrzutnie torped maja zamontowane tylko z przodu, zatem odpowienie ustawienie jest kluczem w bitwach, w ktorych uczestnicza. Torpedy to glowna kategoria broni, ktora moze atakowac lodzie podwodne, zatem nalezy ich unikac - szczegolnie fregat torpedowych.]],
	modelradius    = [[13]],
	aimposoffset   = [[0 -5 0]],
	midposoffset   = [[0 -5 0]],
    turnatfullspeed = [[1]],
  },

  explodeAs              = [[SMALL_UNITEX]],
  footprintX             = 3,
  footprintZ             = 3,
  iconType               = [[submarine]],
  idleAutoHeal           = 5,
  idleTime               = 1800,
  mass                   = 240,
  maxDamage              = 600,
  maxVelocity            = 4.0,
  minCloakDistance       = 75,
  minWaterDepth          = 15,
  movementClass          = [[UBOAT3]],
  noAutoFire             = false,
  noChaseCategory        = [[TERRAFORM FIXEDWING SATELLITE GUNSHIP HOVER]],
  objectName             = [[sub.s3o]],
  script                 = [[subraider.lua]],
  seismicSignature       = 4,
  selfDestructAs         = [[SMALL_UNITEX]],
  sightDistance          = 360,
  sonarDistance          = 360,
  turninplace            = 0,
  turnRate               = 600,
  upright                = true,
  waterline              = 20,
  workerTime             = 0,

  weapons                = {

    {
      def                = [[FAKEWEAPON]],
      badTargetCategory  = [[FIXEDWING]],
      mainDir            = [[0 0 1]],
      maxAngleDif        = 180,
      onlyTargetCategory = [[SWIM LAND SUB SINK TURRET FLOAT SHIP HOVER]],
    },


    {
      def                = [[TORPEDO]],
      badTargetCategory  = [[FIXEDWING]],
      mainDir            = [[0 0 1]],
      maxAngleDif        = 190,
      onlyTargetCategory = [[SWIM LAND SUB SINK TURRET FLOAT SHIP HOVER]],
    },

  },


  weaponDefs             = {

    TORPEDO = {
      name                    = [[Torpedo]],
      areaOfEffect            = 16,
      avoidFriendly           = false,
      canattackground         = false,
      collideFriendly         = false,
      craterBoost             = 0,
      craterMult              = 0,
      cegTag                  = [[torptrailpurple]],

      customparams = {
        timeslow_damagefactor = 2,
      },

      damage                  = {
        default = 350.1,
        subs    = 350.1,
      },

      explosionGenerator      = [[custom:disruptor_missile_hit]],
      fixedLauncher           = true,
      flightTime              = 0.8,
      groundbounce            = 1,
      impactOnly              = true,
      impulseBoost            = 60,
      impulseFactor           = 0.6,
      interceptedByShieldType = 1,
	  leadlimit               = 0,
      model                   = [[wep_t_longbolt.s3o]],
	  numbounce               = 0,
      noSelfDamage            = true,
      range                   = 220,
      reloadtime              = 5.5,
      rgbcolor                = [[0.9 0.1 0.9]],
      soundHit                = [[explosion/wet/ex_underwater_pulse]],
      soundHitVolume          = 6,
      soundStart              = [[weapon/torpedo]],
      soundStartVolume        = 6,
      startVelocity           = 450,
      tolerance               = 200,
      tracks                  = true,
      turnRate                = 80000,
      turret                  = true,
      waterWeapon             = true,
      weaponAcceleration      = 400,
      weaponType              = [[TorpedoLauncher]],
      weaponVelocity          = 600,
    },


    FAKEWEAPON  = {
      name                    = [[Fake Torpedo - Points me in the right direction]],
      areaOfEffect            = 16,
      avoidFriendly           = false,
      burnblow                = true,
      collideFriendly         = false,
      craterBoost             = 0,
      craterMult              = 0,

      damage                  = {
        default = 0.1,
        planes  = 0.1,
        subs    = 0.1,
      },

      explosionGenerator      = [[custom:TORPEDO_HIT]],
      fixedLauncher           = true,
      flightTime              = 0.8,
      impactOnly              = true,
      impulseBoost            = 0,
      impulseFactor           = 0,
      interceptedByShieldType = 0,
      model                   = [[wep_t_longbolt.s3o]],
      range                   = 210,
      reloadtime              = 4.4,
      startVelocity           = 400,
      tolerance               = 100,
      tracks                  = true,
      turnRate                = 100000,
      turret                  = true,
      waterWeapon             = true,
      weaponAcceleration      = 400,
      weaponType              = [[TorpedoLauncher]],
      weaponVelocity          = 600,
    },

  },


  featureDefs            = {

    DEAD = {
      blocking         = false,
      featureDead      = [[HEAP]],
      footprintX       = 4,
      footprintZ       = 4,
      object           = [[sub_dead.s3o]],
    },


    HEAP = {
      blocking         = false,
      footprintX       = 4,
      footprintZ       = 4,
      object           = [[debris4x4c.s3o]],
    },

  },

}

return lowerkeys({ subraider = unitDef })
