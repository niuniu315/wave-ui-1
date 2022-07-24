<demo>支持显示加载中</demo>
<template>
  <div>
    <Button loading>加载中</Button>
    <Button :loading="isLoading" @click="onClick">点击加载</Button>
  </div>
</template>

<script lang="ts">
import Button from '../../lib/Button.vue';
import {ref} from 'vue';

export default {
  components: {Button},
  setup() {
    const isLoading = ref(false);
    const onClick = () => {
      isLoading.value = !isLoading.value;
    };
    return {isLoading, onClick};
  }
};
</script>