# Hierarchical Clustering

**Hierarchical clustering** is a method of cluster analysis that seeks to build a hierarchy of clusters. It is a versatile and powerful tool for exploratory data analysis, providing insights into the data's structure and relationships. The result of hierarchical clustering is a tree-like structure called a **dendrogram**, which illustrates the hierarchical relationships among clusters. 

Hierarchical clustering is categorized into two types:

## 1. Agglomerative (Bottom-Up Approach)

- Starts with each data point as a single cluster.
- Iteratively merges the closest pairs of clusters until all points are in a single cluster or a stopping criterion is met.
- Commonly used linkage criteria include single linkage, complete linkage, and average linkage.

### Algorithm for Agglomerative Clustering

1. Initialize each data point as a single cluster.
2. Compute the distance matrix for all pairs of clusters.
3. Repeat until only one cluster remains or a stopping criterion is met:
    a. Find the pair of clusters with the smallest distance.  
    b. Merge the pair of clusters into a single cluster.  
    c. Update the distance matrix to reflect the merge.  
4. Return the hierarchical tree structure (dendrogram).

## 2. Divisive (Top-Down Approach)

- Starts with all data points in a single cluster.
- Iteratively splits the most appropriate cluster until each data point is in its own cluster or a stopping criterion is met.

### Advantages

- Does not require the number of clusters to be specified in advance.
- Can capture complex cluster structures.

### Disadvantages

- Computationally intensive, especially for large datasets.
- Sensitive to noise and outliers.

## Conclusion

Successful implementation of Agglomerative Hierarchical Clustering using the WEKA tool on a customer dataset provides valuable insights into the data structure.

---

## Steps to Use Hierarchical Clustering in WEKA

1. **Explorer**: Open the WEKA Explorer.
2. **Select File Format**: Change the file format from `.arff` to `.csv` (or load the appropriate file).
3. **File Location**: Navigate to the file location and select the dataset.
4. **Preprocessor Page**: You will reach the preprocessor page.
5. **Cluster**: Click on **Cluster** and select **Hierarchical Clustering**.
6. **Start Clustering**: Click on **Start**, then right-click and visualize the clusters.
7. **Done**: The analysis will be complete.

---

**Happy Clustering!**
