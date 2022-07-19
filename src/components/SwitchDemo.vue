<template>
  <div>
    <Switch v-model:value="move"/>
  </div>
</template>

<script lang="ts">
import Switch from '../lib/Switch.vue';
import {ref} from 'vue';

export default {
  name: 'SwitchDemo',
  components: {Switch},
  setup() {
    const move = ref(false);
    return {move};
  }
};
</script>

<style lang="scss" scoped>

</style>