Private ['_amount','_change','_currentSupply','_side'];

_side = _this select 0;
_amount = _this select 1;

_currentSupply = (_side) Call GetSideSupply;
if (isNil '_currentSupply') then {_currentSupply = 0};
_change = _currentSupply + _amount;
if (_change < 0) then {_change = _currentSupply - _amount};
// Sentient - cap supply at 35,000
if (_change >= 35000) then {_change = 35000};

(_side Call WFBE_CO_FNC_GetSideLogic) setVariable ["wfbe_supply", _change, true];