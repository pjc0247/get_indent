# get_indent


```
gem install get_indent
```

```rb
puts __indent__ # 0
  puts __indent__ # 1
    puts __indent__ # 2
```
```rb
def test
  puts __indent__ # 1
  
  return __indent_of_caller__
end

test # 0
  test # 1
    test # 2
```

asdf
----
```rb
tag("html")
  .tag("div")
    .tag("div")
  .tag("div")
    .tag("div")
      .tag("div")
```
