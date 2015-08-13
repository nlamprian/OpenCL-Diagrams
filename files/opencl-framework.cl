kernel
void nn_add_local (global int *in, global int *out, local int *data)
{
  int gX = get_global_id (0);
  int lX = get_local_id (0);
  int m = get_local_size (0);

  data[lX] = in[gX];
  if (lX == m - 1)
    data[m] = select (in[gX + 1], 0, gX == get_global_size (0) - 1);
  barrier (CLK_LOCAL_MEM_FENCE);

  out[gX] = data[lX] + data[lX + 1];
}