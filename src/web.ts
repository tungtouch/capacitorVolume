import { WebPlugin } from '@capacitor/core';

import type { CapVolumePlugin } from './definitions';

export class CapVolumeWeb extends WebPlugin implements CapVolumePlugin {
  async echo(options: { value: string }): Promise<{ value: string }> {
    console.log('ECHO', options);
    return options;
  }
  async setVolume(options: { volume: number }): Promise<{ volume: number }> {    
    return options;
  }
}
