<script setup lang="ts">
import { Tag } from 'primevue'
const props = defineProps<{
  content: string
  //   method: any
}>()
</script>
<template>
  <Tag class="pill" :value="props.content" rounded>{{ content }}</Tag>
</template>
<style scoped>
.pill {
  font-size: 1.5vw;
}
</style>
