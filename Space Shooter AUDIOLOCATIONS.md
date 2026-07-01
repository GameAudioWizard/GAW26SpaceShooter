**AUDIO LOCATIONS FOR SPACE SHOOTER**



UI SFX



Sound Close, Sound Confirm, Sound Hide, Sound Open, Sound Select - all in Main\_menu.tscn > MenuSoundPlayer



Map Zoom In/Out - replace lines 6/7 with your files





PLAYER SFX



Player Docking - PlayerShip.tscn > StateMachine> Dock



Ship Thruster - Thrusters\_audio\_player.tscn



Cargo unload - Cargo\_process.tscn > AudioUnload



Iron Ore - iron\_ore.tscn > AudioStreamPlayer





WEAPONS



Shooting Sounds - go to plasma\_shot.tscn > AudioStreamPlayer2D to edit enemy projectile

&#x09;	go to plasma\_shot\_player.tscn > AudioStreamPlayer2D to edit player projectiles



Projectile Shot sound - projectile.gd - replace lines 8-13 with your audio files



Explosions - explosion.gd > replace lines 4-7 with your audio files





WORLD SFX



Radar Sound - Station.tscn >





