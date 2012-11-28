===================================
Social structure of FLOSS Projects
===================================

Introducción
=============

Grado de implicación de los usuarios principales en la comunidad de desarrollo.

Onion Model
============


Relaciones SNA
===============

Social Network Analysis en un proyecto FLOSS.

Territorialidad
================

Fuerte territorialidad en proyectos FLOSS.

Dedicación exclusiva a un módulo en concreto.

Ejercicios R
=============

con = dbConnect(MySQL(), user='root', pass='admin', dbname='fm3_brasero_cvsanaly2_svn_scm')

results = dbGetQuery("select committer_id, count(*) as ncommits from scmlog group by committer_id order by ncommits desc")

barplot(log10(results[,2]), names.arg = as.character(results[,1]), col = "blue")


R --vanilla < myScript.R
