library(igraph)
# input data (company attibutes network is selected)
# user has options to choose any graph of their choice: for the sake of assignment, Company-Industry table is selected.
edges <- read.csv(
  file.choose(),header = TRUE
)
head(edges)

# making adjacency matrix
adj_matrix <- as.matrix(get.adjacency(graph.data.frame(edges)))
head(adj_matrix)
class(adj_matrix)
# converting to igraph object
g=graph.adjacency(adj_matrix, mode="undirected")
V(g)
E(g)


# Generating Centrality measures
degree(g)  #degree centrality
betweenness(g) #betweeness centrality
closeness(g) #closeness centrality
evcent(g)

#plotting the graph
#par("mar")
#par(mar=c(1000,1000,1000,1000))
#graphics.off()
plot.igraph(g)
graph.density(g) #get a density of graph
diameter(g, directed=FALSE,weights = NA)
