select*from insurance


select avg(charges) as moy_charge, age from insurance 
group by age
order by age

---------------------------------------EFFECTIFS ET CHARGES MOYENNES PAR BMI---------------------------------------------------------------

-- CHARGE MOYENNE POUR BMI < 18,5
select 'bmi < 18.5' as bmi_accru, round(avg(charges),2) as moy_charges from insurance
where bmi < 18.5
-- EFFECTIFS POUR BMI COMPRIS INFERIEUR � 18,5
select '18.5 < bmi' as bmi_accru, count(*) as Effectif_categoriel from insurance
where bmi < 18.5 




-- CHARGE MOYENNE POUR BMI COMPRIS ENTRE 18,5 ET 24,9
select '18,5 < bmi < 24,9' as bmi_moindre, round(avg(charges),2) as moy_charges from insurance
where bmi >= 18.5 and bmi < 25
-- EFFECTIFS POUR BMI COMPRIS ENTRE 18,5 ET 24,9
select '18.5 < bmi < 24,9' as bmi_moindre, count(*) as Effectif_categoriel from insurance
where bmi >= 18.5 and bmi < 25





-- CHARGE MOYENNE POUR BMI COMPRIS ENTRE 25 ET 29,9
select '25 < bmi < 29,9' as bmi_accru_�lev�, round(avg(charges),2) as moy_charges from insurance
where bmi >= 25 and bmi < 30
-- EFFECTIFS POUR BMI COMPRIS ENTRE 25 ET 29,9
select '25 < bmi < 29,9' as bmi_accru_�lev�, count(*) as Effectif_categoriel from insurance
where bmi >= 25 and bmi < 30




-- CHARGE MOYENNE POUR BMI COMPRIS ENTRE 30 ET 34,9
select '30 < bmi < 34.9' as bmi_�lev�, round(avg(charges),2) as moy_charges from insurance
where bmi >= 30 and bmi < 35
-- EFFECTIFS POUR BMI COMPRIS ENTRE 30 ET 34,9
select '30 < bmi < 34.9' as bmi_�lev�, count(*) as Effectif_categoriel from insurance
where bmi >= 30 and bmi < 35




-- CHARGE MOYENNE POUR BMI COMPRIS ENTRE 35 ET 39,9
select '35 < bmi < 39,9' as bmi_tr�s_�lev�, round(avg(charges),2) as moy_charges from insurance
where bmi >= 35 and bmi < 40
-- EFFECTIFS POUR BMI COMPRIS ENTRE 35 ET 39,9
select '35 < bmi < 39,9' as bmi_tr�s_�lev�, count(*) as Effectif_categoriel from insurance
where bmi >= 35 and bmi < 40




-- CHARGE MOYENNE POUR BMI COMPRIS SUPERIEUR OU EGAL � 40
select 'bmi > 40' as bmi_extr�mement_�lev�, round(avg(charges),2) as moy_charges from insurance
where bmi >= 40
-- EFFECTIFS POUR BMI COMPRIS SUPERIEUR OU EGAL � 40
select 'bmi > 40' as bmi_extr�mement_�lev�, count(*) as Effectif_categoriel from insurance
where bmi >= 40




-- Ce regroupement nous permet de mettre en �vidence une correlation positive entre l�IMC et les charges : plus l�IMC est �lev�, plus les frais m�dicaux moyens augmentent.
-- On constate une l�g�re baisse dans la derni�re cat�gorie (IMC > 40), ce qui peut s�expliquer par :
	-- Moins d�individus dans cette tranche (�chantillon plus petit)
	-- Acc�s limit� aux soins ou couverture diff�rente
	-- Nous pouvons v�rifier la premi�re hypoth�se en faisant un comparatif entre les effectifs de toutes les cat�gories de IMC
-- On peut �galement voir que l'augmentation entre les cat�gories bmi moindre et accru (25 < bmi < 29,9) n'est pas tr�s grande
	-- on pourrait l'expliquer �galement par un �cart en effectif non n�gligeable entre ces deux cat�gories comme le montreront les d�comptes suivants





select age from insurance
group by age
order by age

select count(*) as Effectis_total from insurance 

select '18 < age < 25' as Jeunes_adultes, count(*) as Effectif_categoriel from insurance
where age >= 18 and age<=25

select '26 < age < 35' as Adultes, count(*) as Effectif_categoriel from insurance
where age >= 26 and age<= 35

select '36 < age < 45' as Adultes_matures, count(*) as Effectif_categoriel from insurance
where age >= 36 and age<= 45

select '46 < age < 60' as Pr�_retrait�s, count(*) as Effectif_categoriel from insurance
where age >= 46 and age<= 60

select 'age < 61' as Retrait�s, count(*) as Effectif_categoriel from insurance
where age >= 61

-- La manoeuvre effectu�e nous permet de confirmer la premi�re hypoth�se car on constate une diminution nette du nombre d'assur�s 
-- appartenant � la cat�gorie des retrait�s






---------------------------------------CHARGES MOYENNES PAR BMI---------------------------------------------------------------
select '18 < age < 25' as Jeunes_adultes, round(avg(charges),2) as moy_charges from insurance
where age >= 18 and age <=25


select '18 < age < 25' as Jeunes_adultes, round(avg(charges),2) as moy_charges from insurance
where age >= 18 and age <=25