extends Label

func _ready() -> void:
	$".".text = "You have Collected 0 of the 27 Coins"

func _process(_delta: float) -> void:
	$".".text = "You have Collected "+ str(Game.Coins) +" of the 27 Coins"
