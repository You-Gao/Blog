---
date:             2025-03-26
description:  >-
    exploring ux design via "the indie web"
layout:           post
title: >-
    Neocities and UX
layout:           style
name: >-
    Neocities & UX
---

# Neocities & UX

I went down the rabbit hole of exploring "the indie web" and "personal sites" via webrings; I think you should too. But that's not the point; this post is about me summarizing the insights I gained on web design, particularly UX design, from my adventure.

The reason why Neocities is such a compelling case study for UX design is precisely because the "site masters" don't have to design for the "other" as the site is meant to be a representation of the creator. This trait of the indie web is what I see as the core principle of UX, which is how to design an identity. UX in contrast with UI, as UI can be considered a relatively "solved" field in terms of best practices that have been optimized for user psychology[^1].

If UI is about user psychology, then UX is about user phenomenology[^2]. That is the more embodied and subjective way people interface with a specific design. The aspect that designers knowingly acknowledge has begun way long before the user even gets to the website. A "hard" problem whose solution might have to run counter to the "best practices", but if gotten right, awaits only glory.

## What I Learned

### UI Still Matters

The point above, might be redundant, but even if you are designing for self-expression, some basic conceptual rules will still apply since people have to "visit" the site. One of the glaring problems is that a lot of these websites are not mobile-first at all. Another problem is that the UI of these sites is often extremely muddled, with the navbar having sometimes up to 10+ options.

An important lesson learned here is not to try to do everything on the same domain. Splitting up some of these navigation options to their own "subpages" with their navigation hierarchy prevents including a lot of options in the UI. This rationale is why many websites with different functionalities split them up into subdomains in order to progressively disclose information as it's required.

### Performance is an Aesthetic

Performance is a vague term when it comes to UI/UX. What I mean by performance here is how performant the site is to a user. This definition includes the commonly taught idea of UX speed (learnable, intuitive, <100ms), but also includes the not commonly thought of web-page speed itself. I say this because some of the websites I visited transferred 10 MB+ in images, which made the load times unbearable. So maybe it is not the best idea to reach for "new features" that can a lot of bloat and make sure you remember to optimize everything.

[Why your website should be under 14kb](https://endtimes.dev/why-your-website-should-be-under-14kb-in-size/)

### Be Different

Okay, yes, be different? So what? Of course, creating a differentiable UX experience requires you to be different, it's in the name! Here me out though, I say "Be Different" to illustrate a deeper point. Which is, in order to be different you have to fundamentally understand the technology you are working with and what is vaguely possible or not. This point is akin to artists as they produce art with different materials, canvases, and tools; each choice matters importantly to the composition of the piece.

Throughout my deep-dive, I encountered sites made fully in WebGL, sites without any css, sites with just images, and generally sites which broke conventional design rules. Importantly, these pages did so by playing with the boundary of web design in their own. Just like an artist selects oil paint over watercolor for a specific effect, a web designer who deeply understands HTML, CSS, JavaScript, and beyond can make more deliberate design choices rather than just relying on templates or trends.

## Closing Thoughts

> "A good UI makes a site easy to use, but a good UX makes a site worth remembering"

Even though I wrote a blog on it, UX still feels a bit amorphous to me. My best interpretation is that UI is lintable and UX is more semantic. UX captures more than just the UI structure that is guided by common patterns. If anyone out there has a better conception, please do tell.

<br/>
---
[^1]: The best practices I'm referring to is the idea of user stories -> "minimal clicks/intuitive flow" -> ui patterns.
[^2]: Psychological experiments are "causally underpinned" by a phenomenological or a neurological explanation i.e. why changing a schema causes different qualia reports is either due to an intersubjective reason or a neuronal reason[^3].
[^3]: Its similar to how say a statement (if rain -> plant growth) can be experimentally verified, but what is happening under the hood is that there's a hidden syllogism grounded in a theory of cellular biology[^4].
[^4]: Another analogy is the difference between Thermodynamics and Statistical Mechanics.
