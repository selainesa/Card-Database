-- ============================================================
-- Smith & Sons Inventory — Supabase schema + RLS setup
-- Run this ONCE in the Supabase SQL Editor.
-- ============================================================

-- 1) The cards table.
--    `id` is text because the client generates short base36 IDs.
--    `user_id` defaults to the logged-in user; RLS scopes reads/writes to that user.
create table if not exists public.cards (
  id              text primary key,
  user_id         uuid not null default auth.uid() references auth.users(id) on delete cascade,
  player          text not null,
  sport           text not null,
  box             text default '',
  year            text default '',
  card_set        text default '',
  grade           text default '',
  cost            numeric not null default 0,
  asking          numeric,
  notes           text default '',
  sold            boolean not null default false,
  sell_price      numeric,
  payment_method  text default '',
  sale_date       text default '',
  sale_notes      text default '',
  updated_at      timestamptz not null default now()
);

-- 2) Auto-update `updated_at` on every change. Used for sync conflict resolution later.
create or replace function public.set_updated_at()
returns trigger language plpgsql as $$
begin
  new.updated_at = now();
  return new;
end;
$$;

drop trigger if exists trg_cards_updated_at on public.cards;
create trigger trg_cards_updated_at
  before update on public.cards
  for each row execute function public.set_updated_at();

-- 3) Row Level Security — every user only sees their own rows.
--    Since Smith & Sons share one account, both devices see the same inventory.
alter table public.cards enable row level security;

drop policy if exists "users see own cards" on public.cards;
create policy "users see own cards"
  on public.cards
  for all
  using (auth.uid() = user_id)
  with check (auth.uid() = user_id);

-- 4) Helpful index for sorting by recency.
create index if not exists cards_user_updated_idx
  on public.cards (user_id, updated_at desc);

-- ============================================================
-- Done. Verify by running:
--   select * from public.cards;
-- (should return zero rows but no error)
-- ============================================================
