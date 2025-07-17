---
languageOrFramework: AssertJ
topicName: String Parameter Validation
status: exploring
date: 2025-07-09
publish: true
tags:
  - assertj
  - unit-testing
  - arrange-act-assert
  - tag-trek
---

# Overview
 This is a way to use AssertJ assertion library to support JUnit tests that verify `String` method parameters that can't be `null`, empty or blank. A best practice in this situation is to throw a:
    - `NullPointerException` when the reference is `null`
    - `IllegalArgumentException` when the value is an empty or blank string

The Apache Commons Lang utility API has a `Validate` class that does just that, but how to test it?

See [Application Design Input Validation Strategies](Application%20Design%20Input%20Validation%20Strategies.md) for why the `Validate` class fits here.

## Example
Given a service class that creates an `Artist` instance, let's write the tests needed to verify 
the request is in a valid state before processing it.

### Implementation

Two unit tests are needed for this scenario:
- `Null` inputs
- Empty or blank string inputs

Using a JUnit `@ParameterizedTest` and the AssertJ "catch throwable" paradigm, we can easily verify the correct exceptions are thrown and that they contain the correct validation message.

#### Null Condition

```Java
@Test  
@DisplayName("Verify a NullPointerException is thrown when the artist to create is null")  
void testCreate1() {  
  
  // Arrange.  
  final String expected = "The artist can't be null";  
  
  // Act.  
  final Throwable actual = Assertions.catchThrowable(() -> this.uut.create(null));    
  // Assert.  
  Assertions.assertThat(actual)  
      .as("A NullPointerException should have been thrown when the artist to create was null")  
      .isInstanceOf(NullPointerException.class)  
      .hasMessageContaining(expected);  
} 
```

#### Empty/Blank String Conditions

```java
@ParameterizedTest  
@ValueSource(strings = {"", " "})  
@DisplayName("Verify an IllegalArgumentException is thrown when the artist name is null or empty")  
void testCreate2(final String testArtistName) {  
  
  // Arrange.  
  this.testArtist = ArtistMother.builder().withName(testArtistName).buildArtist();  
  final String expected = "The artist name can't be null, empty, or blank";  
  
  // Act.  
  final Throwable actual = Assertions.catchThrowable(() -> this.uut.create(this.testArtist));  
  
  // Assert.  
  Assertions.assertThat(actual)  
      .as("An IllegalArgumentException should have been thrown when the artist name was null or empty")  
      .isInstanceOf(IllegalArgumentException.class)  
      .hasMessageContaining(expected);  
}
```

The approach AssertJ uses to catch the exception for the assertions is described [here](AssertJ%20Assert%20Thrown%20Exceptions.md).

#### Null Condition Variation 
If you just love JUnit testing annotations, you can combine `@ParameterizedTest` and `@NullSource` to provide the `null` test value:

```java
@ParameterizedTest
@NullSource
@DisplayName("Verify a NullPointerException is thrown when the artist name is null")  
void testCreate1(final String testArtistName) {  
  
  // Arrange.  
  final String expected = "The artist can't be null";  
  
  // Act.  
  final Throwable actual = Assertions.catchThrowable(() -> this.uut.create(testArtistName));    
  // Assert.  
  Assertions.assertThat(actual)  
      .as("A NullPointerException should have been thrown when the artist to create was null")  
      .isInstanceOf(NullPointerException.class)  
      .hasMessageContaining(expected);  
}  
```

Note: `@NullSource` must be used with `@ParameterizedTest`.