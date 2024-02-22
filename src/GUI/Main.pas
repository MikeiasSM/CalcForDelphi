unit Main;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, System.StrUtils,
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
    Button1: TButton;
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
  private
    { Private declarations }
    LOperacao: String;
    LOperador: String;
    procedure GetDigito(LDigito : String);
    procedure Backspace();
    procedure RealizaOperacao(POperador: TOperadores);

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
  RealizaOperacao(toAdicao);
end;

procedure TPrincipal.btnVirgulaClick(Sender: TObject);
begin
  GetDigito(',');
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

procedure TPrincipal.RealizaOperacao(POperador: TOperadores);
var
  LDisplay: String;
begin
  LDisplay := lblDisplay.Caption;

  if (not (LDisplay.Contains('+') or LDisplay.Contains('-') or LDisplay.Contains('*') or LDisplay.Contains('/'))) then
  begin
    lblDisplay.Caption := '';

    case POperador of
      toAdicao:
      begin
        LOperacao := LDisplay + '+';
      end;
      toSubtracao:
      begin
        LOperacao := LDisplay + '-';
      end;
      toMultiplicacao:
      begin
        LOperacao := LDisplay + '*';
      end;
      toDivisao:
      begin
        LOperacao := LDisplay + '/';
      end;
    end;
    lblOperacao.Caption := LOperacao;
    lblDisplay.Caption := '0';
  end;

end;

end.
