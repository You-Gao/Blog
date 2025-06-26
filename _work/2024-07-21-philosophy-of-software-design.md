---
date:             2024-07-21
description:  >-
  Reflections on "A Philosophy of Software Design".
layout:           post
title: >-
  A Philosophy of Software Design
layout:           style
name: >-
  A Philosophy of Software Design
---

# A Philosophy of Software Design

> "These concepts may not immediately identify the best design, but you can use them to compare design alternatives and guide your exploration of the design space."
> <figcaption class="blockquote-footer">A Philosophy of Software Design</figcaption>

I read this book because it was popular, and I'm glad I did. After reading it, the comparisons are pretty accurate. The contents of the book itself are pretty good, but it is definitely aimed at beginner or junior developers rather than experienced ones. A lot of the critiques that I could think of, and many others have said, are about what is not in the book itself. 

There are many other portions of the book that are quite short, but the idea presented in the section seems important and warrants dedicating more than a page to it. 

The main culprit was how short the section on error handling was. It called out the importance of error handling and how the majority of software incidents are precisely due to faulty error handling but skipped elaborating on the techniques to do so.

With that being said, a lot of the concepts in the book were reassuringly the same concepts covered in the courses I took at UVA. What was missing for me was there wasn't a discussion on broader software architecture, patterns, and culture, which invariably affect the software design process. 

## Main Red Flags

| Red Flag                                    | Description                                                                                                    | Page |
|------------------------------------------|----------------------------------------------------------------------------------------------------------------|------|
| Shallow Module                           | The interface for a class or method isn't much simpler than its implementation.                                | 25, 110 |
| Information Leakage                      | A design decision is reflected in multiple modules.                                                             | 31   |
| Temporal Decomposition                   | The code structure is based on the order in which operations are executed, not on information hiding.            | 32   |
| Overexposure                             | An API forces callers to be aware of rarely used features in order to use commonly used features.                | 36   |
| Pass-Through Method                      | A method does almost nothing except pass its arguments to another method with a similar signature.               | 46   |
| Repetition                               | A nontrivial piece of code is repeated over and over.                                                            | 62   |
| Special-General Mixture                  | Special-purpose code is not cleanly separated from general purpose code.                                         | 65   |
| Conjoined Methods                        | Two methods have so many dependencies that it's hard to understand the implementation of one without the other.  | 72   |
| Comment Repeats Code                     | All of the information in a comment is immediately obvious from the code next to the comment.                      | 104  |
| Implementation Documentation Contaminates Interface | An interface comment describes implementation details not needed by users of the thing being documented.        | 114  |
| Vague Name                               | The name of a variable or method is so imprecise that it doesn't convey much useful information.                  | 123  |
| Hard to Pick Name                        | It is difficult to come up with a precise and intuitive name for an entity.                                      | 125  |
| Hard to Describe                         | In order to be complete, the documentation for a variable or method must be long.                                | 131  |
| Nonobvious Code                          | The behavior or meaning of a piece of code cannot be understood easily.                                           | 148  |
