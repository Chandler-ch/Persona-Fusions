<script setup lang="ts">
import InputText from 'primevue/inputtext'
</script>
<template>
  <div class="searchbar">
    <InputText placeholder="Searchbar.." class="input" />
  </div>
</template>
<style scoped>
.searchbar {
  border: 1px black solid;
  border-radius: 20%;
  width: 200px;
}
.input {
  margin: 5px;
}
</style>
