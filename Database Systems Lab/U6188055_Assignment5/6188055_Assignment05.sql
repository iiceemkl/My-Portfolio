USE NEWS_database;
-- Database System Lab: Assignment #5
-- Name: Mangkhales Ngamjaruskotchakorn
-- ID: 6188055 Section: 1 Date: 3/1/2021

-- Question 1: Show all author with the news that his or her writing, the URL of each news.
SELECT a.Author_Firstname + ' ' + a.Author_Surname as Author_Fullname,
n.NewsTopic,
n.URL as URL_of_this_news
FROM Author a
LEFT JOIN News n ON a.AuthorID = n.AuthorID;

-- Question 2: Show all news and their related topics of those news, who wrote those news, and category.
SELECT n.NewsTopic, 
rt.Topics_Name as RelatedTopics,
a.Author_Firstname + ' ' + a.Author_Surname as Author_Fullname,
c.Category_Name as Category
FROM News n
JOIN RelatedTopics rt ON n.NewsID = rt.NewsID
JOIN Author a ON n.AuthorID = a.AuthorID
JOIN Category c ON n.CategoryID = c.CategoryID;

-- Question 3: Show all news with their published Date and Comment from the user, Author nickname, additional information code, news category.
SELECT n.NewsTopic,n.PublishedDate,
co.Content as News_Comment,
a.Author_Nickname as Author,
rt.RelatedTopicsID as Additional_information,
ca.Category_Name as Category
FROM News n
JOIN Comment co ON n.NewsID = co.NewsID
JOIN Author a ON n.AuthorID = a.AuthorID
JOIN RelatedTopics rt ON n.NewsID = rt.NewsID
JOIN Category ca ON  n.CategoryID = ca.CategoryID;
