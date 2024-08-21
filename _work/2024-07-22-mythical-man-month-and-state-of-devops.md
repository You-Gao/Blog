---
categories:       blog
date:             2024-07-21
description:  >-
  The question of the 1970s answered today.
lang:             en
last_modified_at: 2024-07-21
layout:           post
tags:
- Work
title: >-
  MMM and DevOps
layout:           style
name: >-
  MMM and DevOps
---

# The Mythical Man-Month

<figure class="container-lg" style="padding: 0;">
    <blockquote class="blockquote" style="font-size: 18px;">
    <p>"For many, the joys far outweigh the woes, and for them the remainder of this book will attempt to lay some boardwalks across the tar."</p>
    </blockquote>
</figure>

Mythical Man-Month as a book is solid, and what really makes it good (at least for me) is how strongly the ideas put out in the book have stood the test of time. Fred Brooks, the author of the book, provides us with the wisdom he has gathered over the years leading major software projects in the 1970s. The book leads SWEs into the uncomfortable realization that writing software does indeed have a social, ethical, and political domain that requires reflective inquiries to construct ideal systems. So, if you want to know why the tech field has adopted certain organizational structures, software teams, common best practices, and development methodologies, consider checking the book out.

Personally, the book has helped highlight and provide insight into a lot of the challenges of writing software within an organizational context (open-source or in a company). As a student, you usually will never encounter software development at scale until an internship, so this book is really priceless in that aspect. The book is dated, though, just because it is a different time for software development. Specifically, the portion about developing software with constraints gave an interesting thought to judging software not by size but by functionality (Mostly irrelevant now due to storage size).

This paragraph is a bit of a tangent and can be skipped: Why was there minimal mention of organizational culture in Mythical Man-Month? Brook says a lot about organizational structures and what the responsibilities of those roles should be, but there is minimal mention of culture's impact on a software project's success. Maybe, back then, no one needed a reminder that everyone at the company was there to succeed, and no one was actually out to get them. Most of the current DevOps best practices just seem to be pretty innocuous, though that could be in hindsight. Either way, with DevOps and learning from the 70s, we now have feedback loops, deployment pipelines, cross-functional teams, QA teams, continuous learning, code reviews, code ownership, and general cognizance of good software development organizations.

** Side note: A lot of these issues persist today, and I definitely think it is because they are not incentivized correctly

# [State of DevOps 2023 Report](https://services.google.com/fh/files/misc/2023_final_report_sodr.pdf)

<figure class="container-lg" style="padding: 0;">
    <blockquote class="blockquote" style="font-size: 18px;">
    <p>"The management of this complex craft will demand our best use of new languages and systems, our best adaptation of proven engineering management methods, liberal doses of common sense, and a God-given humility to recognize our fallibility and limitations."</p>
    </blockquote>
</figure>

I added "State of DevOps" to this review because, from the 21st century looking back, the DevOps movement can be contextualized as an attempt to solve the organizational, interpersonal, and technical problems posed by software development. Putting it into perspective, during Brooks' time, there weren't technologies or concepts like Version Control (Git), CI/CD, API Specifications, Agile methodologies, linters, and test environments—though there were some rudimentary equivalents. Software development and system design was only in it's infancy in those days. Now in the 21st century, the DevOps movement continues to address issues related to software engineering teams, architectural decisions, formal specifications, knowledge sharing, testing, uptime, and documentation.

## Establish a Healthy Culture

<figure class="container-lg" style="padding: 0;">
    <blockquote class="blockquote" style="font-size: 18px;">
    <p>"Teams with generative cultures have 30% higher organizational performance"</p>
    </blockquote>
</figure>

I don't have much to say on this part in relation to Mythical Man-Month. All I can say is that if people trust each other and work towards a common mission, along with good infrastructure, the company is set. Though maybe I can say a little, a lot of the organizational structures in the book definitely align with the common practices of today. Small and effective teams allow employees to work locally with more intentionality, and the hope is that the cascade will solidify company culture.

Takeaway: Outside of having a company culture slide deck, there are very real organizational choices and practices for creating a "generative culture."

