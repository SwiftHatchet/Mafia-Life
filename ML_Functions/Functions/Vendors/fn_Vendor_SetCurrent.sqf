private["_Vendor"];
_Vendor = _this;
if (isNull _Vendor) exitWith {};
if (typeName _Vendor != "OBJECT") exitWith {};

player setVariable ["ML_CurrentVendor", _Vendor];