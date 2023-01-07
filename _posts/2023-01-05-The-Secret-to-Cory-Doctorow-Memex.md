---
layout: single
title: "The Secret to Cory Doctorow's Memex"
permalink: /:year/:month/:title
date: "2023-01-05T09:37:29-06:00"
tags:
  - writing
  - solarpunk
  - authors
  - memex
  - 
  - Cory Doctorow
header:
  og_image: "/assets/images/logos/dfir_card.png"
  #image: "/assets/images/posts/headers/dfirscicover.png"
  caption:
modified_time:
---
 
How can Cory Doctorow remember and easily reference so much? Let’s reverse-engineer his work process to find out.

I learned about Cory Doctorow from an interview on a small YouTube channel, [Solarpunk Life](https://www.youtube.com/watch?v=mmosdDCrL-4). I’d seen him around cyberspace but never directly intersecting policies and tools. Through Solarpunk Life, I found and read the book [Walkaway](https://craphound.com/category/walkaway/) — a near-mandatory reading in the [Solarpunk](https://en.wikipedia.org/wiki/Solarpunk) community — and decided to dig deeper into this fella’s work style.

<a data-flickr-embed="true" href="https://www.flickr.com/photos/eschipul/437288525/" title="Cory Doctorow @ eTech 2007"><img src="https://live.staticflickr.com/176/437288525_01a05ada4f.jpg" width="500" height="333" alt="Cory Doctorow @ eTech 2007"></a><script async src="//embedr.flickr.com/assets/client-code.js" charset="utf-8"></script>

Cory Doctorow at eTech 2007. Original image by Ed Schipul. CC-BY SA 2.0

Cory is a very prolific writer. He has a lot of tech commentary and is especially vocal about internet infrastructure, legislation, and copyright issues. Cool.

But something is odd.

When you look at his websites, specifically [Pluralistic](https://pluralistic.net/), it looks a mess. He usually includes an article, a daily links section, day in history section, and a works tracker section. With fresh eyes on his blog and zero context, it didn’t make much sense to me. For example, are the links just something he found interesting? How does it relate to his articles? **Is there a *use* for this info?** How does he do this *every day*?

## Memex

I’ve yet to find a clear answer, but there are some hints. The first is his Memex found via a link on his author blog:

<https://memex.craphound.com/2011/05/10/valentes-girl-who-circumnavigated-fairyland-sweet-fairytale-shot-through-with-salty-tears-magic/>

A [Memex](https://en.wikipedia.org/wiki/Memex) is a device that acts as an extension of a user’s memory. The concept influenced the Internet, which can act as a collective memory for everyone connected.

The next hint comes from his near-daily posts on [Tumblr](https://mostlysignssomeportents.tumblr.com/tagged/pluralistic). Tumblr content is nearly a clone of his other sites, but there are many more This day in history links. Categorized from 1 year to 20 years in 5-year increments.

The how is technically easy. He could use a database of links and meta-data, such as the Y/M/D published. Run a script to extract x articles from this day over the interval. Use Tumblr’s API to generate a post. It’s unclear if WordPress — the back-end for his blogs — acts as the database or if he is using another KMS. Probably a synced local DB + generator script.

The question that isn’t so clear is why?

I suspect he uses the Memex script to generate a Tumblr post for two reasons. The first is to refresh his memory. I read through the list and thought, “Oh! I remember that!” He can do this daily to refresh his memory of internet cultural events. That will help if he needs to go back and reference something because he knows it’s there rather than save and forget like so many Pocket articles.

The second reason is that he can pick old posts that are the most relevant to today. Those are the posts that make it onto his blog. Those are also the most likely to be referenced in new work on current topics. It’s using the Memex not only to refresh older ideas but also to surface the most relevant information applied today. Voila, internet culture archivist.

The section [Hey look at this](https://pluralistic.net/2022/12/23/semipermeable-membranes/#linkdump) is a link dump that is probably the input to the Memex. I suspect these links are curated from social media and various RSS feeds (NPR). Add in links researched for articles (and the articles themselves).

So, we have an input (HLAT) and an output (TDIH). The link curation would take some time, but a good RSS feed, a keen social media eye, and an idea of the types of evergreen internet culture artifacts would make this easier. The result is a highly-curated list of internet factoids that make great references and conversation.

I’m still very curious what the back-end looks like.

## Knowledge Reuse

How can someone be so prolific? I asked an ex-marine, and she said to reuse everything. I’m terrible at re-use; every project is a separate workspace built from the ground up. I can see how inefficient this is, but re-use takes infrastructure.

Cory has found a good knowledge re-use model based on the memex. The primary outlets are Tumblr (T), pluralistic (P), Socials (SM), Medium (M), Newsletter (N), & Craphound.

So, on a non-article day, you want to learn what is new in the world.

1. Fire up your memex to generate On this day posted to T -> review generated links -> (fix broken?) -> pick the most interesting/relevant for today.

2. Review RSS feeds + SM, and find any good nuggets of long-term cultural interest. Add to memex. Generate LotD.

3. Post Links of the Day on P, SM, M, N.

The longest part of this process would be cleaning memex and reviewing new content. The *skill* is picking only a few of the most interesting new links. Out of all the content that comes out each day, that would be quite difficult. You would get better with practice.

## New Content Creation

Where does Cory get his ideas? Not sure. Having 20+ years of tech info fresh in your mind (and at your fingertips) would let you get deeper into current-event commentary. And I think that’s why his articles are deeper into the topic than you will normally see in something like journalism. Access to that history and a view of a current landscape likely makes a lot of ah-ha moments that would be perfect for new article research or many, many books.

New content is posted on all channels, along with the Links of the Day. Articles that make it to Medium eventually get read as part of a podcast series and posted on C.

Only one channel seems monetized, but all channels are tightly linked, leading you back to books and talks. Nothing is wasted, and it all starts with the memex.

## Final Observations

* Cory has an odd linking style in articles, where there will be a paragraph of text followed by a relevant link. At first, I thought this was about link transparency, but then realized it’s probably more about plain-text editing. I suspect he uses a plain-text editor for articles, maybe even something on the command line. I don’t care for the linking style as much as linking on the topic, but if you search and automate processes, that style makes a lot of sense.
* The [Colophon](https://pluralistic.net/2022/12/20/free-for-2023/#bragsheet) section (#bragsheet) is doing A LOT. First, it lists ongoing projects. This is genius. It serves as a project tracker, advertisement, and accountability system all in one. This part could be managed and compiled easily from a spreadsheet. Same for currently reading, upcoming and recent appearances, latest and upcoming books. I’d bet he is using a CSV/spreadsheet with a bunch of links and descriptions, filtering the archive, and maybe pulling recent posts from his blog RSS.
* He seems to be quite famous for working everywhere, so he would need the process non-intrusive and local.

## Conclusions

I don’t know much about Cory Doctorow, but he has created a system — presumably at least somewhat automated — to capture and reuse knowledge. A system like that needs *direction*, in his case, the topic of internet culture; otherwise, you have a shotgun blast of content, like social media. I’d suggest this Memex, if it exists, and the daily use of the system is a core component of why his writing has so much *depth*. Sure, he still *manually* does a crazy amount of writing, but his infrastructure focuses the internet sprawl. It helps build connections. Those connections likely make it easier to both spark a new idea and be confident in its grounding.

This is why his websites look a bit odd, maybe less orderly and polished than you usually find, and much more confusing to a casual observer. We’re looking into the mental extension of an expert. It’s not a product for a casual reader. It’s a collection of curated factoids to build expert-level knowledge. Awesome.

@Cory Doctorow — I’m very curious about the technical aspects of your knowledge management system. How do you interface with the Memex? What does search and update look like? Is everything local? Do you automate as much as possible?

P.S. Getting ready to read Cory Doctorow’s [Chokepoint Capitalism](https://craphound.com/category/chokepoint/). It [looks like](https://pluralistic.net/2022/12/24/looking-back/#bragsheet) he will be on tour to talk about the book in early 2023.

---

{: #license}
![Creative Commons Attribution 4.0 license](/assets/images/ccby4.webp){: .align-center}

This work licensed under a Creative Commons Attribution 4.0 license. That means you can use it any way you like, including commercially, provided that you attribute it to me, Joshua I. James, and include a link to [ThinkingForest.org](https://thinkingforest.org).

<https://creativecommons.org/licenses/by/4.0/>

Quotations and images are not included in this license; they are included either under a limitation or exception to copyright, or on the basis of a separate license.
