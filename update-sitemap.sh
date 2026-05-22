#!/bin/bash
# Update sitemap.xml and index.html with current date
# Cross-platform compatible script (Linux, macOS, Windows Git Bash)

set -e

TODAY=$(date +%Y-%m-%d)

# Update sitemap.xml (cross-platform sed)
if [[ "$OSTYPE" == "darwin"* ]]; then
    # macOS requires empty string for -i
    sed -i '' "s/<lastmod>[0-9-]*<\/lastmod>/<lastmod>${TODAY}<\/lastmod>/" sitemap.xml
else
    # Linux and Git Bash
    sed -i "s/<lastmod>[0-9-]*<\/lastmod>/<lastmod>${TODAY}<\/lastmod>/" sitemap.xml
fi

# Update index.html dates (Open Graph and Schema.org)
if [[ "$OSTYPE" == "darwin"* ]]; then
    sed -i '' "s/article:published_time\" content=\"[0-9T:+-]*\"/article:published_time\" content=\"${TODAY}T00:00:00+00:00\"/" index.html
    sed -i '' "s/\"datePublished\": \"[0-9-]*\"/\"datePublished\": \"${TODAY}\",/" index.html
else
    sed -i "s/article:published_time\" content=\"[0-9T:+-]*\"/article:published_time\" content=\"${TODAY}T00:00:00+00:00\"/" index.html
    sed -i "s/\"datePublished\": \"[0-9-]*\"/\"datePublished\": \"${TODAY}\",/" index.html
fi

echo "Updated sitemap.xml and index.html with date: ${TODAY}"
