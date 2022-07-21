-- Creating database and using it

create database budget_children ;
use budget_children ;

-- Selecting all the columns of the table at once

select *
from department_school_education ;

-- Driving insights from the data

-- 1) the gross,recoveries,receipts,net values of each budget starting from 2020 to 2022

select types,Actual_2020_2021_Total,Budget_2021_2022_Total,Budget_2022_2023_Total
from department_school_education
where types in ('Gross','Recoveries','Receipts','Net') ;

/* Gross ,Recoveries and net values are present in the data. The recoveries are negative that means
 the projected value of an asset that can be recovered in the event of a liquidation or wind down is negative */
 
 -- 2) Total-Establishment Expenditure of the Centre when the whole expenditure is of centre
 
 select particulars,Actual_2020_2021_Total,Budget_2021_2022_Total,Budget_2022_2023_Total
 from department_school_education
 where sno='2.01' and particulars='Total-Establishment Expenditure of the Centre';
 /* The expenditure of centre has increased over time in case of education.
 This increase is not equal among all sectors of education.*/
 
 -- 3)Money spent on National Means cum Merit Scholarship Scheme by centre
 select sno,particulars,Actual_2020_2021_Total,Budget_2021_2022_Total,Budget_2022_2023_Total
 from department_school_education
 where  particulars in ('National Means cum Merit Scholarship Scheme','Total- National Means cum Merit Scholarship Scheme') 
 order by sno asc;
 /* The scholarship increase is not much.It needs to be taken into consideration as these money help student to
 continue their education and supplement if neccessary*/
 
-- 4)Money spent for KVS,NVS,CTSA
select sno,particulars,Actual_2020_2021_Total,Budget_2021_2022_Total,Budget_2022_2023_Total
 from department_school_education
 where sno  in ('8','8.01','8.02','8.03','8.04','8.05','9','9.01','9.02','9.03','11') 
 order by sno asc ;
 /* These schools need support of centre as they hav excellent students who reach great heights in 
 future. The support of private players is necessary in skill building*/
 
 -- 5) Amount spent on Teachers Training and Adult Education
 select sno,particulars,Actual_2020_2021_Total,Budget_2021_2022_Total,Budget_2022_2023_Total
 from department_school_education
 where sno ='18.04';
 /* Needs attention as the expenditure has decreased with time. Without good training teachers will not be able to educate properly.
 The model of private sectors can be used as they take exam after the resume screening,reducing the unwanted expenditure */
 
 -- 6) Strengthening Teaching-Learning and Results for States (STARS)
select sno,particulars,Actual_2020_2021_Total,Budget_2021_2022_Total,Budget_2022_2023_Total
from department_school_education
where sno =23 and particulars='Strengthening Teaching-Learning and Results for States (STARS)' ;
/* Results are good.Needs improvement*/

-- 7) Grants statewise and union territory wise
select sno,particulars,Actual_2020_2021_Total,Budget_2021_2022_Total,Budget_2022_2023_Total
from department_school_education
where particulars in ('Grants-in-aid to State Governments','Grants-in-aid to Union Territory Governments')
order by particulars;
/* Results are shown in output. The amount can be used to strenghten each and every area of education*/

