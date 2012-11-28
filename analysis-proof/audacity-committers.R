library(RMySQL)

con = dbConnect(MySQL(), user='root', pass='admin', dbname='fm3_audacity_cvsanaly2_cvs_scm')

results = dbGetQuery(con, "select committer_id, count(*) as ncommits from scmlog group by committer_id order by ncommits desc")

jpeg("barplot_audacity.jpg")

barplot(log10(results[,2]), names.arg = as.character(results[,1]), col = "blue")

dev.off()

