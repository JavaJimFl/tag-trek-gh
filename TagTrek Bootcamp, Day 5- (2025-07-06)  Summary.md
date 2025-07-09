---
type: daily
project: tag-trek
date: 2025-07-06
publish: true
---
# TagTrek Bootcamp Day 5 – 2025-07-06

## 🎯 Goals
- [ ] 🐣 UI
- [ ] W3C Schools JavaScript Tutorial lessons:
    - [ ] JS Variables 
    - [ ] JS Let
    - [ ] JS Const
    - [ ] JS Operators
    - [ ] JS Arithmetic
- [ ] 🌳 Middleware :
- [ ] ⚙️ DevOps  : 

## 🐣 UI Track
These tasks will be picked up when I have some end-to-end REST endpoint functionality.

## 🌳 Middleware Track
- Spent most of the day on the Spring Boot REST service.   
    - I switched to setting up 'artist' endpoints first instead of 'tracks'
        - This allows 'top-down' modeling, which should be easier
    - Abandoned ID3v2 tags as the business domain model
        - Too tightly coupled to individual codecs
        - Will come up with a model of 'artist', 'album' and 'track' for the app
    - Discovered HATEOAS, began integrating it into the art

## ⚙️ DevOps Track
Notes | Snippets | Todos…

## 🧩 Features touched
```dataview
table date
from ""
where date = date(2025-07-06)
and type != "daily"
and contains(tags, "tag-trek")
sort date desc
```

## 🔍 Insights / Questions
- 

## 🚀 Next actions
- [ ]