Chapters:
* CH 1: The Tar Pit
* CH 2: The Mythical Man-Month
* CH 3: The Surgical Team
* CH 14: Hatching a Catastrophe

## Build With User in Mind

<figure class="container-lg" style="padding: 0;">
    <blockquote class="blockquote" style="font-size: 18px;">
    <p>"Teams that focus on the user have 40% higher organizational performance."</p>
    </blockquote>
</figure>

My theory on why companies have higher organizational performance by focusing on UX is that they get more formalized specifications, requirements, and abstractions before developing new features. I don't think what I said was anything crazy, as having a more explicit architectural and technical representation of the software before building it would help the organization deliver more at a quicker pace. Prototyping would definitely play into this as well, with the wide range of tools that can generate different forms of MVPs. 

Takeaway: Build features with the user in mind, and if not, build features with clear specifications.

Chapters:
* CH 4: Aristocracy, Democracy, and System Design
* CH 5: The Second-System Effect
* CH 6: Passing the Word

## Faster Code Reviews

<figure class="container-lg" style="padding: 0;">
    <blockquote class="blockquote" style="font-size: 18px;">
    <p>"Teams with faster code reviews have 50% higher software delivery performance. "</p>
    </blockquote>
</figure>

Not to say for just removing the process of code reviews altogether, but these companies seem to have a way of performing the code review process quicker. I would imagine it is quicker due to having many experts on the team, but a point I want to reiterate from the book and also a common pain voiced today: Managers should have a semblance of technical depth, and Tech leads should have a semblance of managerial knowledge. Other than that, yeah, I mean, I guess quicker code reviews = quicker delivery times.

Takeaway: Don't forget to do your code reviews. ? 

Chapters:
* CH 11: Plan to Throw One Out

## Amplify Technical Capabilities with Quality Documentation

<figure class="container-lg" style="padding: 0;">
    <blockquote class="blockquote" style="font-size: 18px;">
    <p>"Trunk-based development, for example, is estimated to have 12.8x more impact on organizational performance when high-quality documentation is in place relative to low-quality documentation. "</p>
    </blockquote>
</figure>

The point of these docs is to communicate the larger architectural decisions about parts of the codebase. This is usually not what is done or well-maintained which leads to a common perception that docs are meaningless and provide no value in the development lifecycle. Problem is, docs take manual effort and are hard to write, but... there have been solutions in cases where they have specifications like OAS 2.0 docs with Swagger. It is hard to see the light at the end of the tunnel for these artifacts, but they really do work in keeping people in the context of what they are working on.

Takeaway: If a person has to read all the methods of a repo in depth to understand what's going on, uh oh...

* CH 7: Why Did the Tower of Babel Fail?
* CH 8: Calling the Shot
* CH 10: The Documentary Hypothesis
* CH 15: The Other Face

## Increase Infrastructure Flexibility w/ Cloud

<figure class="container-lg" style="padding: 0;">
    <blockquote class="blockquote" style="font-size: 18px;">
    <p>"Using a public cloud, for example, leads to a 22% increase in infrastructure flexibility relative to not using the cloud."</p>
    </blockquote>
</figure>

Debugging and testing were even worse in the past than they are now. Brooks recounts spending hours setting up and tearing down build test tools for the OS system his team was developing in the 70s. Now, it takes a couple of seconds to run basic tests and maybe minutes to run more comprehensive ones. I went on a bit of a tangent, but it illustrates the increased flexibility and capabilities we have available to us now. Tools like Terraform or CloudFormation would be viewed as arcane magic to these early practitioners, but we have them now and should use them to increase the reliability of states.

Takeaway: New tools are being built everyday to reduce accidental complexity. We should use them 

Chapters:
* CH 12: Sharp Tools
* CH 13: The Whole and the Parts

** Note: I think there is still an art of setting up a non-cloud native networking environment

<br/><br/>

## Citations

2023 State of DevOps Report, Google Cloud. (n.d.). Google Cloud. https://cloud.google.com/devops/state-of-devops

Brooks, F.P. (1987). No Silver Bullet: Essence and Accidents of Software Engineering.

Brooks, F.P. (1975). The Mythical Man-Month. Reliable Software.
