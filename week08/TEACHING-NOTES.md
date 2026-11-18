# Week 8 solution visibility

The four numerical worked solutions and the fourth plane-stress discussion explanation are currently visible as dropdowns for author review. Their contents remain in `week08.md` inside five `post-class-solution` wrappers. Q4's existing checks and all pre-class feedback are unchanged.

Before class, replace each of the five opening tags:

```html
<div class="post-class-solution">
```

with:

```html
<div class="post-class-solution" style="display: none;" hidden>
```

This hides those dropdowns in Presentation and Textbook modes. After class, restore the visible opening tags above to release them. Keep the enclosed `<details>` blocks, contents and closing `</div>` tags unchanged. Search for `post-class-solution` to find every wrapper and preview before publication.

This is a presentation measure, not access control: anyone with the raw source can read the solutions. No restricted assessment solution is added here.
