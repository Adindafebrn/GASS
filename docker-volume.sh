#docker volume direkomendasikan sbg versi baru

#docker volume = storage 
#data di manage docker 
#kalo bind mount disimpan di host 

# un-used volume bisa dihapus, tetapi jika volume digunakan oleh container, maka bisa dihapus jika container dihapus

docker volume ls

docker volume create [volumename]

docker volume rm [volumename]

