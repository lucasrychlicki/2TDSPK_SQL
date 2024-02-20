set SERVEROUTPUT on;

declare 
    v_1 varchar2(30);
    v_2 v_1%type;
begin
    v_1:= 10;
    v_2 := 555*1.25;
dbms_output.put_line(v_1);
dbms_output.put_line(v_2);

end;
    
declare

    sal_minimo number;

begin 
    sal_minimo := 1414;
    dbms_output.put_line(sal_minimo*1.25);
    
end;


declare
    vl_real number:= &valor;
    vl_dolar number;
    
begin
    vl_dolar := 4.96;
    dbms_output.put_line('O valor em reais de '||vl_real|| ' em dolares é: $' || vl_dolar*vl_real);
    
end;

declare
    parcelas number :=&parcelas;
    vl_compra number := &valor;
    vl_total number;
    vl_parcela number;
    
begin 
    vl_total := vl_compra*1.03;
    vl_parcela := vl_total/parcelas;
    
    dbms_output.put_line('Parcelas: ' || parcelas);
    dbms_output.put_line('Valor do carro: ' || vl_compra);
    dbms_output.put_line('Valor total com juros: ' || vl_total);
    dbms_output.put_line('Valor de cada parcela: ' || vl_parcela);
    
end;

declare 
    pc_1 number;
    pc_2 number;
    pc_3 number;
    vl_compra number := &valor;
    vl_entrada number;
     
begin

    vl_entrada := vl_compra * 0.8;
    pc_1 := (vl_entrada * 1.10)/6;
    pc_2 := (vl_entrada * 1.15)/6;
    pc_3 := (vl_entrada * 1.20)/6;
    
    dbms_output.put_line('Valor do carro: ' || vl_compra);
    dbms_output.put_line('Valor da entrada: ' || vl_compra*0.2);
    dbms_output.put_line('Valor de cada parcela em 6x: ' || pc_1);
    dbms_output.put_line('Valor de cada parcela em 12x: ' || pc_2);
    dbms_output.put_line('Valor de cada parcela em 18x: ' || pc_3);

    
end;
    
    