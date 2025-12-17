---
tags:
  - cpp
  - thing
  - cpp20
  - cpp23
created:
  "{ date }":
---
>[!definition]
>  a span is a method for referencing array OR vector data (good for generics) and doesn't need a size to be specified.

> [!example] 
> this snippet is only valid with span```run-cpp

```run-cpp
#include <span>
#include <vector>
#include <iostream>

void printArrayOrVector(std::span<const int> arrayOrVect) {
	for(auto& i : arrayOrVect) {
		std::cout << i << '\n';
	}
}

int main() {
	std::vector<int> vect = {1,2,3,4,5};
	int myArray[5] = {6,7,8,9,10};
	printArrayOrVector(vect);
	printArrayOrVector(myArray);
	return 0;
}
```

```run-cpp
#include <iostream>

int main() {
    std::cout << "Hello from Cling!" << std::endl;
}
```
