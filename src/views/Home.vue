<template>
  <div>
    <Topnav/>
  </div>
  <div class="header">
    <div class="inner-header flex">
      <div>
        <h1 class="bolang">波浪UI</h1>
        <p class="actions">
          <a href="https://github.com/niuniu315/niu-ul-1">GitHub</a>
          <router-link to="/doc">开始</router-link>
        </p>
      </div>
      <div>
        <div>
          <h5>基于Vue 3</h5>
          <p>使用Vue 3 Composition API</p>
        </div>
        <div>
          <h5>基于TypeScript</h5>
          <p>源代码采用TypeScript书写（非严格检查）</p>
        </div>
        <div>
          <h5>代码易读</h5>
          <p>每个组件的源代码都极其简洁</p>
        </div>
      </div>
    </div>
    <div>
      <svg class="waves" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"
           viewBox="0 24 150 28" preserveAspectRatio="none" shape-rendering="auto">
        <defs>
          <path id="gentle-wave" d="M-160 44c30 0 58-18 88-18s 58 18 88 18 58-18 88-18 58 18 88 18 v44h-352z"/>
        </defs>
        <g class="parallax">
          <use xlink:href="#gentle-wave" x="48" y="0" fill="rgba(255,255,255,0.7"/>
          <use xlink:href="#gentle-wave" x="48" y="3" fill="rgba(255,255,255,0.5)"/>
          <use xlink:href="#gentle-wave" x="48" y="5" fill="rgba(255,255,255,0.3)"/>
          <use xlink:href="#gentle-wave" x="48" y="7" fill="#fff"/>
        </g>
      </svg>
    </div>
  </div>
  <div class="content flex">
    <p>By.Goodkatz | Free to use </p>
  </div>
</template>

<script lang="ts">
import Topnav from '../components/Topnav.vue';

export default {
  name: 'Home',
  components: {Topnav}
};
</script>

<style lang="scss" scoped>
.bolang {
  font-size: 30px;
  font-weight: bold;
}

.actions {
  margin-top: 50px;
  width: 250px;
  display: flex;
  justify-content: space-between;

  > a {
    font-size: 20px;
    background: rgba(64, 85, 185);
    color: rgba(10, 158, 192);
    padding: 8px 16px;
    border-radius: 25px;
    display: inline-block;
  }
}
</style>