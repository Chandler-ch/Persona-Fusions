<script setup lang="ts">
import NavLink from './NavLink.vue'
</script>
<template>
  <div class="container">
    <NavLink content="FUSIONEN" />
    <NavLink content="PERSONAS" />
    <NavLink content="ADD" />
    <NavLink content="LEGENDE" />
  </div>
  <hr />
</template>
<style scoped>
.container {
  display: flex;
  justify-content: space-around;
}
</style>
