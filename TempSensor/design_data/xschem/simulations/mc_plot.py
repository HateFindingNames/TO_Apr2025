import matplotlib.pyplot as plt
import pandas as pd
import os
import sys

# path = "./ptat_bjt_nmos-curr-mirror-mc"

def plot_data(thefile):
    data = pd.read_csv(thefile, sep=' ', skipinitialspace=True)

    ax.set_title("")    
    ax.set_xlabel('Temp / °C')
    ax.set_ylabel('$V_{out}$ / V')

    ax.plot(data['temp-sweep'], data['vout'])

if __name__ == "__main__":
    path = sys.argv[1]

    fig, ax = plt.subplots(figsize=(8,4.5))

    for root,path,files in os.walk(path):
        for file in files:
            if file.endswith('csv'):
                plot_data(os.path.join(root, file))

    ax.set_title(sys.argv[1])
    ax.grid()
    plt.savefig(os.path.join(sys.argv[1],"mc_plot.svg"))
    plt.show()