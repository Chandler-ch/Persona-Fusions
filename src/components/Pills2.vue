<script setup>
import { ref, computed } from 'vue'
import TagIcon from '@primeicons/vue/tag'
import { Button, Checkbox, Select } from 'primevue'

const selected = ref(['security'])
const labelGroups = ref([
  {
    label: 'Critical',
    value: 'critical',
    items: [
      { label: 'Security', value: 'security' },
      { label: 'Performance', value: 'performance' },
    ],
  },
  {
    label: 'Optional',
    value: 'optional',
    items: [
      { label: 'Feature', value: 'feature' },
      { label: 'Other', value: 'other' },
    ],
  },
])

const allItems = computed(() => labelGroups.value.flatMap((g) => g.items))

const getTriggerLabel = () => {
  if (selected.value.length === 0) return ''
  const first =
    allItems.value.find((i) => i.value === selected.value[0])?.label ?? selected.value[0]
  return selected.value.length > 1 ? `${first} +${selected.value.length - 1}` : first
}

const isItemSelected = (item) => selected.value.includes(item.value)

const selectAll = () => {
  selected.value = allItems.value.map((i) => i.value)
}
</script>

<template>
  <div class="flex justify-center">
    <Select
      v-model="selected"
      :options="labelGroups"
      multiple
      filter
      unstyled
      filterBy="label"
      optionLabel="label"
      optionValue="value"
      optionGroupLabel="label"
      optionGroupChildren="items"
      placeholder="Select labels"
      filterPlaceholder="Search..."
      class="w-full md:w-64 border-0! bg-transparent! shadow-none!"
      :pt="{ dropdown: { class: 'hidden!' } }"
    >
      <template #value>
        <span class="badge">
          <span class="font-semibold">{{ getTriggerLabel() }}</span>
        </span>
      </template>
      <template #optiongroup="slotProps">
        <span class="text-xs font-semibold text-surface-500 uppercase tracking-wide">{{
          slotProps.option.label
        }}</span>
      </template>
      <template #option="slotProps">
        <div class="flex items-center gap-2">
          <Checkbox :modelValue="isItemSelected(slotProps.option)" binary :tabindex="-1" readonly />
          <span class="truncate">{{ slotProps.option.label }}</span>
        </div>
      </template>
    </Select>
  </div>
</template>
<style scoped>
.badge {
  display: inline-flex; /* inline-flex */
  align-items: center; /* items-center */
  gap: 0.25rem; /* gap-1 */
  background-color: #eff6ff; /* bg-blue-50 */
  color: #1d4ed8; /* text-blue-700 */
  font-size: 0.75rem; /* text-xs */
  line-height: 1rem; /* text-xs */
  border-radius: 9999px; /* rounded-full */
  padding-top: 0.25rem; /* py-1 */
  padding-bottom: 0.25rem; /* py-1 */
  padding-left: 0.75rem; /* px-3 */
  padding-right: 0.75rem; /* px-3 */
}

/* dark:bg-blue-950 & dark:text-blue-300 */
@media (prefers-color-scheme: dark) {
  .badge {
    background-color: #172554; /* dark:bg-blue-950 */
    color: #93c5fd; /* dark:text-blue-300 */
  }
}
</style>
