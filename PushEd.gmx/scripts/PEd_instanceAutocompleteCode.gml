/// PEd_instanceAutocompleteCode(id)
/**
 * @brief Autocompletes the creation code of the instance.
 * @param {real} id The id of the instance.
 */
var _inst = argument0;
var _startInd = "/*autocompleteStart*/ ";
var _endInd = " /*autocompleteEnd*/ ";

var _code = PEd_instanceGetCode(_inst);
_code = PEd_removeFromStr(_startInd, _endInd, _code);

if (global.pedUsing3D) 
{
    // Construct code
    var _autocomplete = _startInd;
    _autocomplete += "z=" + string(PEd_instanceGetPosZ(_inst)) + ";"
                   + "rotX=" + string(PEd_instanceGetRotX(_inst)) + ";"
                   + "rotY=" + string(PEd_instanceGetRotY(_inst)) + ";"
                   + "scaleZ=" + string(PEd_instanceGetScaleZ(_inst)) + ";";
    _autocomplete += _endInd;
    
    // Save code
    PEd_instanceSetCode(_inst, _autocomplete + _code);
}
else 
{
    PEd_instanceSetCode(_inst, _code);
}
