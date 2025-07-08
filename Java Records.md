---
languageOrFramework: Java
version:
topicName: Records
status: exploring
date: 2025-07-05
publish: true
tags:
 - v14
 - Certification
  - tag-trek
---

# Java Records
## 🧩 Record Declaration – Overview

- Defines simple class for value aggregates
- Syntax: `{modifiers} record Name(params) { body }`
- Implicitly `final`; can't be `abstract`, `sealed`
- Nested records → implicitly `static`
- Can't be inner class members
- Only one access modifier allowed
- Superclass always `java.lang.Record`
- Special serialization via canonical constructor

## 🧾 Record Header
- Parentheses list components: `(type name, …)`
- Each component → `private final` field + accessor
- May annotate component
- Only one varargs component, at end
- Illegal names: `clone`, `finalize`, `wait`, etc.
- Duplicate names → compile-time error
- Component type = `UnannType` or array (for varargs)

## 🧱 Record Body
- Can include:
    - Static initializers
    - Canonical constructors (standard or compact)
    - Methods, static fields
- Forbidden:
    - Non-static fields
    - Native methods
    - Instance initializers

## 🔧 Record Members
- Implicit members per component:
    - `private final` field
    - `public` accessor method (same name)
- Accessor rules:
    - Must match component type
    - Not generic, not static
    - No `throws` clause
- Implicit `equals`, `hashCode`, `toString` if not declared

## 🏗️ Canonical Constructor

### 🛠️ Explicit Constructor
- Matches component names/types
- Not generic
- No `throws`, no explicit `this(...)`
- Must match record class visibility
- Can differ in annotations from component

### ⚡ Compact Constructor
- Implicit params from component list
- No return or `this(...)`
- No assignment to component fields
- Compiler sets fields automatically
- Use case: validate/normalize only
- Only one allowed
- Conflicts with another canonical constructor → error

### 🔁 Implicit Constructor
- Exists if none declared
- Params from components
- Same access level as record class
- No `throws`
- Initializes fields in declaration order

---
## Notes
- Record classes can implement interfaces
- Can inherit default methods
- All members follow regular class rules
- Record not meant for behavior-heavy classes
- Clean, immutable data carriers