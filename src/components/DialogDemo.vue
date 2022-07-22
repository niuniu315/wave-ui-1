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
  <h1>示例2</h1>
  <Button @click="showDialog">点击显示</Button>
</template>

<script lang="ts">
import Dialog from '../lib/Dialog.vue';
import Button from '../lib/Button.vue';
import {h, ref} from 'vue';
import {openDialog} from '../lib/openDialog';

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
    const showDialog = () => {
      openDialog({
        title: h('strong', {}, '标题'),
        content: '你好',
        closeOnClickOverlay: true,
        ok() {
          console.log('ok');
        },
        cancel() {
          console.log('cancel');
        },
      });
    };
    return {x, toggle, f1, f2, showDialog};
  },
};
</script>

<style lang="scss" scoped>

</style>