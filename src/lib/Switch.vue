<template>
  <button class="gulu-switch"
          @click="toggle" :class="{'gulu-checked':value}">
    <span class="gulu-switch-span"></span>
  </button>
  <div>{{ value }}</div>
</template>

<script lang="ts">
export default {
  name: 'Switch',
  props: {
    value: Boolean
  },
  setup(props, context) {
    const toggle = () => {
      // (绑定的值，新的值（true）)
      context.emit('update:value', !props.value);
    };
    return {toggle};
  }
};
</script>

<style lang="scss">
$h: 22px;
$h2: $h - 4px;
.gulu-switch {
  height: $h;
  width: $h*2;
  border: none;
  background: #bfbfbf;
  border-radius: 11px;
  position: relative;
}

.gulu-switch-span {
  position: absolute;
  top: 2px;
  left: 2px;
  height: $h2;
  width: $h2;
  background: white;
  border-radius: 11px;
  transition: all 250ms;
}

button.gulu-checked {
  background: #1890ff;
}

button.gulu-checked > .gulu-switch-span {
  left: calc(100% - #{$h2} - 2px);
}

/* 取消默认有的边框线*/
button:focus {
  outline: none;
}

button:active {
  > span {
    width: $h2 + 4px;
  }
}

button.gulu-checked:active {
  > span {
    width: $h2 + 4px;
    margin-left: -4px;
  }
}
</style>