SELECT * 
  FROM product
 WHERE ID IN
       (SELECT DISTINCT productId
          FROM customerOrder
 
        UNION
 
        SELECT DISTINCT productId
          FROM purchaseOrder
	   );