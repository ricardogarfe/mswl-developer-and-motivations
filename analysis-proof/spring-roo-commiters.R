library(RMySQL)

con = dbConnect(MySQL(), user='root', pass='admin', dbname='spring_roo_git')

results = dbGetQuery(con, "select committer_id, count(*) as ncommits from scmlog group by committer_id order by ncommits desc")

jpeg("barplot_spring_roo.jpg")

barplot(log10(results[,2]), names.arg = as.character(results[,1]), col = "blue")

dev.off()

