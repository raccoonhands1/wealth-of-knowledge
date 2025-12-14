---
tags:
  - cpp
  - thing
created:
  "{ date }":
---
>[!definition]
> cout is a method that differs from printf up until a call to stdout and by default periodically flushes based on buffer size (4-8kb defined by OS). its output is first stored in a buffer, then flushed to the output. You can call 
> ```
> std::flush;
> ```


> [!tip]
> to check buffer size you can call 
> ```
> std::cout.rdbuf();
> ```

> [!important] 
> flushing occurs when the buffer is filled, or when cin is called. 
> 
> to untie cin to cout, you can use 
> ```
> std::cin.tie(nullptr)
> ```
>
> to unsync cin and cout and thus not guarantee output/ input order but to make things faster, you can use 
>```
>std::sync_with_stdio(false)
>```
> 

>[!see]
>[[endl]] [[cin]]



