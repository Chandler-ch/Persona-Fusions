<script setup lang="ts">
import { Button, Select, Tag } from 'primevue'
const props = defineProps<{
  content: string
  //   method:
}>()
let test = false
function method() {
  test = true
}
const somethings = ['hey', 'amelia', 'zarina', 'julie', 'jasmin', 'sylvie']
</script>
<template>
  <Tag @click="method" class="pill" :value="props.content" rounded>
    <Select v-model="test" :options="somethings" :placeholder="props.content" />
  </Tag>
</template>
<style scoped>
.pill {
  font-size: 1.5vw;
}
</style>
