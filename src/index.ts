import { registerPlugin } from '@capacitor/core';

import type { CapVolumePlugin } from './definitions';

const CapVolume = registerPlugin<CapVolumePlugin>('CapVolume', {
  web: () => import('./web').then(m => new m.CapVolumeWeb()),
});

export * from './definitions';
export { CapVolume };
