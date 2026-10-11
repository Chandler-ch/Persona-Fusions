<script setup lang="ts">
import { Select, Tag } from 'primevue'
const props = defineProps<{
  title: string
  options: string[] | number[]
}>()
let isOpen = false
</script>
<template>
  <Tag :value="props.title" rounded>
    <Select v-model="isOpen" :options="options" :placeholder="props.title" />
  </Tag>
</template>
<style scoped></style>
