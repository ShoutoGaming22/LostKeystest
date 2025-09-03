# Lost Keys Mod

A Fabric mod that allows server administrators to override player key bindings.

## Features

### Server Side Commands

- `/lost_keys:override <player> <binding> <key>`: Temporarily replaces the key for a given binding until the player relogs.
  - Example: `/lost_keys:override Steve key.forward key.keyboard.b` will make Steve use B to walk forward
  - The `<key>` can be set to whatever the value of another binding is
  - To clear an override, set the `<key>` to `default` (or itself)
  - To disable a key, set the `<key>` to `none` (or any invalid key)
  - To force a `<key>` to be pressed, set it to `pressed`
  - The `<binding>` can be `all` to affect all bindings at once

- `/lost_keys:bind_command <player> <binding> <command>`: Binds a command to a key.
  - Example: `/lost_keys:bind_command @s key.forward say hi` will make the player say "hi" when pressing the forward key
  - The binding can be keyboard keys
  - Commands are run by the client, so commands that require op won't work for unopped players

### Client Side Commands

- `/lost_keys:lognext`: Tells you the name of the key you press next (and binding if there is one)
- `/lost_keys:list`: Lists all applied overrides

## Setup

1. Add this mod to your Minecraft Fabric mods folder
2. Add the mod to both client and server for full functionality
3. Start the game and enjoy!

## Requirements

- Fabric Loader
- Fabric API
- Minecraft 1.20.4

## License

MIT License
