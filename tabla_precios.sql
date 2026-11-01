-- Tabla de precios de Asegurá tu Visión
-- Pegar completo en Supabase > SQL Editor > New query > Run

create table if not exists public.precios (
  valor integer primary key,          -- suma asegurada en pesos
  costo_mensual integer not null      -- cuota mensual en pesos
);

alter table public.precios enable row level security;

-- La página solo puede LEER los precios; nadie puede modificarlos desde la web
drop policy if exists "Lectura publica de precios" on public.precios;
create policy "Lectura publica de precios" on public.precios
  for select to anon using (true);

insert into public.precios (valor, costo_mensual) values
  (100000, 2622),
  (150000, 2766),
  (200000, 2910),
  (250000, 3054),
  (300000, 3198),
  (350000, 3342),
  (400000, 3486),
  (450000, 3630),
  (500000, 3774),
  (550000, 3918),
  (600000, 4062),
  (650000, 4206),
  (700000, 4350),
  (750000, 4494),
  (800000, 4638),
  (850000, 4782),
  (900000, 4926),
  (950000, 5070),
  (1000000, 5214),
  (1050000, 5358),
  (1100000, 5502),
  (1150000, 5646),
  (1200000, 5790),
  (1250000, 5934),
  (1300000, 6078),
  (1350000, 6222),
  (1400000, 6366),
  (1450000, 6510),
  (1500000, 6654),
  (1550000, 6798),
  (1600000, 6942),
  (1650000, 7086),
  (1700000, 7230),
  (1750000, 7374),
  (1800000, 7518),
  (1850000, 7662),
  (1900000, 7806),
  (1950000, 7950),
  (2000000, 8094),
  (2050000, 8238),
  (2100000, 8382),
  (2150000, 8526),
  (2200000, 8670),
  (2250000, 8814),
  (2300000, 8958),
  (2350000, 9102),
  (2400000, 9246),
  (2450000, 9390),
  (2500000, 9534),
  (2550000, 9678),
  (2600000, 9822),
  (2650000, 9966),
  (2700000, 10110),
  (2750000, 10254),
  (2800000, 10398),
  (2850000, 10542),
  (2900000, 10686),
  (2950000, 10830),
  (3000000, 10974)
on conflict (valor) do update set costo_mensual = excluded.costo_mensual;
