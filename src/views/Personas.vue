<script setup lang="ts">
import Pills from '@/components/Pills.vue'
import { arcanas, levels, sortierung } from '@/types/filter'
</script>

<template>
  <div class="container">
    <Pills title="Arcana" :options="arcanas" />
    <Pills title="Level" :options="levels" />
    <Pills title="Range" :options="levels" />
    <Pills title="Sortierung" :options="sortierung" />
  </div>
</template>

<style scoped>
.container {
  display: flex;
  gap: 1vb;
  margin-left: 3vb;
}
</style>
