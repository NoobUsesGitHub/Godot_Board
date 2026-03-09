extends Node

var card :=preload("res://Scene/card.tscn")
var column :=preload("res://Scene/CardColumn.tscn")

func newCard(t,d)->Node:
	var nCard= card.instantiate()
	nCard.setTitleAndDesc(t,d)
	return nCard

func newCol(t)->Node:
	var nCol=column.instantiate()
	nCol.setTitle(t)
	return nCol
