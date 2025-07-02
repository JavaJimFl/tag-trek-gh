---
type: daily
project: tag-trek
date: <% tp.date.now("YYYY-MM-DD") %>
publish: true
---
<%*
const moment = window.moment;

// read the MOC file’s front-matter
console.log("start")
const moc = app.vault.getAbstractFileByPath("Project Tag-Trek.md");
console.log(moc);
const fm  = await app.metadataCache.getFileCache(moc).frontmatter;
console.log(fm);
const start = moment(fm.start_date, "YYYY-MM-DD");

// compute inclusive day-index (start = Day 1)
const today = tp.date.now("YYYY-MM-DD");
const now  = moment(today, "YYYY-MM-DD");
const dayNum = now.diff(start, "days") + 1;

const dailySummaryFileName = "TagTrek Bootcamp, Day " + dayNum +  "- (" + today + ")  Summary";
await tp.file.rename(dailySummaryFileName);
-%>
# TagTrek Bootcamp Day <% dayNum %> – <% tp.date.now("YYYY-MM-DD") %>

## 🎯 Goals
- [ ] 🐣 UI  :  
- [ ] 🌳 Middleware :
- [ ] ⚙️ DevOps  : 

## 🐣 UI Track
Notes | Snippets | Todos…

## 🌳 Middleware Track
Notes | Snippets | Todos…

## ⚙️ DevOps Track
Notes | Snippets | Todos…

## 🧩 Features touched
- [[Pattern-matching switch]]
- [[Text blocks]]

## 🔍 Insights / Questions
- 

## 🚀 Next actions
- [ ]