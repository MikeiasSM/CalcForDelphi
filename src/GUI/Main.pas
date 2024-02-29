unit Main;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, System.StrUtils, System.Generics.Collections,

  Vcl.Forms, Vcl.ExtCtrls, Vcl.Controls, Vcl.StdCtrls;

type
  TOperadores = (toAdicao, toSubtracao, toMultiplicacao, toDivisao);

  TPrincipal = class(TForm)
    lblDisplay: TLabel;
    pnPrincipal: TPanel;
    pnDisplay: TPanel;
    Panel1: TPanel;
    GridPanel1: TGridPanel;
    btnNumSete: TButton;
    btnNumOito: TButton;
    btnNumNove: TButton;
    btnOperadorAdicao: TButton;
    btnNumQuatro: TButton;
    btnNumCinco: TButton;
    btnNumSeis: TButton;
    btnOperadorSubtracao: TButton;
    btnNumUm: TButton;
    btnNumDois: TButton;
    btnNumTres: TButton;
    btnOperadorMultiplicacao: TButton;
    btnVirgula: TButton;
    btnNumZero: TButton;
    btnOperadorIgual: TButton;
    btnOperadorDivisao: TButton;
    Panel2: TPanel;
    btnBackspace: TButton;
    lblOperacao: TLabel;
    btnClear: TButton;
    procedure btnNumUmClick(Sender: TObject);
    procedure btnNumDoisClick(Sender: TObject);
    procedure btnNumTresClick(Sender: TObject);
    procedure btnNumQuatroClick(Sender: TObject);
    procedure btnNumCincoClick(Sender: TObject);
    procedure btnNumSeisClick(Sender: TObject);
    procedure btnNumSeteClick(Sender: TObject);
    procedure btnNumOitoClick(Sender: TObject);
    procedure btnNumNoveClick(Sender: TObject);
    procedure btnVirgulaClick(Sender: TObject);
    procedure btnNumZeroClick(Sender: TObject);
    procedure btnOperadorAdicaoClick(Sender: TObject);
    procedure btnBackspaceClick(Sender: TObject);
    procedure btnOperadorSubtracaoClick(Sender: TObject);
    procedure btnOperadorMultiplicacaoClick(Sender: TObject);
    procedure btnOperadorDivisaoClick(Sender: TObject);
    procedure btnClearClick(Sender: TObject);
    procedure btnOperadorIgualClick(Sender: TObject);
  private
    { Private declarations }

    LExpressao: String;

    procedure GetDigito(LDigito : String);
    procedure Backspace();

    function calculate(PExpressao: String): String;
    function isOperator(pChar: Char) : boolean;
    function getOperators(PExpressao: String): TStack<String>;
    function getNumbers(PExpressao: String): TStack<Currency>;
    function calculateAns(PNumbers: TStack<Currency>; POperator: TStack<String>) : Currency;
    function operation(pValorA: Currency; pStringA: String; pValorB: Currency): Currency;

  public
    { Public declarations }
  end;

var
  Principal: TPrincipal;

implementation

{$R *.dfm}

procedure TPrincipal.Backspace;
var
  LDisplay: String;
begin
  LDisplay := lblDisplay.Caption;

  if (LDisplay.Length = 1) then
  begin
    LDisplay := '0';
  end else
  begin
    LDisplay := Copy(LDisplay, 1, LDisplay.Length -1);
  end;

  lblDisplay.Caption := LDisplay;
end;

procedure TPrincipal.btnBackspaceClick(Sender: TObject);
begin
  Backspace();
  lblOperacao.Caption := '';
end;

procedure TPrincipal.btnClearClick(Sender: TObject);
begin
  lblDisplay.Caption := '0';
end;

procedure TPrincipal.btnNumCincoClick(Sender: TObject);
begin
  GetDigito('5');
end;

procedure TPrincipal.btnNumDoisClick(Sender: TObject);
begin
  GetDigito('2');
end;

procedure TPrincipal.btnNumNoveClick(Sender: TObject);
begin
  GetDigito('9');
end;

procedure TPrincipal.btnNumOitoClick(Sender: TObject);
begin
  GetDigito('8');
end;

procedure TPrincipal.btnNumQuatroClick(Sender: TObject);
begin
  GetDigito('4');
end;

procedure TPrincipal.btnNumSeisClick(Sender: TObject);
begin
  GetDigito('6');
end;

procedure TPrincipal.btnNumSeteClick(Sender: TObject);
begin
  GetDigito('7');
end;

procedure TPrincipal.btnNumTresClick(Sender: TObject);
begin
  GetDigito('3');
end;

