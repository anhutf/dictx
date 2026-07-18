# DictX Page Theme Refresh Design

## Goal

Align `dictx-page` with the Flutter app's Material 3 brand color direction based on `#0CA678`, replacing the legacy orange palette with a teal-led palette and neutral surfaces.

## Palette Direction

- Brand primary: `#0CA678`
- Brand hover/pressed: `#099268`
- Brand accent: `#38D9A9`
- Brand soft surfaces: `#E6FCF5`, `#C3FAE8`
- Deep brand ink: `#054D3A`
- Neutral surfaces: `#F8F9FA`, `#F1F3F5`, `#E9ECEF`
- Neutral text: `#212529`, `#495057`, `#6C757D`, `#868E96`
- Neutral borders: `#ADB5BD`, `#DEE2E6`

## Implementation Notes

- Introduce CSS custom properties in `css/general.css` so the landing page has one palette source of truth.
- Replace hard-coded orange values in `css/general.css`, `css/style.css`, and `css/queries.css`.
- Keep white and shadow values unless they are part of the old warm-tinted UI treatment.
- Preserve the existing layout and only change visual styling.
