# Asegurá tu Visión

Cotizador de seguro de anteojos de Rivone Balangero – Asesores de Seguros.

## Archivos

- `index.html`: la página completa.
- `favicon.png` y `og-image.jpg`: ícono de la pestaña y la imagen que aparece al compartir el link.
- `robots.txt` y `sitemap.xml`: para que Google encuentre la página.
- `supabase/tabla_precios.sql`: crea la tabla de precios en Supabase (opcional).

## Antes de publicar

Reemplazar `TU-DOMINIO` por el dominio final (por ejemplo `aseguratuvision.com.ar` o `asegura-tu-vision.pages.dev`) en:

- `index.html` (5 lugares, en el `<head>`)
- `robots.txt`
- `sitemap.xml`

## Cambiar precios

- Sin Supabase: editar la lista `tabla` dentro de `index.html`.
- Con Supabase: editar la tabla `precios` desde el panel de Supabase. La página toma los cambios sola.
