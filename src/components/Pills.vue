<script setup lang="ts">
import { Button, Select, Tag } from 'primevue'
const props = defineProps<{
  title: string
  options: string[] | number[]
}>()
let test = false
function method() {
  test = true
}
</script>
<template>
  <Tag @click="method" class="pill" :value="props.title" rounded>
    <Select v-model="test" :options="options" :placeholder="props.title" />
  </Tag>
</template>
<style scoped>
.pill {
  font-size: 1.5vw;
}
</style>
