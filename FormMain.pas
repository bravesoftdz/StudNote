unit FormMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, StdCtrls, ExtCtrls;

const
  fileini = 'Data\';

type
  TStudentData = record
    iName: String;
    iFre: Integer;
    iEng: Integer;
    iMath: Integer;
    iMoy: Double;
  end;

  TMainForm = class(TForm)
    NameEdit: TEdit;
    KorEdit: TEdit;
    EngEdit: TEdit;
    MathEdit: TEdit;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    StaticText3: TStaticText;
    StaticText4: TStaticText;
    AddButton: TButton;
    DelButton: TButton;
    StringGrid: TStringGrid;
    KorPanel: TPanel;
    EngPanel: TPanel;
    MathPanel: TPanel;
    TotalPanel: TPanel;
    GrBoxNote: TGroupBox;
    GrBoxControle: TGroupBox;
    bvlHead: TBevel;
    bvlFeet: TBevel;
    procedure FormCreate(Sender: TObject);
    procedure AddButtonClick(Sender: TObject);
    procedure DelButtonClick(Sender: TObject);
  private
    fStudentArr: array of TStudentData;
    fSumArr: array [0 .. 3] of Integer;

    procedure AddStudent(aName: String; aFre, aEng, aMath: Integer);
    procedure RemoveStudent(aName: String);
    procedure DoOutput(aArrIndex: Integer; aName: String);

    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;

implementation

{$R *.dfm}

var
  iniFolder,iniPath: String;

procedure TMainForm.FormCreate(Sender: TObject);
begin
  iniFolder := ExtractFilePath(Application.ExeName) +fileini;
  ForceDirectories(iniFolder);

  SetLength(fStudentArr, 0);
  fSumArr[0] := 0;
  fSumArr[1] := 0;
  fSumArr[2] := 0;
  StringGrid.Cells[0, 0] := 'Student';
  StringGrid.Cells[1, 0] := 'Note1';
  StringGrid.Cells[2, 0] := 'Note2';
  StringGrid.Cells[3, 0] := 'Note3';
  StringGrid.Cells[4, 0] := 'Moyen';

end;

procedure TMainForm.AddButtonClick(Sender: TObject);
begin
  AddStudent(NameEdit.Text, StrToInt(KorEdit.Text), StrToInt(EngEdit.Text), StrToInt(MathEdit.Text));
end;

procedure TMainForm.AddStudent(aName: String; aFre, aEng, aMath: Integer);
var
  aIndex, i: Integer;
begin
  aIndex := -1;
  for i := 0 to Length(fStudentArr) - 1 do
  begin
    if fStudentArr[i].iName = aName then
    begin
      aIndex := 0;
      Break;
    end;
  end;
  if aIndex < 0 then
  begin
    aIndex := Length(fStudentArr);
    SetLength(fStudentArr, aIndex + 1);
  end;
  fSumArr[0] := fSumArr[0] - fStudentArr[aIndex].iFre + aFre;
  fSumArr[1] := fSumArr[1] - fStudentArr[aIndex].iEng + aEng;
  fSumArr[2] := fSumArr[2] - fStudentArr[aIndex].iMath + aMath;
  fStudentArr[aIndex].iName := aName;
  fStudentArr[aIndex].iFre := aFre;
  fStudentArr[aIndex].iEng := aEng;
  fStudentArr[aIndex].iMath := aMath;
  fStudentArr[aIndex].iMoy := (aFre + aEng + aMath) / 3;
  DoOutput(aIndex, aName);
end;

procedure TMainForm.RemoveStudent(aName: String);
var
  i, aIndex, aArrLeng: Integer;
begin
  aArrLeng := Length(fStudentArr);
  aIndex := -1;
  for i := 0 to aArrLeng - 1 do
  begin
    if fStudentArr[i].iName = aName then
    begin
      aIndex := i;
      Break;
    end;
  end;
  if aIndex >= 0 then
  begin
    fSumArr[0] := fSumArr[0] - fStudentArr[aIndex].ifre;
    fSumArr[1] := fSumArr[1] - fStudentArr[aIndex].iEng;
    fSumArr[2] := fSumArr[2] - fStudentArr[aIndex].iMath;
    fStudentArr[aIndex] := fStudentArr[aArrLeng - 1];
    SetLength(fStudentArr, aArrLeng - 1);
    DoOutput(-1, aName);
  end;
end;

procedure TMainForm.DelButtonClick(Sender: TObject);
begin
  RemoveStudent(NameEdit.Text);
end;

procedure TMainForm.DoOutput(aArrIndex: Integer; aName: String);
var
  i, aGridIndex: Integer;
begin
  aGridIndex := -1;
  if aArrIndex < 0 then
  begin
    for i := 1 to StringGrid.RowCount - 1 do
    begin
      if StringGrid.Cells[0, i] = aName then
      begin
        aGridIndex := i;
        Break;
      end;
    end;
    if aGridIndex < -1 then
      Exit
    else
    begin
      for i := aGridIndex to StringGrid.RowCount - 1 do
      begin
        StringGrid.Cells[0, i] := StringGrid.Cells[0, i + 1];
        StringGrid.Cells[1, i] := StringGrid.Cells[1, i + 1];
        StringGrid.Cells[2, i] := StringGrid.Cells[2, i + 1];
        StringGrid.Cells[3, i] := StringGrid.Cells[3, i + 1];
        StringGrid.Cells[4, i] := StringGrid.Cells[4, i + 1];
      end;
      StringGrid.RowCount := StringGrid.RowCount - 1;
    end;
  end
  else
  begin
    for i := 1 to StringGrid.RowCount - 1 do
    begin
      if StringGrid.Cells[0, i] = aName then
      begin
        aGridIndex := i;
        Break;
      end;
    end;
    if aGridIndex < 0 then
    begin
      if StringGrid.Cells[0, 1] = '' then
        aGridIndex := 1
      else
      begin
        StringGrid.RowCount := StringGrid.RowCount + 1;
        aGridIndex := StringGrid.RowCount - 1;
      end;
    end;
    StringGrid.Cells[0, aGridIndex] := fStudentArr[aArrIndex].iName;
    StringGrid.Cells[1, aGridIndex] := IntToStr(fStudentArr[aArrIndex].iFre);
    StringGrid.Cells[2, aGridIndex] := IntToStr(fStudentArr[aArrIndex].iEng);
    StringGrid.Cells[3, aGridIndex] := IntToStr(fStudentArr[aArrIndex].iMath);
    StringGrid.Cells[4, aGridIndex] := FloatToStr(fStudentArr[aArrIndex].iMoy);
  end;
  KorPanel.Caption := FloatToStr(fSumArr[0] / (StringGrid.RowCount - 1));
  EngPanel.Caption := FloatToStr(fSumArr[1] / (StringGrid.RowCount - 1));
  MathPanel.Caption := FloatToStr(fSumArr[2] / (StringGrid.RowCount - 1));
  TotalPanel.Caption := FloatToStr((fSumArr[0] + fSumArr[1] + fSumArr[2]) / ((StringGrid.RowCount - 1) * 3));

end;

end.
