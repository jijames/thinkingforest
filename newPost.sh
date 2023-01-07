#!/bin/bash

# A script to make a basic new post given a title

if [ "$1" ]; then

DATE=$(date --iso)
DATETIME=$(date --iso=seconds)
YEAR=$(date +"%Y")
TITLE=$(echo "$1" | sed 's/ /-/g')
FILENAME="$DATE-${TITLE}.md"
POST="_posts/$FILENAME"

echo "---" > $POST
echo "layout: single" >> $POST
echo "title: \"${1}\"" >> $POST
echo "permalink: /:year/:month/:day/:title" >> $POST
echo "date: \"$DATETIME\"" >> $POST
#echo "author: \"Joshua I. James\"" >> $POST
echo "tags:" >> $POST
echo "  - writing" >> $POST
echo "header:" >> $POST
echo "  og_image: \"/assets/images/logos/dfir_card.png\"" >> $POST
echo "  image: \"\"" >> $POST
echo "  caption:" >> $POST
echo "modified_time:" >> $POST
echo "---" >> $POST
echo " " >> $POST

echo '
* '${TITLE}':
* [Hey look at this]({% post_url '$DATE-$TITLE' %}#linkdump): Delights to delectate.
* [This day in history]({% post_url '$DATE-$TITLE' %}#retro): '$(date --date="1 year ago" +"%Y")',' $(date --date="5 year ago" +"%Y")',' $(date --date="10 year ago" +"%Y")', '$(date --date="15 year ago" +"%Y")', '$(date --date="20 year ago" +"%Y")'
* [Colophon]({% post_url '$DATE-$TITLE' %}#bragsheet): Recent publications, upcoming/recent appearances, current writing projects, current reading

' >> $POST

echo '---
![Creative Commons Attribution 4.0 license](/assets/images/ccby4.webp){: .align-center}
{: #linkdump}

' >> $POST

echo '---
![Creative Commons Attribution 4.0 license](/assets/images/ccby4.webp){: .align-center}
{: #retro}

' >> $POST

echo '---
![Creative Commons Attribution 4.0 license](/assets/images/ccby4.webp){: .align-center}
{: #bragsheet}

' >> $POST

echo '---
{: #license}
![Creative Commons Attribution 4.0 license](/assets/images/ccby4.webp){: .align-center}

This work licensed under a Creative Commons Attribution 4.0 license. That means you can use it any way you like, including commercially, provided that you attribute it to me, Joshua James, and include a link to [ThinkingForest.org](https://thinkingforest.org).

<https://creativecommons.org/licenses/by/4.0/>

Quotations and images are not included in this license; they are included either under a limitation or exception to copyright, or on the basis of a separate license.
' >> $POST

echo '
## How to get ThinkingForest
Blog (no ads, tracking, or data-collection):

[ThinkingForest.org](https://thinkingforest.org)

Medium (no ads, paywalled):

<https://thinkingforest.medium.com>

(Latest Medium column: 
'#$(curl -s https://thinkingforest.medium.com/feed | tail -n +17 | head -n 2)')

' >> $POST

code . $POST &
fi
