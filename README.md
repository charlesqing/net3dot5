# net3dot5

.NET Framework 3.5 SP1 offline installer download page. Deployed on Cloudflare Pages.

## Files

| File | Purpose |
|------|---------|
| `index.html` | Landing page with download card, features grid, install guide, DISM deployment, error codes, FAQ accordion |
| `404.html` | Custom 404 page |
| `og-image.png` | Social sharing preview image (1200×630) |
| `_headers` | Cloudflare Pages security headers (X-Frame-Options, Referrer-Policy, etc.) |
| `robots.txt` | Allow all crawlers, points to sitemap |
| `sitemap.xml` | Single-page site map with lastmod |

## Features

- Bilingual (EN / 中文) with one-click language switch and `localStorage` persistence
- SEO-optimized: SoftwareApplication + FAQPage JSON-LD, Open Graph, Twitter Card, hreflang (en/zh/x-default), canonical URL
- Interactive FAQ accordion (8 items)
- Features grid (4 cards: offline, one-click, all versions, deploy at scale)
- DISM deployment guide + common error codes section
- Trust badges + SHA-256 hash verification
- SVG inline favicon (no external file needed)
- Pure static HTML/CSS, minimal JS (language toggle + accordion)

## Deploy

Push to your Git repo and connect to Cloudflare Pages. No build step required.

## Post-deploy tasks

- Update the download URL, SHA-256 hash, and file size in `index.html` if the installer file is replaced
