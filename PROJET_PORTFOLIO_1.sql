select*from insurance


select avg(charges) as moy_charge, age from insurance 
group by age
order by age

---------------------------------------EFFECTIFS ET CHARGES MOYENNES PAR BMI---------------------------------------------------------------

-- CHARGE MOYENNE POUR BMI < 18,5
select 'bmi < 18.5' as bmi_accru, round(avg(charges),2) as moy_charges from insurance
where bmi < 18.5
-- EFFECTIFS POUR BMI COMPRIS INFERIEUR À 18,5
select '18.5 < bmi' as bmi_accru, count(*) as Effectif_categoriel from insurance
where bmi < 18.5 




-- CHARGE MOYENNE POUR BMI COMPRIS ENTRE 18,5 ET 24,9
select '18,5 < bmi < 24,9' as bmi_moindre, round(avg(charges),2) as moy_charges from insurance
where bmi >= 18.5 and bmi < 25
-- EFFECTIFS POUR BMI COMPRIS ENTRE 18,5 ET 24,9
select '18.5 < bmi < 24,9' as bmi_moindre, count(*) as Effectif_categoriel from insurance
where bmi >= 18.5 and bmi < 25





-- CHARGE MOYENNE POUR BMI COMPRIS ENTRE 25 ET 29,9
select '25 < bmi < 29,9' as bmi_accru_élevé, round(avg(charges),2) as moy_charges from insurance
where bmi >= 25 and bmi < 30
-- EFFECTIFS POUR BMI COMPRIS ENTRE 25 ET 29,9
select '25 < bmi < 29,9' as bmi_accru_élevé, count(*) as Effectif_categoriel from insurance
where bmi >= 25 and bmi < 30




-- CHARGE MOYENNE POUR BMI COMPRIS ENTRE 30 ET 34,9
select '30 < bmi < 34.9' as bmi_élevé, round(avg(charges),2) as moy_charges from insurance
where bmi >= 30 and bmi < 35
-- EFFECTIFS POUR BMI COMPRIS ENTRE 30 ET 34,9
select '30 < bmi < 34.9' as bmi_élevé, count(*) as Effectif_categoriel from insurance
where bmi >= 30 and bmi < 35




-- CHARGE MOYENNE POUR BMI COMPRIS ENTRE 35 ET 39,9
select '35 < bmi < 39,9' as bmi_très_élevé, round(avg(charges),2) as moy_charges from insurance
where bmi >= 35 and bmi < 40
-- EFFECTIFS POUR BMI COMPRIS ENTRE 35 ET 39,9
select '35 < bmi < 39,9' as bmi_très_élevé, count(*) as Effectif_categoriel from insurance
where bmi >= 35 and bmi < 40




-- CHARGE MOYENNE POUR BMI COMPRIS SUPERIEUR OU EGAL À 40
select 'bmi > 40' as bmi_extrêmement_élevé, round(avg(charges),2) as moy_charges from insurance
where bmi >= 40
-- EFFECTIFS POUR BMI COMPRIS SUPERIEUR OU EGAL À 40
select 'bmi > 40' as bmi_extrêmement_élevé, count(*) as Effectif_categoriel from insurance
where bmi >= 40




-- Ce regroupement nous permet de mettre en évidence une correlation positive entre l’IMC et les charges : plus l’IMC est élevé, plus les frais médicaux moyens augmentent.
-- On constate une légère baisse dans la dernière catégorie (IMC > 40), ce qui peut s’expliquer par :
	-- Moins d’individus dans cette tranche (échantillon plus petit)
	-- Accès limité aux soins ou couverture différente
	-- Nous pouvons vérifier la première hypothèse en faisant un comparatif entre les effectifs de toutes les catégories de IMC
-- On peut également voir que l'augmentation entre les catégories bmi moindre et accru (25 < bmi < 29,9) n'est pas très grande
	-- on pourrait l'expliquer également par un écart en effectif non négligeable entre ces deux catégories comme le montreront les décomptes suivants





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

select '46 < age < 60' as Pré_retraités, count(*) as Effectif_categoriel from insurance
where age >= 46 and age<= 60

select 'age < 61' as Retraités, count(*) as Effectif_categoriel from insurance
where age >= 61

-- La manoeuvre effectuée nous permet de confirmer la première hypothèse car on constate une diminution nette du nombre d'assurés 
-- appartenant à la catégorie des retraités






---------------------------------------CHARGES MOYENNES PAR BMI---------------------------------------------------------------
select '18 < age < 25' as Jeunes_adultes, round(avg(charges),2) as moy_charges from insurance
where age >= 18 and age <=25


select '18 < age < 25' as Jeunes_adultes, round(avg(charges),2) as moy_charges from insurance
where age >= 18 and age <=25