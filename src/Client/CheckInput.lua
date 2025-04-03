local CheckInput = {};
CheckInput.ClassName = "CheckInput";

local controller_inputs = {
	Enum.KeyCode.ButtonR1;
	Enum.KeyCode.ButtonL1;
	Enum.KeyCode.ButtonR2;
	Enum.KeyCode.ButtonL2;
	Enum.KeyCode.ButtonR3;
	Enum.KeyCode.ButtonL3;
	Enum.KeyCode.ButtonA;
	Enum.KeyCode.ButtonB;
	Enum.KeyCode.ButtonX;
	Enum.KeyCode.ButtonY;
	Enum.KeyCode.ButtonSelect;
	Enum.KeyCode.ButtonStart;
	Enum.KeyCode.DPadLeft;
	Enum.KeyCode.DPadRight;
	Enum.KeyCode.DPadUp;
	Enum.KeyCode.DPadDown;
};

local playstation_inputs = {
	["ButtonCross"] = true;
	["ButtonCircle"] = true;
	["ButtonSquare"] = true;
	["ButtonTriangle"] = true;
	["ButtonShare"] = true;
	["ButtonOptions"] = true;
};

CheckInput.gamepad = function(keycode)
	for _, v in pairs(controller_inputs) do
		if not (v == keycode) then continue; end;
		return true;
	end;
	return false;
end;

--[[
Call this using the UserInputService:GetStringForKeyCode() method as the input.
]]
CheckInput.playstation = function(input)

	if (playstation_inputs[input]) then
		return true;
	else
		return false;
	end;
end;

return CheckInput;