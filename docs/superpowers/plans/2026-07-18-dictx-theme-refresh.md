# DictX Theme Refresh Implementation Plan

> **For agentic workers:** REQUIRED: Use superpowers:subagent-driven-development (if subagents available) or superpowers:executing-plans to implement this plan. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Apply the new DictX brand palette to `dictx-page` so the website matches the Flutter app's Material-inspired theme.

**Architecture:** Centralize colors in CSS custom properties, add a lightweight verification script that checks for the new palette contract, then replace legacy warm colors in the page styles with the new brand and neutral tokens.

**Tech Stack:** Static HTML, CSS, shell-based verification with `rg`

---

### Task 1: Add palette verification

**Files:**
- Create: `dictx-page/tests/theme-palette-check.sh`

- [ ] **Step 1: Write the failing verification script**
- [ ] **Step 2: Run it to confirm it fails against the old palette**

### Task 2: Centralize theme tokens

**Files:**
- Modify: `dictx-page/css/general.css`

- [ ] **Step 1: Add brand and neutral CSS variables**
- [ ] **Step 2: Update shared components to use the new tokens**

### Task 3: Refresh page-specific styles

**Files:**
- Modify: `dictx-page/css/style.css`
- Modify: `dictx-page/css/queries.css`

- [ ] **Step 1: Replace remaining legacy warm colors**
- [ ] **Step 2: Update translucent overlays and focus treatments**

### Task 4: Verify the result

**Files:**
- Test: `dictx-page/tests/theme-palette-check.sh`

- [ ] **Step 1: Run the verification script again**
- [ ] **Step 2: Inspect the diff for any missed legacy colors**
