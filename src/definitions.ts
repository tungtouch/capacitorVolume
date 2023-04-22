export interface CapVolumePlugin {
  echo(options: { value: string }): Promise<{ value: string }>;
}
