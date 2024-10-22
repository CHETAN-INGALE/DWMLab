# Clustering

**Clustering** is an unsupervised learning technique used to group similar data points into clusters based on their features. Unlike classification, clustering does not require labeled data. It helps in identifying natural groupings within the data. Popular clustering algorithms include:

- K-Means
- Hierarchical Clustering
- DBSCAN

## K-Means Clustering Algorithm

K-means is one of the simplest and most popular unsupervised machine learning algorithms. The goal of the K-means algorithm is to partition `n` observations into `k` clusters in which each observation belongs to the cluster with the nearest mean, serving as a prototype of the cluster.

### Steps of the K-Means Algorithm

1. **Initialization**: Choose `k` initial centroids randomly from the dataset.
2. **Assignment**: Assign each data point to the nearest centroid, forming `k` clusters.
3. **Update**: Calculate the new centroids as the mean of all data points assigned to each cluster.
4. **Repeat**: Repeat the assignment and update steps until the centroids no longer change or the change is below a certain threshold.

### Advantages

- Simple and easy to implement.
- Efficient for large datasets.
- Works well when clusters are distinct and well-separated.

### Disadvantages

- Requires the number of clusters `k` to be specified in advance.
- Sensitive to the initial placement of centroids.
- May converge to a local minimum.
- Not suitable for clusters with non-convex shapes or varying sizes and densities.

## Conclusion

K-means is a powerful clustering algorithm used to group similar data points. It is computationally efficient and works well on large datasets.

---

## Steps to Use K-Means Clustering in WEKA

1. **Explorer**: Open the WEKA Explorer.
2. **Select File Format**: Change the file format from `.arff` to `.csv` (or load the appropriate file).
3. **File Location**: Navigate to the file location and select the dataset.
4. **Preprocessor Page**: You will reach the preprocessor page.
5. **Cluster**: Click on **Cluster** and select **SimpleKMeans**.
6. **Start Clustering**: Click on **Start**, then right-click and visualize the clusters.
7. **Done**: The analysis will be complete.

---

**Happy Clustering!**
