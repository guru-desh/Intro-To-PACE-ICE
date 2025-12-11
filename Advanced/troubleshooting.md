# Troubleshooting PACE ICE

## Disk Quota Exceeded

The majority of these issues are caused by one of the following reasons:

1. You didn't set your symlinks, and it caused a download to happen in your personal storage and not your scratch storage.
2. You ran out of space in your scratch storage.

First, run `pace-quota` to see which storage is being exceeded. You should see a near 100% usage for either your personal storage or your scratch storage that would cause the error.

1. **If your personal storage is being exceeded,** you need to set your symlinks. Please refer to the [Things to do on your first time on PACE ICE](../README.md#things-to-do-on-your-first-time-on-pace-ice) section for more information on how to set your symlinks.

2. **If your scratch storage is being exceeded,** this is a tricky situation and requires more thinking about why your scratch storage is being exceeded.  
    - If this happens during a PACE Job, you can use the temporary storage directory to store your data. Please refer to the [Temporary Storage (during PACE Jobs)](../README.md#temporary-storage-during-pace-jobs) section for more information on how to use the temporary storage directory.
    - Else, check the size of your `.conda` and `.cache` folders. If they are too large, try removing unimportant `conda` environments and `cache` files.

## Jupyter from Open OnDemand is unable to find my Python Environment

There's two main reasons why this happens:

1. You didn't install `ipykernel` in your Python environment.
2. You didn't add your Python environment to the Jupyter kernel list.

To fix this, you can run the following command to install `ipykernel` in your Python environment:

```bash
pip install ipykernel # or conda install ipykernel
```

To add your Python environment to the Jupyter kernel list, you can run the following command:

```bash
python -m ipykernel install --prefix=/path/to/jupyter/env --name 'python-my-env'
```

Sources:

- [Stack Overflow Post](https://stackoverflow.com/questions/28831854/how-do-i-add-python3-kernel-to-jupyter-ipython)
