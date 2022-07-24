<demo>常规使用</demo>
<template>
  <h1>示例一</h1>
  <Button @click="toggle">点击显示</Button>
  <Dialog v-model:visible="x" :closeOnClickOverlay="true"
          :ok="f1" :cancel="f2">
    <template v-slot:title>
      <strong>可自定义的标题</strong>
    </template>
    <template v-slot:content>
      <div>你瞅啥</div>
      <div>瞅你咋地</div>
    </template>
  </Dialog>
</template>

<script lang="ts">
import Dialog from '../../lib/Dialog.vue';
import Button from '../../lib/Button.vue';
import {ref} from 'vue';

export default {
  name: 'DialogDemo',
  components: {Button, Dialog},
  setup() {
    const x = ref(false);
    const toggle = () => {x.value = !x.value;};
    const f1 = () => {return false;};
    const f2 = () => {};
    return {x, toggle, f1, f2};
  },
};
</script>