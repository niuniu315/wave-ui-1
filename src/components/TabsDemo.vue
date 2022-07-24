<template>
  <div>Tabs示例
    <h1>示例一</h1>
    <Demo :component="Tabs1"/>
  </div>
</template>

<script lang="ts">
import Demo from './Demo.vue';
import Tabs1 from './Demos/Tabs1.vue';

export default {
  name: 'TabsDemo',
  components: {Demo},
  setup() {
    return {Tabs1};
  }
};
</script>