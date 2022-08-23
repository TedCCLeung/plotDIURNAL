## Function to perform normalization
calculate_z_row <- function(df){
  dfz <- t(scale(t(df)))
  dfz[is.na(dfz)] <- 0
  return(dfz)
}

## Function to perform normalization for the three photoperiods separately
calculate_z_row_separate <- function(df, genes = NULL){
  if (is.null(genes)){
    list.of.df <- list(df[, 1:12], df[, 13:24])
    res.z <- lapply(list.of.df, calculate_z_row)
    return(do.call("cbind", res.z))
  } else {
    list.of.df <- list(df[rownames(df) %in% genes, 1:12], df[rownames(df) %in% genes, 13:24])
    res.z <- lapply(list.of.df, calculate_z_row)
    return(do.call("cbind", res.z))
  }
}

