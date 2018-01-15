---
layout: page
---

## About fontctrl

Font Control is a font manager that keeps your font files up-to date.

The goal of Font Control is as follows:

1. Distributed, plain & simple repository model
   1. There's a default, main repository of fonts that are free
      (as in free to distribute) that the working group hosts and maintains.
   2. Anyone can setup a repository; e.g. host fonts internally at your company
      and restrict access to people who have licenses for the fonts.
   3. A repository is [just a set of files](#font-repository)
      served over HTTP(S) and should be serviceable from any HTTP server
      (no dynamic content generation required.) E.g. AWS S3, GitHub, etc.
2. A small and portable program (`fontctrl`) that manages fonts on a computer
   and serves as the client for accessing repositories.
   1. Can be configured to operate on any number of repositories via a simple
      JSON configuration file (`~/.fontctrl.json` on Posix systems, )
   2. Memorizing the user's preference of fonts and any versions limitations
      (e.g. `"inter-ui = 2.*"`)
   3. Keeps font files up to date according to the user's preference and
      availability in configured repositories, by

Long-term goal is to make it easy for designers to keep all their font files
up to date, including updates to fonts they have purchased licenses for.
Operation should be as automatic as possible, optimally operating without user
intervention (e.g. via scheduled invocation or as a service.)
