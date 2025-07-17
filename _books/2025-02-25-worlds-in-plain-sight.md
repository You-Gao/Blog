---
date:             2025-02-25
description:  >-
 complex systems
title: >-
 Worlds Hidden in Plain Sight
layout: style
name: >-
 Worlds Hidden in Plain Sight
---

# Worlds Hidden in Plain Sight

> "But the way in which complex phenomena are hidden, beyond masking by space and time, is through nonlinearity, randomness, collective dynamics, hierarchy, and emergence—a deck of attributes that have proved ill-suited to our intuitive and augmented abilities to grasp and to comprehend."
> <figcaption class="blockquote-footer">Worlds Hidden in Plain Sight</figcaption>

I've always had a curiosity for phenomena that could not be explained by conventional facts or models about the world. This disposition of mine is also why I take so much interest in the field of systems thinking and further decided to read *Worlds Hidden in Plain Sight*[^1]. 

The book itself is a collection of essays or papers written by research members associated loosely with the Santa Fe Institute. All of them deal with widely different topics like biology, economics, politics, physics, ecology, art, etc. etc., and the list goes on. What they all have to do in common is that they approach it with the methods of the so-called "*complexity science.*" The defining feature is that their methods break from the sort of neo-Kantian piecing of the world in favor of something... well, complex.

Don't worry; I will make their definition clearer by reviewing some of the papers here, but complexity science doesn't try to forego logic or science itself. It just means they are more upfront with their assumptions and mostly simulate rather than a-priori deduce their conclusions.

## Trendy Buzzword?

> "And, to add a final touch of spice, all this hoopla often comes wrapped up in language vague enough to warm the heart of any continental philosopher."
> <figcaption class="blockquote-footer">Worlds Hidden in Plain Sight</figcaption>

The words Casti referencing were *adaptive* behavior, *chaotic* dynamics, *massively parallel* computation, *self-organization*, and *emergence*. All of these do, in fact, have some legible meaning, but their definitions are often left pretty lofty without any formalization; hence, they warm the hearts of continental philosophers. 

So, how can we endow those terms with some conceptual clarity? He doesn't...

## Learning How to Control Complex Systems

> "To control a nonlinear dynamical system, an algorithm must embody a model for the system: that is, the way in which the algorithm processes information must mirror the way that the system processes information."
> <figcaption class="blockquote-footer">Worlds Hidden in Plain Sight</figcaption>

Given the above discussion, what are the numerical methods then for this methodology or paradigm of investigating the world? What is left if traditional hypothesis testing, statistical analysis, and the newly fashioned gauntlet of machine learning techniques are to be discarded? The answer to that is a surprisingly cohesive set of options to choose from.

The most popular tool is Agent-based Modeling. First, it began to be formulated by Kenneth Arrow for "*non-equilibrium economics*" after recognizing that the assumptions for economics could account for all the truths of the world[^2]. 

Agent-based Modeling is a simulation of agents within an environment. As a user, you would formulate assumptions about the agents and create a codable abstraction of them along with the environment the agent would interact with. Then, for every time step, you would make all the agents perform an action and observe.

Another standard tooling is differential equations. This tool is probably the most common and most well-known by everyone. Differential equations can be used to model many systems and explore their nonlinearities. 

For example, these equations model something we all look at in the morning: the weather. Also, because of the inherent complexity of modeling the weather, we sadly don't know for certainty if it will be sunny or rainy someday thousands of years into the future.

Genetic Algorithms are the survival of the fittest code editions. You write some hyper-parameters for a particular agent and then simulate populations on a given task. The goal is to find the optimal hyper-parameters. In each population, you slightly alter the hyper-parameters for each spawn and only keep the top-performing ones.

Network modeling is similar to Agent-based Modeling, but in this case, you are defining a graph and running the simulation on it. Specific simulations are perturbations, lesioning, contagions, etc.

Basically, build a model using assumptions instead of the empirical deductive rigmarole.

<br/>
---
[^1]: The actual book title is *Worlds Hidden in Plain Sight: Worlds Hidden in Plain Sight: The Evolving Idea of Complexity at the Santa Fe Institute, 1984–2019*.
[^2]: Kenneth Arrow isn't some one-off crazy person; he could be labeled an intellectual powerhouse in economics. He 1. formulated his Arrow's impossibility theorem and 2. wrote a seminal paper on the growing capital-labor ratio gap.
