# Flexholder

Flexholder is a small placeholder library for SCSS designed to speed up writing boilerplate flexbox code when creating flex containers.

It does this by greatly reducing the number of CSS lines it takes to create flex containers and does so in a more semantic way. It also generates far less CSS as placeholder classes are reused each time you use them and no CSS is generated for any placeholder classes that are not used.

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

Flexholder placeholder classes can turn awkward flexbox code into more human readable code.
