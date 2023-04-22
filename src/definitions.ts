export interface CapVolumePlugin {
  echo(options: { value: string }): Promise<{ value: string }>;
  setVolume(options: {volume: number}): Promise<{ volume: number }>;
}
