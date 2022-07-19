use publications;
-- Who Have Published What At Where?
select authors.au_id as Author_id,
		authors.au_lname as last_name,
        authors.au_fname as first_name,
        titles.title as Title,
        publishers.pub_name as publishers
from    
		authors 
inner join
		titleauthor on
        titleauthor.au_id = authors.au_id
inner join
		titles on
        titles.title_id = titleauthor.title_id
inner join
		publishers on
        titles.pub_id= publishers.pub_id
order by 
		Author_id;
        
        
-- Challenge 2 - Who Have Published How Many At Where? 
select authors.au_id as Author_id,
		authors.au_lname as last_name,
        authors.au_fname as first_name,
        publishers.pub_name as publishers,
        count(titles.title) as Title_count
       
from    
		authors 
inner join
		titleauthor on
        titleauthor.au_id = authors.au_id
inner join
		titles on
        titles.title_id = titleauthor.title_id
inner join
		publishers on
        titles.pub_id= publishers.pub_id
group by
		Author_id, publishers
order by 
		Author_id desc;
        
-- Challenge 3 - Best Selling Authors
select authors.au_id as Author_id,
		authors.au_lname as last_name,
        authors.au_fname as first_name,
        count(titles.title) as Total
from    
		authors 
inner join
		titleauthor on
        titleauthor.au_id = authors.au_id
inner join
		titles on
        titles.title_id = titleauthor.title_id
inner join
		sales on
        titleauthor.title_id = sales.title_id
group by
		last_name, first_name
order by 
	    Total desc
        limit 3;
        
-- Challenge 4 - Best Selling Authors Ranking

    select authors.au_id as Author_id,
		authors.au_lname as last_name,
        authors.au_fname as first_name,
        count(titles.title) as Total
from    
		authors 
inner join
		titleauthor on
        titleauthor.au_id = authors.au_id
inner join
		titles on
        titles.title_id = titleauthor.title_id
inner join
		sales on
        titleauthor.title_id = sales.title_id
group by
		last_name, first_name
order by 
	    Total desc
;

    