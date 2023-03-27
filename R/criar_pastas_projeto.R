criar_pastas_projeto <- function(){
  dir.create("data-raw")
  dir.create("data")
  dir.create("R")
  dir.create("doc")
  dir.create("output")
  dir.create("isc")
}

# criar pastas para o projeto
 criar_pastas_projeto()

# salvar diretório de trabalho
#wd <- getwd()
#all_files <- list.files(wd)

# copiar arquivo para a pasta R
#file.copy(
# from = "funcoes_controle_financeiro.R", 
#to = "R/"
#)

# copiar arquivos para pasta doc
#lapply(
# all_files[c(1:2, 8:9)], 
#FUN = file.copy,
#to = "doc/")

# copiar arquivos para pasta data-raw
#lapply(
#  all_files[c(3:4)], 
#  FUN = file.copy,
#  to = "data-raw/")
#
# copiar uma pasta para pasta isc
#lapply(
#  all_files[6], 
#  FUN = file.copy,
#  to = "ist/")
#
# remover arqui no diretório
#file.remove(".Rhistory")
#file.remove(all_files[-5])
