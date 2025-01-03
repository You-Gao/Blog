---
categories:       blog
date:             2025-01-01
description:  >-
  the commoning of innovation
lang:             en
last_modified_at: 2025-01-01
tags:
- Book-Review
title: >-
  Democratizing Innovation
layout:           style
name: >-
  Democratizing Innovation
---

# Democratizing Innovation

> Users that innovate can develop exactly what they want, rather than relying on manufacturers to act as their (often very imperfect) agents.

The quote is the central thesis of the book. Hippel here is writing against the dominant narrative of R&D. A narrative which supposes the core of innovation lies in the operation of manufacturing firms that produce and construct the goods. Users in this story have no innovative power outside of voicing their needs or commanding their capital on the market. Hippel essentially says to the R&D industry: "you've got it all wrong!". It is precisely the users of the goods that are the innovators. Users are the ones making the product better and generating new features, not the manufacturers. This point might seem obvious now given the sort of shift and movement towards UX design. But no, product managers back then and maybe still even now, point to their R&D department as the core product innovators.

Anyhow, I took interest in this book specifically because of its relation to the open-source community. I mean theres no way a book titled *Democratizing Innovation* does not highlight the shifting effects of communication technology and its effects to transact user-knowledge openly and effectively; It does. To my delight though, it didn't cover the likes of GitHub [^2]. It covered **SourceForge**, qt and KDE, GNU, Apache, Redhat. and Statacorp. All with shocking relevance to what is seen now in the open-source community and really the continuation of the same user-manufacturer shenanigans that went on back then. So for my reflection, I want to map Hippel's theory and explore its idiosyncrasies with real-life case studies.

## Hashicorp's Move to BSL

Theory says here that the tooling under hashicorp was completly open-source, it just happened to be under an org called hashicorp. The fundamental users or user firms were able to openly commit to the source code of any of the hashicorp tools like terraform, helm, consul, etc. The backlash occured when they tried to shift over to a BSL license, which mean that their status was now more of a firm than an open-source community. This incompatability stems from the conversion of user innovation to a firm status, creates a contradiction of the general open-source ethos. I myself also thought that Hashicorp was just acting like an open-source org that holds these projects, wtihout the goal of profiting from them. In this case, an information community organizer true colors are that of a manufacturer, but in the more egregious case they didn't do any innovation themselves, they are just paywalling it.

## Redhat & CentOS

Ironically enough, when Hippel is discussing manufactuerer firms and ways to work with user innovation in software, he points to Redhat Enterprise Linux, which after 13 or so years and being acquired by IBM, has "betrayed" the open-source community as well. They have went to the side of being a manufacturer instead of a user-firm, and one that is egregiously bastardizing open-source contributers by profiting off of their efforts[^4]. But going back to when Hippel wrote this text, he highlighted how Redhat as a firm dealt with moneitizing open-source with respect to providing technical support for the project.

>  (3) Manufacturers may sell products or services that are complementary to user-developed innovations.

This monetization model was fairly uncontroversial. You have a group of users contributing to an OS for the use of each other without any care for funding. Then you have Redhat that takes this OS, contributes to it as well, but also says: "If anyone wants support you can get it from us". The concern was when they decided they would go and make their upstream version behind a paywall. This move modified their relation to the users as more of a user-manufacturer than user-user. The decision can be interpreting as RedHat supplanting itself on-top of the open-source community, similar to what Amazon did to ElasticSearch. In the end though it feels more complex than that. On the one hand, a case can be made that Redhat being profitable is good for open-source because it does mean that user innovators can get paid for what they do explicitly by Redhat. On the other is still the argument that this corporate suplanting is a net negative to the ethos of the open-source community. 

The answer Hippel gives is that likely along the lines of this. For the individual users, they are largely unaffected aside from being suspect  of the profit motive and the ethos of contributing to this project. For user-firms, they are generally outraged because they now have to either pay for the license for RHEL or use CentOS Stream. For Redhat, they still offer their services on technical support, fixes, updates and services, while contributing back to the open-source ecosystem. The tension, however, lies in whether this compromise tips too far toward commercialization, risking the alienation of the very community that sustains open-source innovation [^5]. 

## Keeb Community

The mechanical keyboard community, shortened keeb, is an example that immediately came to mind for me when Hippel was discussing how physical product manufacturers can work with users by taking the side-line to product development and instead focus on producing parts for the community. The manufacturer's role here is to take the user developed innovations in the keyboard community and do what they do with economies of scale to then produce the base parts of kits that the users purchase. And this is exactly what has happened in the keyboard space. Manufacturers are following the rules Hippel as set out:

