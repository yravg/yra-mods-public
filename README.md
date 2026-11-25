# yra-mods-public

Claude Code mods. Marketplace name: `yra-mods-public`.

## Included

| Mod | License |
|---|---|
| `ribbon` | MIT, Jay E / RoboNuggets. The embedded Outfit font is SIL OFL 1.1 (`ribbon/OFL.txt`). |
| `blast-radius`, `replay-theater`, `token-weather` | Unmodified copies from `anthropics/claude-code-playground`, Apache-2.0 (`playground-mods/LICENSE`). |
| `model-router` | MIT, Daniel (San) Ávila, from `davila7/claude-code-templates`. See `token-saving-mods/plugins/model-router/LICENSE`. |

## Install

```bash
git clone https://github.com/yravg/yra-mods-public
cd yra-mods-public
./bootstrap.sh
```

On Windows, run `.\bootstrap.ps1`.

Or, inside Claude Code:

```text
/plugin marketplace add yravg/yra-mods-public
/plugin install ribbon@yra-mods-public
```

`bootstrap.sh` and `bootstrap.ps1` register this folder, then offer these public mods from their own repositories: cache-tax (`karanb192/claude-code-mods`), reflect-mod (`bayramannakov/claude-reflect`), filetree (`data-goblin/claude-code-filetree`), savvy-progress (`johnnyvizz/claude-kit`).

Ben AI's mods (input-router, effort-optimizer, cache-clock, handoff, research-router, efficient-browser-use, mods, savings-proof) are not in this repository. No public git repository owned by Ben AI was found for them, so the bootstrap scripts do not install them.

Which mods are enabled lives in `~/.claude/settings.json` (not synced). model-router notes: no API key of its own, and it does not change the main chat's model.

## License

MIT for original packaging in this repository. Third-party mods keep the licenses in `NOTICE`.
