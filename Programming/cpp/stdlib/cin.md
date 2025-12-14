---
tags:
  - cpp
  - thing
created:
  "{ date }":
---
>[!definition]
> "character in", gathers a variable from input (waits until provided), and direct writes to the variable (if provided) with the unary operator ```>>```
> > [!important] 
> > cin is buffered similarly to [[cout]], meaning the contents are input are stored in a buffer; ie: 123 456 is in a buffer, reads 123 first ensuring FIFO
> 
> > [!important]
> > each line of input in the input buffer is separated by ```\n``` meaning it's done
> 
> >[!tip] 
> >cpp stdlib cannot gather input without the use of enter

