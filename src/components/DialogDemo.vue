<template>
  <div>
    <h1>Dialog示例</h1>
    <Demo :component="Dialog1"/>
    <Demo :component="Dialog2"/>
  </div>
</template>

<script lang="ts">
import Demo from './Demo.vue';
import Dialog1 from './Demos/Dialog1.vue';
import Dialog2 from './Demos/Dialog2.vue';

export default {
  name: 'DialogDemo',
  components: {Demo},
  setup() {
    return {Dialog1, Dialog2};
  }
};
</script>
