removing
checkTag: aCollectOfInterest
    aCollectOfInterest do: [ :tag | (self topics includes: tag) ifTrue: [ ^true] ifFalse: [ ^false ]] "Si la pregunta tiene alguno de los tags se retorna true, caso contrario false"