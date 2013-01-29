Liquid-Glob
===

A custom tag for the Liquid templating engine (and therefore Jekyll) that allows you to iterate over files in a directory, using a glob pattern (see `Dir.glob`). This snippet barely qualifies for it's own repository but I'm including it for completeness.

Usage
---

If you're using Jekyll you can simply clone this repository into your `_plugins` folder to begin using it, otherwise place it somewhere where it will be read by your application.

A usage example:

```html+jinja
<ul>
  {% glob images/*_slider.jpg %}
    {% for file in files %}
      <li><img src="{{ file }}" /></li>
    {% endfor %}
  {% endglob %}
</ul>
```
