<%*
let input = await tp.system.prompt("Topic name", tp.file.title.replace(/^JavaScript\s*-\s*/, ''));
let topic = input.trim().replace(/\s+/g, ' ');
let title = `JavaScript - ${topic}`;

const today = tp.date.now("YYYY-MM-DD");
-%>
---
languageOrFramework: JavaScript
topicName: "<% topic %>"
status: exploring
date: <% today %>
publish: true
tags:
  - javascript
  - certification
  - tag-trek
---

# JavaScript - <% topic %>

## Overview
- <!-- Add a concise explanation of what this topic covers -->
- <!-- Include 2–3 bullet points summarizing its usage or behavior -->

## Examples
```javascript
// Add your code examples here
```

## Notes
<!-- Add behavior caveats or gotchas -->
<!-- Mention any best practices or conventions -->

## Related

<%*

// Rename the file if needed
if (tp.file.title !== title) {
  await tp.file.rename(title);
}
-%>