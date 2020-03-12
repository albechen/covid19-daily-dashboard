library(rmarkdown)
library(drat)
library(git2r)


#RUN DASHBOARD

Sys.setenv(RSTUDIO_PANDOC="C:\Users\alche\Program Files\RStudio\bin\pandoc")
setwd("C:\Users\alche\Documents\Projects\covid19-daily-dashboard")
rmarkdown::render("covid19-daily-dashboard.Rmd")


# COMMIT AND PUSH TO GITHUB

gitstatus <- function(dir = getwd()) {
  cmd_list <- list(
    cmd1 = tolower(substr(dir, 1, 2)),
    cmd2 = paste("cd", dir),
    cmd3 = "git status"
  )
  cmd <- paste(unlist(cmd_list), collapse = " & ")
  shell(cmd)
}

gitadd <- function(dir = getwd()) {
  cmd_list <- list(
    cmd1 = tolower(substr(dir, 1, 2)),
    cmd2 = paste("cd", dir),
    cmd3 = "git add --all"
  )
  cmd <- paste(unlist(cmd_list), collapse = " & ")
  shell(cmd)
}

gitcommit <- function(msg = paste("chore: auto-update", Sys.time(), "est"), dir = getwd()) {
  cmd <- sprintf("git commit -m\"%s\"", msg)
  system(cmd)
}

gitpush <- function(dir = getwd()) {
  cmd_list <- list(
    cmd1 = tolower(substr(dir, 1, 2)),
    cmd2 = paste("cd", dir),
    cmd3 = "git push"
  )
  cmd <- paste(unlist(cmd_list), collapse = " & ")
  shell(cmd)
}

git2r::config(user.name = "albechen", user.email = "alchen244@gmail.com")

gitstatus()
gitadd()
gitcommit()
gitpush()

