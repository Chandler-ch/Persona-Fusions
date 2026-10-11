<script setup lang="ts">
import Pills from '@/components/Pills.vue'
</script>

<template>
  <div class="container">
    <Pills content="Arcana" />
    <Pills content="Level" />
    <Pills content="Range" />
    <Pills content="Sortierung" />
  </div>
</template>

<style scoped>
.container {
  display: flex;
  gap: 1vb;
  margin-left: 3vb;
}
</style>
