<template>
  <div>Button 示例</div>
  <h1>默认按钮</h1>
  <div>
    <Button>按钮</Button>
    <Button theme="button">按钮</Button>
    <Button theme="link">按钮</Button>
    <Button theme="text">按钮</Button>
  </div>
  <h1>大小按钮</h1>
  <div>
    <div>
      <Button size="big">Big</Button>
      <Button>Normal</Button>
      <Button size="small">Small</Button>
    </div>
    <div>
      <Button theme="link" size="big">Big Link</Button>
      <Button theme="link">Normal Link</Button>
      <Button theme="link" size="small">Small Link</Button>
    </div>
    <div>
      <Button theme="text" size="big">Big Text</Button>
      <Button theme="text">Normal Text</Button>
      <Button theme="text" size="small">Small Text</Button>
    </div>
  </div>
  <h1>level按钮</h1>
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
  <h1>禁用按钮</h1>
  <div>
    <Button disabled>禁用按钮</Button>
    <Button theme="link" disabled>禁用链接按钮</Button>
    <Button theme="text" disabled>禁用按钮</Button>
  </div>
  <div>
    <Button level="main" disabled>主要按钮</Button>
    <Button disabled>默认按钮</Button>
    <Button level="danger" disabled>危险按钮</Button>
  </div>
  <h1>加载按钮</h1>
  <div>
    <Button loading>加载中</Button>
  </div>
</template>

<script lang="ts">
import Button from '../lib/Button.vue';

export default {
  name: 'ButtonDemo',
  components: {Button},
};
</script>

<style lang="scss">

</style>