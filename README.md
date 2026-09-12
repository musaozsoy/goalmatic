# Goal Matics

Football-themed mental-maths games built for Yiğit Ali (Year 6, Moseley Primary). Single-file HTML, no build step. Live at **https://musaozsoy.github.io/goalmatic/** (GitHub Pages).

**Musa Baba Games – for my son & daughter.**

## Live pages

| URL | Game |
|---|---|
| https://musaozsoy.github.io/goalmatic/ | **Goal Matics** – daily penalty shootout (`index.html`) |
| https://musaozsoy.github.io/goalmatic/games/goal-matics-2.html | **Goal Matics 2 – Build-up** – 11 v 11 passing game |
| https://musaozsoy.github.io/goalmatic/games/division-training-ground.html | 51 ÷ 3 division drill |
| https://musaozsoy.github.io/goalmatic/online/ | **Goal Matics Online** – daily league (needs Supabase keys) |

## Goal Matics – daily routine

1. **Extra Training** – penalties the keeper saved before; 12 a day, each needs two goals to clear. After the 12, optional.
2. **Warm-up** – Ancelotti's "split it" lesson, 8 split-it sums, then yesterday's weak sums. One goal each.
3. **Match** – up to 3 a day, best score counts. 3 points per goal + 1 per minute left. ⭐ Golden Balls (harder, worth 6, miss costs nothing) once the week is at 85 %.
4. **Tactics Room** – this week's school topic on the whiteboard, 10 set-pieces, a 60-second match plan. Weekend Tactics (15 mixed, 90 s) on Saturday/Sunday.

Levels stay fixed for the week. Every Monday the week is reviewed per level: ≥85 % accuracy and ≥60 % under 3 s → up a notch; <65 % → down a notch.

## Updating the game

1. Edit `index.html` and bump the version in two places: `<span id="appVer">v16</span>` and `const APP_VERSION='v16'`.
2. Commit and push to `main`. GitHub Pages redeploys in about a minute.
3. On the phone the game checks for a newer version on every open and shows a "tap to update" banner. Force it by opening `https://musaozsoy.github.io/goalmatic/?v=13`.

`.nojekyll` keeps GitHub Pages from processing the files.

## Save files

Progress lives in the browser's localStorage. The save/load icons export and import a JSON file (`format: "yigit-penalty-save"`). `saves/` holds the daily files sent back for review. A save is embedded in `index.html` as a seed and is used only if the browser has no data yet.

`?reset=1` on the URL, or the "Coach only: reset all progress" link at the bottom, wipes the browser data.

## Goal Matics Online setup

1. Create a free Supabase project and run `online/supabase.sql` in the SQL editor.
2. In `online/index.html` set `SUPABASE_URL` and `SUPABASE_KEY` (anon key) at the top of the script.
3. Push – it is served at `/online/`. Without the keys it runs in offline mode.

## Adding a school topic to the Tactics Room

In `index.html`, find `const TOPICS=[` and add a pack: `{id, week, title, slides:[html…], gens:[() => ({txt, ans, dis:[…], why})]}`. The newest pack is the weekday briefing; all packs feed Weekend Tactics.

## Credits

Everything is original: characters, kits (colours only, no crests), sounds (generated with the Web Audio API). Coach illustration is an original caricature.
