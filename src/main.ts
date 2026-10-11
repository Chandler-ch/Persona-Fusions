import { createApp } from 'vue'
import App from './App.vue'
import { PrimeVue } from '@primevue/core'
import Aura from '@primeuix/themes/aura'

const app = createApp(App)
app
  .use(PrimeVue, {
    theme: { preset: Aura },
    license: import.meta.env.PRIMEVUE_LICENSE_KEY,
  })
  .mount('#app')
