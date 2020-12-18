# How to contribute to this project
In order to prevent conflicts both of personalities and version control, please follow these guidelines.

1. clone this repo,
2. make a branch if changes will be extensive,
3. make edits,
4. add your name to [the authors list](./authors.txt) if you haven't already, and
5. submit a pull request!

## Proposing an RFC
Language features will be added or modified on the basis of Request
For Comment documents. The resources below will help you familiarize
yourself with this format.

 - [How to write an RFC](https://github.com/inasafe/inasafe/wiki/How-to-write-an-RFC): a guide to writing RFC documents,
 - [RFC Guidelines](https://tools.ietf.org/html/rfc7322#section-1): we won't use this exact format, but it's a good guideline,
 - [Key Words](https://tools.ietf.org/html/rfc2119): covers use and inrerpretation of terms like, "MUST", "MUST NOT", "RECOMMENDED", etc.

## RFC Template
Copy and rename [this document](./drafts/RFC_template.org), changing and adding content as needed.
Save your RFC in drafts and make a PR.

```markdown
# RFC: title
*by* author name or handle

## Problem

Factual description of the problems solved by the RFC.

## Duration

Time window in whcih the RFC is open for comment. If the deadline is
reached and more time is needed, make a note of the extension and the
new deadline below. For example:

[2020-07-01 Wed] (extended by @porpoiseless)

[2020-08-01 Sat]

## Current State

The status of the RFC as a draft, open for comment, closed, and so on.

## Proposers

A bulleted list people endorsing this RFC.

- @me
- @you
- @someone

## Detail

Additional information about the issues prompting the RFC.

## Proposal

Thorough and systematic description of how the problem can be solved,
including tables, code listings, subsections, and so on.

## Record of votes

| Vote | Name          |
| ---- | ------------- |
| +1   | @porpoiseless |

## Resolution

Indicate whether RFC is a draft, awaiting approval, approved, denied,

## CC

A list of persons to CC about this RFC.
```
# Forks

The material in this repo, with the exception of the contents of the
[frames](./frames) directory, is offered under a GPL 3.0 license, which can be
read [here](./COPYING.txt). Data from
[FrameNet](https://framenet.icsi.berkeley.edu/fndrupal/) is under a [CC 3.0
Attribution license](https://creativecommons.org/licenses/by/3.0/).
