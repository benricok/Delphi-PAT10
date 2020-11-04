unit Algorithms;

interface
  uses
    Windows, System.Classes, SysUtils, Math, Vcl.Dialogs;

  // Functions
  function  GenerateKey(iMin, iMax : integer; bUpChar, bLowChar, bNumbers, bSpecial : boolean) : String;
  function  Encrypt(sMessage, sKey : string) : string;
  function  Decrypt(sMessage, sKey : string) : string;
  function base64_encode(sIn : String) : String;
  function base64_decode(sIn : String) : String;
  function encrypt_vigenere(sIn : String) : String;
  function decrypt_vigenere(sIn : String) : String;
  function extend_key(sIn : String) : String;

  const
    base64_table : array [0..63] of char = (
        'A','B','C','D','E','F','G','H',
        'I','J','K','L','M','N','O','P',
        'Q','R','S','T','U','V','W','X',
        'Y','Z','a','b','c','d','e','f',
        'g','h','i','j','k','l','m','n',
        'o','p','q','r','s','t','u','v',
        'w','x','y','z','0','1','2','3',
        '4','5','6','7','8','9','+','/'
    );
implementation

//Generate a random selection of characters determind by the user's selection on lenth and what characters may be used
function GenerateKey(iMin, iMax : integer; bUpChar, bLowChar, bNumbers, bSpecial : boolean) : String;
Var
  iLengthKey, iLengthGenAvalible, i : integer;
  sGenKey, sGenAvalible : String;

Const
  sGenUpChar = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
  sGenLowChar = 'abcdefghijklmnopqrstuvwxyz';
  sGenNumbers = '0123456789';
  sGenSpecialChar = '!@#$%^&*';

begin
  //Check if Min value is smaller than Max value
  if iMin >= iMax then
    MessageDlg('Please enter the minimum and maximum values in correctly',mtError, mbOKCancel, 0)
  else
    begin
      //Initilize for loop counter
      i := 1;

      //Radomise length of key
      Randomize;
      iLengthKey := RandomRange(iMin, iMax +1);

      //Append Selected characters to string avalible to the randomizer to select from and get length of it
      if bUpChar then
        sGenAvalible:= sGenAvalible + sGenUpChar;
      if bLowChar then
        sGenAvalible:= sGenAvalible + sGenLowChar;
      if bNumbers then
        sGenAvalible:= sGenAvalible + sGenNumbers;
      if bSpecial then
        sGenAvalible:= sGenAvalible + sGenSpecialChar;

      iLengthGenAvalible := length(sGenAvalible);

      //Check if user selected characters
      if iLengthGenAvalible = 0 then
        MessageDlg('Please select characters for the gererator to use',mtError, mbOKCancel, 0);

      //Generate Key
      for i := 1 to iLengthKey do
        begin
          sGenKey := sGenKey + sGenAvalible[Randomrange(1, iLengthGenAvalible+1)];
        end;

      //Return Key
      result := sGenKey;
    end;
end;

// https://github.com/philipperemy/easy-encryption/blob/master/encrypt.h
function Encrypt(sMessage, sKey : string) : string;
Var
  sB64, sVigenereMsg : String;
begin
  sB64 := base64_encode(sMessage);
  sVigenereMsg := encrypt_Vigenere(sB64, sKey);
  result := sVigenereMsg;
end;

function Decrypt(sEncryptedMsg, sKey : string) : string;
Var
  sNewKey, sB64_encoded, sB64_decoded : String;
begin
  sNewKey := extend_key(sEncryptedMsg, key);
  sB64_encoded := decrypt_vigenere(sEncryptedMsg, sNewKey);
  sB64_decoded := base64_decode(sB64_encoded);
  result := sB64_decoded;
end;

// https://github.com/philipperemy/easy-encryption/blob/master/b64.h
function base64_encode(sIn : String) : String;
Var
  sOut : String;
  k, iVal, iValB : integer;
  cTemp : char;

begin
    iVal := 0;
    iValB := -6;
    k := 0;

    sOut := '';

    for k := 0 to length(sIn) do
        begin
        cTemp := sIn[k];
        iVal := (iVal shl 8) + Ord(cTemp);
        iValB := iValB + 8;

        while iValB >= 0 do
            begin
            sOut := sOut + base64_table[(iVal shr iValb) and $3F];
            iValB := iValb - 6;
            end;
        end;
    if iValB > -6 then
          begin
            sOut := sOut + base64_table[((iVal shl 8) shr (iValB + 8)) and $3F]
        end;

    while length(sOut) mod 4 > 0 do
        begin
            sOut := sOut + '=';
        end;

    result := sOut;
end;

function base64_decode(sIn : String) : String;
Var
  sOut : String;
begin

end;

// https://github.com/philipperemy/easy-encryption/blob/master/vigenere.h
function decrypt_vigenere( : String) : String;
Var

begin

end;

function encrypt_vigenere( : String) : String;
Var

begin

end;

function extend_key( : String) : String;
Var

begin

end;

// https://github.com/philipperemy/easy-encryption
end.