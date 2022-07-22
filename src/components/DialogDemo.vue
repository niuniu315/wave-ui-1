<template>
  <div>Dialog示例</div>
  <h1>示例一</h1>
  <Button @click="toggle">点击显示</Button>
  <Dialog v-model:visible="x" :closeOnClickOverlay="true"
          :ok="f1" :cancel="f2">
    <template v-slot:title>
      <strong>可自定义的标题</strong>
    </template>
    <template v-slot:content>
      <div>自定义内容</div>
      <div>自定义内容</div>
    </template>
  </Dialog>
</template>

<script lang="ts">
import Dialog from '../lib/Dialog.vue';
import Button from '../lib/Button.vue';
import {ref} from 'vue';

export default {
  name: 'DialogDemo',
  components: {Button, Dialog},
  setup() {
    const x = ref(false);
    const toggle = () => {
      x.value = !x.value;
    };
    const f1 = () => {
      return false;
    };
    const f2 = () => {};
    return {x, toggle, f1, f2};
  },
};
</script>

<style lang="scss" scoped>

</style>