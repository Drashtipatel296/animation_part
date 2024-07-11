# animation_part

## Drag & Drop Functionality
Drag and Drop functionality in Flutter allows users to move widgets (such as images, text, or other UI components) from one location to another within the app interface. This feature can be useful for creating interactive user experiences, such as rearranging list items, implementing custom drag-and-drop actions, or creating games and design tools. 

### Implementing Drag & Drop in Flutter

Here’s a basic guide to implementing drag and drop in Flutter:

1. **Using Draggable and DragTarget Widgets:**
   - `Draggable`: Makes a widget draggable.
   - `DragTarget`: Defines a target area where draggable widgets can be dropped.

2. **Basic Example:**

```dart
    body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Draggable<Color>(
              data: Colors.blue,
              child: Container(
                width: 100,
                height: 100,
                color: Colors.blue,
                child: Center(
                  child: Text(
                    'Drag me',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              feedback: Container(
                width: 100,
                height: 100,
                color: Colors.blue.withOpacity(0.5),
                child: Center(
                  child: Text(
                    'Dragging',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              childWhenDragging: Container(
                width: 100,
                height: 100,
                color: Colors.grey,
                child: Center(
                  child: Text(
                    'Drag me',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            DragTarget<Color>(
              onAccept: (color) {
                setState(() {
                  caughtColor = color;
                });
              },
              builder: (context, candidateData, rejectedData) {
                return Container(
                  width: 200,
                  height: 200,
                  color: candidateData.isEmpty ? caughtColor : Colors.green,
                  child: Center(
                    child: Text(
                      'Drop here',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
```

### Key Points:

- **Draggable Widget:** 
  - `data`: The data you want to pass when the draggable widget is dropped.
  - `child`: The widget that will be displayed when not dragging.
  - `feedback`: The widget that will be displayed while dragging.
  - `childWhenDragging`: The widget that will replace the child widget during the drag operation.

- **DragTarget Widget:**
  - `onAccept`: A callback function that is called when the draggable widget is dropped on the target.
  - `builder`: A function that builds the target area, providing the current state of the target.

### Customizing and Extending:
You can customize the appearance and behavior of the draggable and drag target widgets to fit your app’s needs. This includes handling different types of data, changing the visual feedback during dragging, and defining complex drop targets.

### ScreenShoets

<p align='center'>
  <img src='https://github.com/Drashtipatel296/animation_part/assets/143180636/af490551-a5c5-4144-9926-41b0189d15c5' width=240>
  <img src='https://github.com/Drashtipatel296/animation_part/assets/143180636/d6c49106-0e31-4a64-94d6-fb3d9893764c' width=240>
</p>

### video

https://github.com/Drashtipatel296/animation_part/assets/143180636/83f8ba16-306a-4736-aff8-2afb5418350a


# Hero Widget in Flutter

The `Hero` widget in Flutter is used to create a smooth, animated transition between two routes (pages). It is particularly useful for creating a seamless user experience when navigating between different parts of your app.

## Code Sample

```dart
child: Hero(
                tag: 'box',
                child: Container(
                  height: 350,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black45,
                          offset: Offset(0, 12),
                          blurRadius: 15,
                        )
                      ]),

```
<div align="center">
<img src="https://github.com/Drashtipatel296/animation_part/assets/143180636/d4fc4881-f94f-4f58-9393-ce30cff3216e" height="500px" hspace=20></img>
<img src="https://github.com/Drashtipatel296/animation_part/assets/143180636/d37ffacd-575f-4771-bccc-007785988aa9" height="500px" hspace=20></img>
  <video src="">
</div>

https://github.com/Drashtipatel296/animation_part/assets/143180636/6d712557-c4e2-4129-8b59-1675dc28d894

# Animation Widgets

### Video

https://github.com/Drashtipatel296/animation_part/assets/143180636/8c8d6dc2-459a-4a29-9934-9b7c4b4712e8



    













