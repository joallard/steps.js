# steps.js
Mutiple-steps process (such as for a form) in vanilla Javascript

## Usage
jQuery is a prerequisite for the moment.

```html
<div class="steps">
  <div class="step">
    <h2>Step Zero</h2>
  </div>
  
  <div class="step">
    <h2>Step One</h2>
  </div>
  
  <div class="actions">
    <button type="button" data-prev>Prev</button>
    <button type="button" data-next>Next</button>
  </div>
</div>
```

Steps will look for `.step` children of the element. Just initialize it so:

```coffee
# .coffee
new Steps $ ".steps"
```
