<template>
  <div>
    <h1>Button组件示例</h1>
    <Demo :component="Button1"/>
    <Demo :component="Button2"/>
    <Demo :component="Button3"/>
    <Demo :component="Button4"/>
    <Demo :component="Button5"/>
  </div>
</template>

<script lang="ts">
import Demo from './Demo.vue';
import Button1 from './Demos/Button1.vue';
import Button2 from './Demos/Button2.vue';
import Button3 from './Demos/Button3.vue';
import Button4 from './Demos/Button4.vue';
import Button5 from './Demos/Button5.vue';

export default {
  name: 'ButtonDemo',
  components: {Demo},
  setup() {
    return {Button1, Button2, Button3, Button4, Button5};
  }
};
</script>
