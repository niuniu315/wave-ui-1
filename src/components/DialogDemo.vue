<template>
  <div>Dialog示例</div>
  <h1>示例一</h1>
  <Button @click="toggle">点击显示</Button>
  <Dialog :visible="x"></Dialog>
</template>

<script lang="ts">
import Dialog from '../lib/Dialog.vue';
import Button from '../lib/Button.vue';
import {ref} from 'vue';

export default {
  name: 'DialogDemo',
  components: {Button, Dialog},
  setup() {
    const x = ref(false)
    const toggle = () => {
      x.value = !x.value
    }
    return {x, toggle}
  }
};
</script>

<style lang="scss" scoped>

</style>