# Goal Matics

Football-themed mental-maths games built for Yiğit Ali (Year 6, Moseley Primary). Single-file HTML, no build step, runs offline in any browser; hosted on Netlify and added to the iPhone home screen.

**Musa Baba Games – for my son & daughter.**

## Games

| File | What it is |
|---|---|
| `index.html` / `games/goal-matics.html` | **Goal Matics** – the daily penalty shootout. 7 levels, 90-second "90-minute" clock per level with spare time carrying over, 5 answer corners + keeper, weekly seasons, Warm-up, Extra Training, Golden Ball, Tactics Room, Ancelotti coach, weekly table, JSON save/load. |
| `games/goal-matics-2.html` | **Goal Matics 2 – Build-up** – 11 v 11. Pass from keeper to strikers (each pass is a sum), lose the ball on a wrong answer, tackle to win it back, shoot at the strikers. Sums get harder up the pitch. |
| `games/division-training-ground.html` | The first drill: 51 ÷ 3 by sharing balls, then the bus-stop method, then an 8-shot match. |
| `online/index.html` | **Goal Matics Online** – daily league. Same 25 sums for everyone in a year group, one go a day, 90 seconds, leaderboards per league code (MOSELEY / EDEN / TURKISHBOYS). Needs a Supabase project (see below). |

## Daily routine (Goal Matics)

1. **Extra Training** – penalties the keeper saved before; 12 a day, each needs two goals to clear.
2. **Warm-up** – Ancelotti's "split it" lesson, 8 split-it sums, then yesterday's weak sums. One goal each.
3. **Match** – up to 3 a day, best score counts. 3 points per goal + 1 per minute left.
4. **Tactics Room** – this week's school topic on the whiteboard, 10 set-pieces, a 60-second match plan. Weekend Tactics on Saturday/Sunday.

Levels stay fixed for the week. Every Monday the week is reviewed per level: ≥85 % accuracy and ≥60 % under 3 s → up a notch; <65 % → down a notch.

## Save files

Progress lives in the browser's localStorage. The save/load icons export and import a JSON file (`format: "yigit-penalty-save"`). `saves/` holds the daily files sent back for review. A save is embedded in `index.html` as a seed and is used only if the browser has no data yet.

`?reset=1` on the URL, or the "Coach only: reset all progress" link at the bottom, wipes the browser data.

## Deploy

Drag the folder (or just `index.html`) onto https://app.netlify.com/drop. `netlify.toml` disables caching so a new version shows up immediately; the version tag is in the header (`v12`).

## Goal Matics Online setup

1. Create a free Supabase project.
2. Run `online/supabase.sql` in the SQL editor.
3. In `online/index.html` set `SUPABASE_URL` and `SUPABASE_KEY` (anon key) at the top of the script.
4. Deploy `online/` as its own Netlify site.

Without the keys the game runs in offline mode and shows only the player's own scores.

## Adding a school topic to the Tactics Room

In `index.html`, find `const TOPICS=[` and add a pack: `{id, week, title, slides:[html…], gens:[() => ({txt, ans, dis:[…], why})]}`. The newest pack is the weekday briefing; all packs feed Weekend Tactics.

## Credits

Everything is original: characters, kits (colours only, no crests), sounds (generated with the Web Audio API). Coach illustration is an original caricature.
