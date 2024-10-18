# Phần 1: Lý thuyết

Hiểu và triển khai điều hướng giữa các màn hình.

### 1. Điều hướng với Navigator
Flutter cung cấp widget Navigator để quản lý và thao tác với stack khi thực hiện điều hướng các màn hình.

Navigator cung cấp 2 loại function:
```
Navigator.pushNamed(context, string)

Navigator.of(context).pushNamed(string)
```

#### push:
Thực hiện push widget vào stack của navigator, mỗi lần gọi hàm là một lần push widget vào stack
 - Direct navigation: `push(context, route)`
 - Static navigation: `pushNamed(context, string)`, trong đó `string` đại diện cho route tới màn hình

#### pop:
Thực hiện pop widget ở trên cùng của stack navigator, mỗi lần gọi là một lần pop cho đến khi stack hết widget.

`Navigator.pop(context);`

#### Một số hàm push khác
 - `pushReplacement / pushReplacementNamed`: Thực hiện push widget vào stack và pop widget hiện tại của stack
 - `popAndPushNamed`: Thực hiện pop widget hiện tại của stack và push widget mới.
 - `popUntil(bool)`: Hàm này dễ hiểu rồi, pop widget trong stack cho đến khi `bool == true`
 - `canPop`: return `false` nếu là widget đầu tiên trong navigator stack, hoặc `stack size = 1`. Nếu `stack size > 1` thì return true.


### 2. Điều hướng có tham số
- Truyền dữ liệu từ A đến B:
  Các hàm push có hỗ trợ optional param arguments đều hỗ trợ việc truyền data.
  
  Ví dụ: `push(context, route, arguments)` hoặc `pushNamed(context, string, arguments)`

- Truyền dữ liệu từ B về A: có thể sử dụng `pop(context, result)` với param `result` là dữ liệu cần trả về. Cần chú ý hàm trả về dữ liệu kiểu `Future`.
```
  class B {
      Navigator.pop(context, result);
  }
  
  class A {
      final result = await Navigator.push(B)
  }
```


# Phần 2: Thực hành

Ứng dụng với 2-3 màn hình điều hướng qua lại, ví dụ danh sách sản phẩm và chi tiết sản phẩm.
