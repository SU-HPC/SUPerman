import matplotlib.pyplot as plt


def read_values_from_file(file_path):
    values = []
    with open(file_path, 'r') as file:
        for line in file:
            try:
                value = float(line.strip())
                values.append(value)
            except ValueError:
                continue
    return values


def plot_values(values, output_image_path):
    plt.figure(figsize=(12, 8))
    plt.plot(values, marker='o', markersize=8, linestyle='-', linewidth=2, color='b')

    plt.title('Change Over Iterations', fontsize=18)
    plt.xlabel('Iteration', fontsize=14)
    plt.ylabel('Product', fontsize=14)

    plt.grid(True, which='both', linestyle='--', linewidth=0.5)

    plt.annotate(f'{values[0]}', xy=(0, values[0]), xytext=(0, values[0] + max(values) * 0.05),
                 arrowprops=dict(facecolor='black', shrink=0.05))
    plt.annotate(f'{values[-1]}', xy=(len(values) - 1, values[-1]), xytext=(len(values) - 1, values[-1] - max(values) * 0.05),
                 arrowprops=dict(facecolor='black', shrink=0.05))

    plt.savefig(output_image_path)

    plt.show()


def main(file_path, output_image_path):
    values = read_values_from_file(file_path)
    plot_values(values, output_image_path)


file_path = "results.txt"
output_image_path = "plot.png"
main(file_path, output_image_path)
