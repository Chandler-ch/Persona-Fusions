<script setup lang="ts">
const props = defineProps<{
  content: string
}>()
</script>
<template>
  <span class="title">{{ content }}</span>
</template>
<style scoped>
.title {
  font-size: 3vw;
}
</style>
