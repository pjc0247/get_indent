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
  
  return __indent_of_caller
end

test # 0
  test # 1
    test # 2
```
