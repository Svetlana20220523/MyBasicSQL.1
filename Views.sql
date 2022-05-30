CREATE VIEW vw_goods_and_vw_goods_categories AS
 SELECT a.id_goods, a.id_goods_category, a.goods, s.id_categories
  FROM goods AS a
   INNER JOIN goods_categories AS s
   ON s.id_categories = a.id_categories
 

CREATE VIEW vw_goods_and_vw_goods_categories1 AS
 SELECT a.id_goods, a.id_goods_category, a.goods, a.id_categories, c.num
  FROM  vw_goods_and_vw_goods_categories1 AS a
   INNER JOIN goods_categories AS c
   ON c.id_categories = a.id_categories
     ORDER BY a.id_goods, c.num;
   
   
   SELECT goods, num
   FROM vw_goods_and_vw_goods_categories1
   
   