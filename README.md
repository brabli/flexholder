# Flexholder

---

## What is flexholder?

Flexholder is a placeholder library for SCSS designed to speed up writing boilerplate flexbox code when creating flex containers.

It does this by greatly reducing the number of CSS lines it takes to create flex containers and does so in a more semantic way that is easier to read and understand. It also aims to generate less CSS by making great use of reusable placeholder classes.

### Plain CSS

```css
.flex-container {
    display: flex;
    flex-direction: column;
    justify-content: flex-start;
    align-items: flex-end;
}
```

### With Flexholder
```scss
.flex-container {
    @extend %flex-col-top-right;
}
```

As you can see, even with this simple example it is much easier to tell that what the will happen to the flex items with the flexholder class (they will be in a column placed in the top right of the container).

## How to Use

---

## Direction

You start with one of four base classes to set the `flex-direction` of the container.

```scss
@extend %flex-row;
@extend %flex-col;
@extend %flex-rowrev;
@extend %flex-colrev;
```

The default value for the cross and main axis' are both `center`, meaning you can quickly centre an item or items within a container by simply extending one of these classes!

## Alignment Pairs

You can now set the behaviour of the `cross` and / or the `main` axis of your flex container.

Depending on the direction of your container you have a slightly different set of `alignment pairs` choose from.

You may only use one per column, but you may put them in any order and do not have to use both.

### Row Alignment Pairs
| MAIN               | CROSS       |
| ------------------ | ----------- |
| left               | top         |
| right              | bottom      |
| between / spread   | baseline    |
| around / gap       | stretch     |
| evenly / even      |             |

### Column Alignment Pairs
| MAIN               | CROSS       |
| ------------------ | ----------- |
| top                | left        |
| bottom             | right       |
| between / spread   | baseline    |
| around / gap       | stretch     |
| evenly / even      |             |


### Examples of valid combinations
```scss
@extend %flex-row-left-bottom;
@extend %flex-row-stretch;
@extend %flex-col-top-gap;
@extend %flex-rowrev-evenly-top;
```

### Examples of invalid combinations
```scss
# Both use properties from the same column!
@extend %flex-row-left-right;
@extend %flex-col-even-around;
```


### Multiple Names
Some rules have more than one name, one which is closer to the actual CSS property name and one which is more explanitory as to what the property is doing.

| RULE                             | NAME        | ALTERNATE NAME
| -------------------------------- | ----------- | ----------------
| justify-content: space-between;  | between     | spread
| justify-content: space-around;   | around      | gap
| justify-content: space-evenly;   | evenly      | even

`spread` - Spreads the items out as far as they will go.

`gap` - Adds a larger gap between the flex items without spreading them all the way out.

`even` - Adds an even gap everywhere.
