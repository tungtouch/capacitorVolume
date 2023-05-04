import { WebPlugin } from '@capacitor/core';

import type { CapVolumePlugin } from './definitions';

export class CapVolumeWeb extends WebPlugin implements CapVolumePlugin {  

  async setVolume(options: { volume: number }): Promise<{ volume: number }> {    
    return options;
  }  
}
