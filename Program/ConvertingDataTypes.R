# Converting data types : 

# converting numeric to integer
num1<-10
class(num1)
num1<-as.integer(num1);
class(num1)

# converting integer to numeric
num2<-as.numeric(10L)
class(num2)

# converting logical to numeric
num<-as.numeric(TRUE)
class(num)
print(num)

# converting complex to numeric
num3<-as.numeric(2+5i);
print(num3)
class(num3)

# converting character to numeric
num4<-as.numeric("123456")
class(num4)
print(num4)

# converting character to numeric
num5<-as.numeric("abc12@")
class(num5)
print(num5) #-->It will print NA because it contain symbol and char


# converting numeric to integer
int1<-as.integer(12)
class(int1)
print(int1)

# converting complex to integer
int2<-as.integer(2+3i)
class(int2)
print(int2)

# converting logical to integer
int3<-as.integer(TRUE)
class(int3)
print(int3)

# converting character to integer
int4<-as.integer("1234");
class(int4)
print(int4)


# converting character to integer
int5<-as.integer("abdjd@1")
class(int5)
print(int5) #-->It will print NA because it contain symbol and char


# converting numeric to complex

comp1<-as.complex(12);
class(comp1)
print(comp1)

# converting integer to complex
comp1<-as.complex(12L);
class(comp1)
print(comp1)

# converting logical to complex
comp1<-as.complex(FALSE);
class(comp1)
print(comp1)

# converting character to complex
comp1<-as.complex("123");
class(comp1)
print(comp1)

# converting character to complex
comp1<-as.complex("123df@");
class(comp1)
print(comp1)


# converting numeric to logical
log1<-as.logical(12)
class(log1)
print(log1)

# converting integer to logical
log1<-as.logical(12L)
class(log1)
print(log1)

# converting character to logical
log1<-as.logical("123")
class(log1)
print(log1)

# converting character to logical
log1<-as.logical("123sw2@")
class(log1)
print(log1)

# converting complex to logical
log1<-as.logical(12 + 9i)
class(log1)
print(log1)

# converting numeric to logical
log1<-as.logical(0)
class(log1)
print(log1)

# converting numeric to character
char1<-as.character(12)
class(char1)
print(char1)

# converting integer to character
char1<-as.character(12L)
class(char1)
print(char1)

# converting logical to character
char1<-as.character(TRUE)
class(char1)
print(char1)

# converting complex to character
char1<-as.character(56+9i)
class(char1)
print(char1)



