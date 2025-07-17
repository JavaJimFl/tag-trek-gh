---
languageOrFramework: Spring
topicName: REST Controller
status: exploring
date: 2025-07-06
publish: true
tags:
  - spring
  - tag-trek
---
# Spring REST Controller
- **Define Controller**
     - Annotate class with `@RestController`
    - `@RestController` combination of `@Controller` + `@ResponseBody`
- **Declare Endpoint**
    - Use `@GetMapping("/greeting")`
    - Handles HTTP GET requests
    - Other verbs: `@PostMapping`, `@PutMapping`, etc.
    - Can use `@RequestMapping(method=`RequestMethod.[VERB])` as alternate
- **Handle Query Param**
    - Use `@RequestParam`
    - @RequestParam(value = "name", defaultValue = "theDefaultValue")
        - Maps query `name` to method param
        - Use `defaultValue` = `theDefaultValue` if missing
- **Generate Response**
    - Use `AtomicLong` for id counter
    - Return new `Greeting` object (id, message)
- **Response Behavior**
     - Bypasses view rendering
    - Returns object directly
    - Spring converts object to JSON
- **Serialization**
    - Auto-converted via Jackson
    - Jackson present on classpath
    - Spring uses `MappingJackson2HttpMessageConverter`


```java
package com.example.restservice;

import java.util.concurrent.atomic.AtomicLong;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class GreetingController {

	private static final String template = "Hello, %s!";
	private final AtomicLong counter = new AtomicLong();

	@GetMapping("/greeting")
	public Greeting greeting(@RequestParam(value = "name", defaultValue = "World") String name) {
		return new Greeting(counter.incrementAndGet(), String.format(template, name));
	}
}
```