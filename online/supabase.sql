-- Goal Matics Online – league scores table
create table if not exists scores (
  id bigserial primary key,
  league text not null,
  name text not null check (char_length(name) between 2 and 12),
  year int not null check (year between 5 and 11),
  date date not null,
  pts int not null check (pts between 0 and 165),   -- 25 goals x 3 + 90 seconds
  goals int not null check (goals between 0 and 25),
  "left" int not null check ("left" between 0 and 90),
  device text not null,
  kit text,
  num int,
  created_at timestamptz default now(),
  unique (device, date)                            -- one match per device per day
);
alter table scores enable row level security;
create policy "anyone can insert" on scores for insert to anon with check (true);
create policy "anyone can read"   on scores for select to anon using (true);
