# ReferenceCycleDemo-iOS

Here is a demonstration about how the reference cycle will happen and how to resolve it in an iOS project.

Memory management for a programmer is usually not trivial. Thanks to Automatic Reference Counting (ARC), memory management is made easy for iOS developers. It just works most of time. However, reference cycle is very tricky, and I have even seen many experienced developers made such mistakes. 

You can read Swift's official document about this topic, [Automatic Reference Counting](https://docs.swift.org/swift-book/documentation/the-swift-programming-language/automaticreferencecounting/). The official documentation mainly talks about the basic reference cycle between two objects A<->B. What I am going to show here is between 3 or 4 objects, which is more difficult to spot. 