procedure TPrincipal.btnNumUmClick(Sender: TObject);
begin
  GetDigito('1');
end;

procedure TPrincipal.btnNumZeroClick(Sender: TObject);
begin
  GetDigito('0');
end;

procedure TPrincipal.btnOperadorAdicaoClick(Sender: TObject);
begin
  GetDigito('+');
end;

procedure TPrincipal.btnOperadorDivisaoClick(Sender: TObject);
begin
  GetDigito('/');
end;

procedure TPrincipal.btnOperadorIgualClick(Sender: TObject);
var
  LResult: String;
begin

  try

    LResult := calculate(lblDisplay.Caption);
    lblDisplay.Caption := LResult;

  except

  end;

end;

procedure TPrincipal.btnOperadorMultiplicacaoClick(Sender: TObject);
begin
  GetDigito('*');
end;

procedure TPrincipal.btnOperadorSubtracaoClick(Sender: TObject);
begin
  GetDigito('-');
end;

procedure TPrincipal.btnVirgulaClick(Sender: TObject);
begin
  GetDigito(',');
end;

function TPrincipal.calculate(PExpressao: String): String;
var
  LListOperators: TStack<String>;
  LListNumbers: TStack<Currency>;
  LValor: Currency;
begin

  LExpressao := PExpressao;

  LListOperators := TStack<String>.Create;
  LListNumbers := TStack<Currency>.Create;

  LListOperators := getOperators(PExpressao);
  LListNumbers := getNumbers(PExpressao);

  LValor := calculateAns(LListNumbers, LListOperators);


  Result := CurrToStr(LValor);

end;

function TPrincipal.calculateAns(pNumbers: TStack<Currency>; pOperator: TStack<String>): Currency;
var
  LValor: Currency;
  LInteracao: Integer;
  LCont: Integer;
begin

  LValor := 0;
  LInteracao := 0;

  while PNumbers.Count -1 > 0 do
  begin

    if LValor = 0 then
    begin
      LValor := operation(pNumbers.Pop, pOperator.Pop, pNumbers.Pop);
      LInteracao := LInteracao + 1;
    end
    else begin
      LValor := operation(LValor, pOperator.Pop, pNumbers.Pop);
      LInteracao := LInteracao + 1;
    end;

  end;

  Result := LValor;

end;

procedure TPrincipal.GetDigito(LDigito: String);
begin

  if ((String(lblDisplay.Caption).Contains(',')) and LDigito.Contains(',')) then
  begin
    Exit();
  end;

  if (String(lblDisplay.Caption).Equals('0')) then
  begin
    lblDisplay.Caption := LDigito;
  end else
  begin
    lblDisplay.Caption := lblDisplay.Caption + LDigito;
  end;
end;

function TPrincipal.getNumbers(pExpressao: String): TStack<Currency>;
var
  LListNumbers: TStack<Currency>;
  LNumber: String;
begin
  LListNumbers := TStack<Currency>.Create;

  pExpressao := pExpressao + '+';

  for var LChar in PExpressao do
  begin

    if (not isOperator(LChar)) then
    begin
      LNumber := LNumber + LChar;
      Break;
    end
    else begin

      if (PExpressao.Length = 0) then
      begin
        LNumber := LNumber + LChar;
        Break;
      end
      else begin
        LListNumbers.Push(StrToCurr(LNumber));
        Break;
      end;
    end;

  end;

  Result := LListNumbers;
end;

function TPrincipal.getOperators(pExpressao: String): TStack<String>;
var
  cont: Integer;
  LListOperadores: TStack<String>;
begin
  LListOperadores := TStack<String>.Create;
  cont := 0;

  for var LChar in PExpressao do
  begin
    if ((isOperator(LChar)) and (cont <> 0)) then
    begin
      LListOperadores.Push(LChar);
      cont := 0;
    end;
    cont := 1;
  end;

  Result := LListOperadores;

end;

function TPrincipal.isOperator(pChar: Char): boolean;
begin
  Result := False;
  if ((pChar = '+') or (pChar = '-') or (pChar = '*') or (pChar = '/')) then
  begin
    Result := True;
  end;
end;

function TPrincipal.operation(pValorA: Currency; pStringA: String; pValorB: Currency): Currency;
var
  LValor: Double;
begin

  LValor := 0;

  if pStringA = '+' then
  begin
    LValor := pValorA + pValorB;
  end;

  if pStringA = '-' then
  begin
    LValor := pValorA - pValorB;
  end;

  if pStringA = '*' then
  begin
    LValor := pValorA * pValorB;
  end;

  if pStringA = '/' then
  begin
    LValor := pValorA + pValorB;
  end;

  Result := LValor;

end;

end.
