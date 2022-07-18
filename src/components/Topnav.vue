<template>
  <div class="topnav">
    <div class="logo">LOGO</div>
    <ul class="menu">
      <li>菜单1</li>
      <li>菜单2</li>
    </ul>
    <span class="toggleAside" @click="toggleMenu"></span>
  </div>
</template>

<script lang="ts">
import {inject, Ref} from 'vue';

// asideVisible侧边栏显示
export default {
  name: 'Topnav',
  setup() {
    // 用inject获取provide标记的函数asideVisible
    // 通过点击toggleMenu  asideVisible.value = false Doc组件里asideVisible元素不显示
    const asideVisible = inject<Ref<boolean>>('asideVisible');
    const toggleMenu = () => {
      asideVisible.value = !asideVisible.value;
    };
    return {toggleMenu};
  }
};
</script>

<style lang="scss" scoped>
.topnav {
  background: pink;
  display: flex;
  padding: 16px;
  z-index: 10;
  justify-content: center;
  align-items: center;
  position: fixed;
  top: 0;
  left: 0;
  width: 100%;

  > .logo {
    max-width: 6em;
    margin-right: auto;
  }

  > .menu {
    display: flex;
    white-space: nowrap;
    flex-wrap: nowrap;

    > li {
      margin: 0 1em;
    }
  }

  > .toggleAside {
    width: 24px;
    height: 24px;
    background: red;
    position: absolute;
    left: 16px;
    top: 50%;
    transform: translateY(-50%);
    display: none;
  }

  @media(max-width: 500px) {
    > .menu {
      display: none;
    }
    > .logo {
      margin: 0 auto;
    }
    > .toggleAside {
      display: inline-block;
    }
  }
}
</style>