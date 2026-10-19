<script setup lang="ts">
import Pills from '@/components/Pills.vue'
import Searchbar from '@/components/Searchbar.vue'
import { arcanas, levels, sortierung } from '@/types/filter'
</script>

<template>
  <div class="container">
    <Pills title="Arcana" :options="arcanas" />
    <Pills title="Level" :options="levels" />
    <Pills title="Range" :options="levels" />
    <Pills title="Sortierung" :options="sortierung" />
  </div>
  <Searchbar class="searchbar" />
</template>

<style scoped>
.container {
  display: flex;
  gap: 1vb;
  margin-left: 3vb;
}
.searchbar {
  margin-left: 3vb;
  margin-top: 1vb;
}
</style>
