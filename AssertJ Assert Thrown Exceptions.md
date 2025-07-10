---
languageOrFramework: AssertJ
version: undefined
topicName: Assert Thrown Exceptions
status: exploring
date: 2025-07-09
publish: true
tags:
  - assertj
  - unit-testing
  - arrange-act-assert
  - tag-trek

---
# Description
Here is a way to use AssertJ to get a handle to an exception thrown and then assert the type and message.  The [Documentation](https://assertj.github.io/doc/#assertj-core-exception-assertions-bdd-style) contains more assertions.

```java
import org.assertj.core.api.Assertions;
...

@Test  
@DisplayName("Verify a NullPointerException is thrown when the artist to map is null")  
void testFromArtist2() {  
  
  // Arrange.  
  final String expected = "The artist can't be null";  
  
  // Act.  
  final Throwable actual = Assertions.catchThrowable(() -> this.uut.from(null));  
  
  // Assert.  
  Assertions.assertThat(actual)  
      .as("A NullPointerException should have been thrown when the artist to map was null")  
      .isInstanceOf(NullPointerException.class)  
      .hasMessageContaining(expected);  
}
```