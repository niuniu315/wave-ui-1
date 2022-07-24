<demo>支持 disabled</demo>
<template>
  <div>
    <Button level="main" disabled>主要按钮</Button>
    <Button disabled>默认按钮</Button>
    <Button level="danger" disabled>危险按钮</Button>
  </div>
</template>

<script lang="ts">
import Button from '../../lib/Button.vue';

export default {
  components: {Button}
};
</script>