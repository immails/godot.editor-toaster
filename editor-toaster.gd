@tool class_name EditorToaster

# Toaster path:
# 	@VBoxContainer@14 / @HSplitContainer@17 / @HSplitContainer@25 / @HSplitContainer@33 / @VBoxContainer@34 / @VSplitContainer@36 / @PanelContainer@6819 / @VBoxContainer@6820 / @HBoxContainer@6821 (LAST CHILD) / @EditorToaster@6827 
# Actual for: 4.2.1.stable
# Contact @immails on discord/github to request an update

static var editor_toaster : Control
enum ESeverity {
	INFO, WARN, ERROR
}

func _enter_tree() -> void:
	editor_toaster = EditorInterface.get_base_control().get_child(0).get_child(1).get_child(1).get_child(1).get_child(0).get_child(0).get_child(1).get_child(0).get_children().pop_back().get_child(1);
	
func toast(text : String, severity : ESeverity = ESeverity.INFO, tooltip : String = "") -> void:
	editor_toaster.call("_popup_str", text, severity, tooltip)

# instantiate with var toaster = EditorToaster.new()
# send toast with toaster.toast("hello world", EditorToaster.ESeverity.INFO, "tooltip")