---
date:             2024-07-21
last_modified_at: 2026-04-08
tags:             [cs, sociology, culture]
title:            MMM and DevOps
name:             MMM and DevOps
layout:           style
description:  >-
  The question of the 1970s is answered today.
---

# The Mythical Man-Month

> "For many, the joys far outweigh the woes, and for them, the remainder of this book will attempt to lay some boardwalks across the tar."
> {% include figcaption.html caption="The Mythical Man-Month" %}

*Mythical Man-Month* put out concepts that have stood the test of time. Fred Brooks provides us with the wisdom he has gathered over the years, leading major software projects in the 1970s.

Personally, the book has helped highlight and provide insight into a lot of the challenges of writing software within an organizational context (open-source or in a company). As a student, you usually will never encounter software development at scale until an internship, so this book is priceless in this respect. 

The book is a bit dated because it comes from a different era of software development. A question I had was: "*Why is there minimal mention of organizational culture in Mythical Man-Month?*" Brook says a lot about organizational structures and the responsibilities of those roles. However, there is minimal mention of organizational culture.

# [State of DevOps 2023 Report](https://services.google.com/fh/files/misc/2023_final_report_sodr.pdf)

> "The management of this complex craft will demand our best use of new languages and systems, our best adaptation of proven engineering management methods, liberal doses of common sense, and a God-given humility to recognize our fallibility and limitations."
> <figcaption class="blockquote-footer">State of Devops 2023 Report</figcaption>

I added *State of DevOps* to this post because the DevOps movement was an attempt to address the organizational, interpersonal, and technical challenges posed by software development.

Putting it into perspective, during Brooks' time, there weren't technologies or concepts like Version Control, CI/CD, API Specifications, Agile methodologies, linters, and test environments---though there were some rudimentary equivalents. 

Software development and system design were only in their infancy. In the 21st century, software organizations continue to address issues related to software engineering teams, architectural decisions, formal specifications, knowledge sharing, testing, reliability, and documentation.

## Establish a Healthy Culture

> "Teams with generative cultures have 30% higher organizational performance."
> <figcaption class="blockquote-footer">State of Devops 2023 Report</figcaption>

I don't have much to say on this part in relation to *Mythical Man-Month*. All I can say is if people trust each other and work towards a common mission, along with good infrastructure, then the company is set. 

Takeaway: "*Outside of having a company culture slide deck, there are very real organizational choices and practices for creating a generative culture.*"

Chapters:

* CH 1: The Tar Pit
* CH 2: The Mythical Man-Month
* CH 3: The Surgical Team
* CH 14: Hatching a Catastrophe

## Build With Users in Mind

> "Teams that focus on the user have 40% higher organizational performance."
> <figcaption class="blockquote-footer">State of Devops 2023 Report</figcaption>

My theory on why companies have higher organizational performance by focusing on UX is because they get better specifications, requirements, and abstractions before developing new features. 

Takeaway: "*Build features with the user in mind, and if not, build features with clear specifications.*"

Chapters:

* CH 4: Aristocracy, Democracy, and System Design
* CH 5: The Second-System Effect
* CH 6: Passing the Word

## Amplify Technical Capabilities with Quality Documentation

> "Trunk-based development, for example, is estimated to have 12.8x more impact on organizational performance when high-quality documentation is in place relative to low-quality documentation."
> <figcaption class="blockquote-footer">State of Devops 2023 Report</figcaption>

The goal of docs is to communicate the larger architectural decisions about parts of the codebase. Even then, documentation is never done or well-maintained.

Takeaway: "*If a person has to read all the methods of a repo in depth to understand what's going on, uh oh...*"

* CH 7: Why Did the Tower of Babel Fail?
* CH 8: Calling the Shot
* CH 10: The Documentary Hypothesis
* CH 15: The Other Face

## Increase Infrastructure Flexibility w/ Cloud

> "Using a public cloud, for example, leads to a 22% increase in infrastructure flexibility relative to not using the cloud."
> <figcaption class="blockquote-footer">State of Devops 2023 Report</figcaption>

Debugging and testing were even worse in the past than they are now. Brooks recounts spending hours setting up and tearing down build test tools. Now, it takes a couple of minutes to run basic tests and minutes more to run test environments.

This comparison effectively illustrates the increased flexibility and capabilities now available to us. Tools like Terraform or CloudFormation would have been viewed as arcane magic to these early practitioners, but we now have them and should utilize them to increase the reliability of our software.

Takeaway: "*New tools are being built every day to reduce accidental complexity. We should use them.*"

Chapters:

* CH 12: Sharp Tools
* CH 13: The Whole and the Parts

## Citations

2023 State of DevOps Report, Google Cloud. (n.d.). Google Cloud. https://cloud.google.com/devops/state-of-devops

Brooks, F.P. (1987). No Silver Bullet: Essence and Accidents of Software Engineering.

Brooks, F.P. (1975). The Mythical Man-Month. Reliable Software.
