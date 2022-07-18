<template>
  <router-view/>
</template>

<script lang="ts">
import {provide, ref} from 'vue';
import {router} from './router';

export default {
  name: 'App',
  setup(){
    //获取浏览器当前的页面宽度
    const width = document.documentElement.clientWidth
    const asideVisible = ref(width <= 500 ? false : true)
    // 在父组件中标记子组件可访问的asideVisible函数
    provide('asideVisible',asideVisible)
    //不管什么路由切换都关闭asideVisible样式
    router.afterEach(() => {
      if (width <= 500) {
        asideVisible.value = false
      }
    })
  }
}
</script>
