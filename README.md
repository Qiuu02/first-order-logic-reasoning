# First-Order Logic Automated Reasoning Project

A formal modelling and automated reasoning project based on first-order logic, featuring machine-readable logical specifications across multiple problem domains.

## Overview
This project contains a set of first-order logic modelling tasks, including formal knowledge representation, satisfiability checking, and theorem proving experiments across multiple problem domains.

## What This Project Demonstrates
- Formal knowledge representation using first-order logic
- Translation of informal problem statements into machine-readable logical specifications
- Reasoning about satisfiability, consistency, and constraint interactions
- Organising multiple theorem-proving cases and structured inputs in a reusable way

## Features
- Modelled reasoning problems in first-order logic
- Represented logical constraints and domain knowledge in prover-friendly formats
- Tested satisfiability and proof behaviour on multiple benchmark-style cases
- Organised problem instances and specifications into reusable files

## Tech Stack
- First-Order Logic
- Automated Theorem Proving
- TPTP-style problem files
- Python (for specification conversion / helper scripts)

## Repository Guide
- `*.p` – theorem proving problem files
- `*.tff` – typed first-order logic files
- `*.json` – structured specification inputs
- `spec2latex.py` – helper script for converting specifications
- `sets.cnf` – CNF-based logical representation

## Example Problem Domains
- Consistency and satisfiability reasoning
- Typed logical modelling and classification
- Structured specification-based problem translation
- Benchmark-style theorem proving instances

## Recommended Entry Points
If you are viewing this repository for the first time, start with:
1. `sets.p` and `sets-a.json` / `sets-b.json` for satisfiability-oriented modelling examples
2. `pets-a.tff`, `pets-b.tff`, `pets-c.tff` for typed first-order logic examples
3. `injs.p` with the related JSON/TEX files for structured specification-based modelling

## My Contribution
I translated problem statements into first-order logic representations, created and refined theorem-prover input files, explored satisfiability and consistency behaviour across multiple cases, and reorganised the project into a public portfolio repository.

## How to Explore This Repository
- Read the `.p` and `.tff` files to inspect the logical models and theorem-prover inputs
- Compare the `.json` specification files with their corresponding `.tex` outputs
- Review `sets.*`, `pets.*`, and `injs.*` groups as representative examples of different modelling styles
- Use `spec2latex.py` where relevant to inspect specification conversion workflow

## Why This Matters
Formal reasoning improves precision in knowledge representation and helps verify whether a set of assumptions or rules is internally consistent.  
This project demonstrates foundational skills relevant to knowledge-based AI, symbolic reasoning, and logic-driven verification.

## Notes
This repository is adapted from a university knowledge-based AI / automated reasoning project and reorganised as a portfolio project.