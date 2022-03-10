[Back to the main page](../index.md)

# Comparing My Markdown Parse to the Instructor's
To efficiently compare the two and test that they were both printing things in the same format, I wrote a short [script](lab_report5.sh) that uses diff to compare the results of each. 
![script](images/script.png)
Note: I also had to slightly modify the output of the instructor's ```markdown-parse``` but I did not change the functionality in any way.

## [Test 194](194.md)
```
[Foo*bar\]]:my_(url) 'title (with parens)'

[Foo*bar\]]
```

### The corresponding lines in ```differences.txt```
```
106c106
< {test-files/194.md=[]}
---
> {test-files/194.md=[url]}
```
My parser outputs no links for this file, while the instructor's parser outputs the links as ```url```

However, if you look at the actual markdown build, the correct link is ```my_(url)```. I do not know why, but I think part of it is because of the escape character ```\``` in the link to add an extra bracket, as well as the use of the ```:``` to define different URL behavior than what we know. I do not know what exactly makes this a valid link, but I think it is similar to definining a list in markdown.

## [Test 577](577.md)
```
![foo](train.jpg)
```

### The corresponding lines in ```differences.txt```
```
534c531
< {test-files/577.md=[]}
---
> {test-files/577.md=[train.jpg]}
```
My code correctly does not output the image link, while the instructor's code does. This is a simple fix which involves checking if there is an exclamation point ```!``` before the first opening square bracket.