export interface CapVolumePlugin {  
  /**
    * Volume from 0.1 to 1
    *
    * @since 0.0.1
    */
  setVolume(options: {volume: number}): Promise<{ volume: number }>;  
}
