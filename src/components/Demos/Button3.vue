<demo>支持 level</demo>
<template>
  <div>
    <div>
      <Button level="main">主要按钮</Button>
      <Button>默认按钮</Button>
      <Button level="danger">危险按钮</Button>
    </div>
    <div>
      <Button theme="link" level="main">主要链接按钮</Button>
      <Button theme="link">默认链接按钮</Button>
      <Button theme="link" level="danger">危险链接按钮</Button>
    </div>
    <div>
      <Button theme="text" level="main">主要文本按钮</Button>
      <Button theme="text">默认文本按钮</Button>
      <Button theme="text" level="danger">危险文本按钮</Button>
    </div>
  </div>
</template>

<script lang="ts">
import Button from '../../lib/Button.vue';

export default {
  components: {Button}
};
</script>