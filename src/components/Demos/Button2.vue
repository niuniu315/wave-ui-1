<demo>支持 size</demo>
<template>
  <div>
    <div>
      <Button size="big">Big Button</Button>
      <Button>Normal Button</Button>
      <Button size="small">Small Button</Button>
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
</template>

<script lang="ts">
import Button from '../../lib/Button.vue';

export default {
  components: {Button}
};
</script>