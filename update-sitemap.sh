#!/bin/bash
# Update sitemap.xml and index.html with current date

TODAY=$(date +%Y-%m-%d)

# Update sitemap.xml
sed -i "s/<lastmod>[0-9-]*<\/lastmod>/<lastmod>${TODAY}<\/lastmod/" sitemap.xml

# Update index.html dates (Open Graph and Schema.org)
sed -i "s/article:published_time\" content=\"[0-9T:+-]*\"/article:published_time\" content=\"${TODAY}T00:00:00+00:00\"/" index.html
sed -i "s/\"datePublished\": \"[0-9-]*\"/\"datePublished\": \"${TODAY}\",/" index.html

echo "Updated sitemap.xml and index.html with date: ${TODAY}"
