    OverwriteTableKeys(TraitData.CastAnywhereBoon, {
        {
            Icon = "Boon_Zeus_29",
            InheritFrom = {"BaseTrait", "AirBoon" },
            PreEquipWeapons = { "WeaponAnywhereCast" },
            RequiredFalseTraits = { "CastProjectileBoon", "HadesCastProjectileBoon", "CastAttachBoon" },
            RarityLevels =
            {
                Common =
                {
                    Multiplier = 1.0,
                },
                Rare =
                {
                    Multiplier = 1.4,
                },
                Epic =
                {
                    Multiplier = 1.8,
                },
                Heroic =
                {
                    Multiplier = 2.2,
                },
            },
            OverrideWeaponFireNames =
            {
                RangedWeapon = "nil",
                WeaponAnywhereCast = "WeaponCast",
            },
            WeaponDataOverride = 
            {
                WeaponCast = 
                {
                    UnarmedCastCompleteGraphic = "nil",
                    Sounds = 
                    {
                        FireSounds = 
                        {
                            { Name = "/Leftovers/SFX/WyrmCastAttack" },
                        }
                    }
                }
            },
            SetupFunction =
            {
                Name = "SetupAnywhereCast",
                RunOnce = true,
            },
            PropertyChanges =
            {
                {
                    WeaponName = "WeaponCast",
                    WeaponProperties = 
                    {
                        IgnoreOwnerAttackDisabled = true,
                        Cooldown = 0,
                        ChargeTime = 0,
                        SelfVelocity = 0,
                        FireGraphic = "null",
                        AllowMultiFireRequest = true,
                        RootOwnerWhileFiring = false,
                        ChargeStartAnimation = "null",
                        SetCompleteAngleOnFire = true,
                        IgnoreForceCooldown = true,
                        AllowExternalForceRelease = true,
                        AddOnFire = "null",
                    },
                    ExcludeLinked = true,
                },
                {
                    WeaponName = "WeaponCastArm",
                    WeaponProperties =
                    {
                        SwapOnFire = "WeaponCastAnywhere",
                        ForceReleaseWeaponOnFire = "WeaponCastAnywhere",
                    },
                },
                {
                    WeaponName = "WeaponAnywhereCast",
                    ProjectileProperty = "Damage",
                    BaseValue = 50,
                    ChangeType = "Absolute",
                    ReportValues = { ReportedDamage = "ChangeValue" },
                    IdenticalMultiplier =
                    {
                        Value = -0.6,
                    },
                    ExcludeLinked = true,
                },
                {
                    WeaponName = "WeaponCast",
                    EffectName = "WeaponCastAttackDisable",
                    EffectProperty = "Active",
                    ChangeValue = false,
                    ChangeType = "Absolute",
                },
                {
                    WeaponName = "WeaponCast",
                    EffectName = "WeaponCastSelfSlow",
                    EffectProperty = "Active",
                    ChangeValue = false,
                    ChangeType = "Absolute",
                },
                {
                    WeaponName = "WeaponCast",
                    EffectName = "WeaponCastSelfSlow2",
                    EffectProperty = "Active",
                    ChangeValue = false,
                    ChangeType = "Absolute",
                },
                {
                    WeaponName = "WeaponAxeSpin",
                    WeaponProperty = "RemoveControlOnCharge",
                    ChangeValue = "WeaponAnywhereCast",
                },
                {
                    WeaponName = "WeaponAxeSpin",
                    WeaponProperty = "AddControlOnFireEnd",
                    ChangeValue = "WeaponAnywhereCast",
                },
                {
                    WeaponName = "WeaponAxeSpecialSwing",
                    WeaponProperty = "RemoveControlOnCharge",
                    ChangeValue = "WeaponAnywhereCast",
                },
                {
                    WeaponName = "WeaponAxeSpecialSwing",
                    WeaponProperty = "AddControlOnFire",
                    ChangeValue = "WeaponAnywhereCast",
                },
                {
                    WeaponName = "WeaponAxeSpecialSwing",
                    WeaponProperty = "AddControlOnChargeCancel",
                    ChangeValue = "WeaponAnywhereCast",
                }
            },
            StatLines =
            {
                "CastProjectileDamageStatDisplay1",
            },
            ExtractValues =
            {
                {
                    Key = "ReportedDamage",
                    ExtractAs = "Damage",
                },
            }
        },
    })