> (1) Manufacturers may produce user-developed innovations for general commercial sale and/or offer a custom manufacturing service to specific users. (2) Manufacturers may sell kits of product-design tools and/or “product platforms” to ease users’ innovation-related tasks.

Many popular keyboard manufacturers like DROP or KBDFans, do sell full functional keyboards themselves, but mainly got their rise due to their manufacturing of keyboard kits. The design of these keyboard parts and of "what" to build is largely left up to the community innovators to generate. They sell (1) the custom keyboard specifications on their website along with (2) entire kits or parts that the user can go on to build the keyboard for themselves. Besides the manufacturer narrative fitting, the user narrative is about the same as well. 

Users of keyboards make modifications for aesthetical and functional reasons like the sound, sight, or feel of the keyboard. This matches what Hippel writes on the reasons users innovate, which is the heterogeneity of needs that transcend simple market segmentation. On top of this diverse user needs, the construction of keyboards themselves allow for hobbyist intervention. Similar to how old Thinkpad laptops and its parts are praised for it's modularity, the same can be said of mechanical keyboards. The case, pcb, plate, switches, stabilizers, and keycaps are all different interchangeable parts in a keyboard. All of these effects coalesce into substantially healthy user-manufacturer relation. 

## Samsung Electronics

Saving the case-study that throws a monkey wrench into Hipell's theory for last. It doesn't seem like it is the case here that it is the user innovators or the firms using microchips that are the ones innovating on the manufacturing process of them. And the reason why was already probably covered in the book I just need to look for it. My theory behind it uses Hippel's highlight of software unique characteristics of transactive and production costs; Its practically speaking 0. In contrast with the semiconductor industry, the barrier to entry is so much higher that there is no ability for users to innovate. Apple or any hobbyist does not have access to billions of dollars to go ahead and innovate on chip manufacturing at their whim.  

> Freedom from manufacturer involvement is possible because information products can be “produced” and distributed by users essentially for free on the web (Kollock 1999). In contrast, production and diffusion of physical products involves activities with significant economies of scale.

## Conclusion

In a very Marxist turn of events, Hippel gives us an insight into the nature of production in information products vs. physical products. If you take it that Code is a form of Capital in the new age, traditional views of the manufacturer really have little power or control over information products that are developed, shipped, and diffused in the realm of open-source. I mean really looking at the history of open-source and software products in general, they have always ended up being democratized. UNIX becoming proprietary and Stallman et al. going out to develop their own POSIX compliant code base. LibreOffice being made as an open-source version of Microsoft Office. The list of FOSS has gotten to the point that you really don't need to pay for any user based software.

Though, there is a caveat. I will be honest that I wasn't fully truthful about the nature of user innovation. It's not all sunshine and open-source rainbows. There is another class of user innovators that Hippel denotes. The user-firm-innovator is an entity that innovates as well and has its own quirks. The main thing highlight here though, is the idea that a user-firm-innovator usually does gain from having proprietary knowledg and would like to hold on to its information asymmetry. This is the idea of commonly expressed via the concept of competitive advantage or differentiation. User-firms transact further utilizing what they bought from the manufacturer, but they can innovate on top of that. And there is some empirical evidence on this, given how many companies are turning towards the idea of a "tech core" in various segments of the economy. Instead of buying a piece of software that all your comptetitor firms are using, a user-firm should develop "in-house" and utilize the advantage in the market[^3].

There was less discussion on non economic extrinsic motivators then I had wanted, but given the fact that the capital economy is how we coordinate social welfare, it would have be/been 100% academic suicide to tack on the point that open-source software could be marxist. A discussion on the institutional actors arguably doesn't need to inquire into that, but there is a clear ideological ethos that divides user-firm innovators and user innovators, along with their propensity to share. I do like that aspect when discussing the more behavioral aspects institutional actors, the behavior of firms, or "business entities", but again, the motivations behind actions factors into behavior somewhere. Thanks for reading.

<br/>
---
[^1]: Sarcastic, but not really either.
[^2]: I mean the book was written in 2005.
[^3]: AWS precisely arose from its user-firm innovating at Amazon (the book store firm) and then becoming the manufacturer (the web service firm).
[^4]: This is being dramatic, CentOS Stream isn't that bad honestly.
[^5]: When a company uses its contributions as leverage to restrict access, it often triggers a backlash that encourages decentralization and diversification.
