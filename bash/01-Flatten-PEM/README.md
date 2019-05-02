# Flatten a pem file into a single line

## Activity

Complete flatten.sh so it maps [input.pem][1] to output.txt. The comments in the preliminary version of flatten.sh propose a 3-step solution, but it is not a necessary contraint.

[1]:https://support.quovadisglobal.com/kb/a37/what-is-pem-format.aspx

## Usage

```
sh flatten.sh input.pem output.txt
```

## Bonus

Add a third parameter to flatten.sh to specify the delimiter that's not necessarily a newline character, for example:

```
sh flatten.sh input.pem output.txt "\r\n"
```

In this example we extend the intended functionality to pem files that use [Windows line endings "\r\n"][2].

[2]:http://www.cs.toronto.edu/~krueger/csc209h/tut/line-endings.html
