-- 01
INSERT INTO public.account(
    account_firstname,
    account_lastname,
    account_email,
    account_password
  ) VALUES (
    'Tony', 
    'Stark', 
    'tony@starkent.com', 
    'Iam1ronM@n');

-- 02
UPDATE account 
SET account_type = 'Admin' 
WHERE account_id = 1;

-- 03
DELETE FROM account WHERE account_id = 1;

-- 04
UPDATE inventory 
	SET inv_description = 
	REPLACE(inv_description,'small interiors', 'a huge interior' ) 
	WHERE inv_id = 10

-- 05

SELECT inv_make, inv_model, classification_name 
FROM public.inventory
INNER JOIN public.classification
    ON public.inventory.classification_id = classification.classification_id
    WHERE classification_name = 'Sport'

-- 06
UPDATE inventory 
SET inv_image = REPLACE(inv_image,'images/', 'images/vehicles/'), 
inv_thumbnail = REPLACE(inv_thumbnail,'images/', 'images/vehicles/');