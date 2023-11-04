


1. biz logic    (controller -> ctl)
2. ui           (view -> screen -> scr)
3. helper, util (helper -> widget)


ui -> textField, submitBtn, showText




textField, 
submitBtn, 
showText
 |
 | setState()
 V
rebuild all widgets in that screen


textField, 
submitBtn, 
Obx(showText)
 |
 | change the state
 V
rebuild only showTextWidget


Todo list app
1. add todo list (text)
2. delete todo list
3. update(edit) todo list
4. optional: add text with icon

List<String> todos =[];

todos.add("hello");
