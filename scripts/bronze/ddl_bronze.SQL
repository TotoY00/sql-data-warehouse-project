
USE DataWarehouse;

IF OBJECT_ID ('bronze.crm_cust_info' , 'u') IS NOT NULL
    DROP TABLE bronze.crm_cust_info;
CREATE TABLE bronze.crm_cust_info (
	cst_id INT,
    cst_key VARCHAR(50),
    cst_firstname VARCHAR(50),
    cst_lastname VARCHAR(50),
    cst_material_status VARCHAR(50),
    cst_gndr VARCHAR(50),
    cst_create_date DATE
);


IF OBJECT_ID ('bronze.crm_prod_info' , 'u') IS NOT NULL
    DROP TABLE bronze.crm_prod_info; 
CREATE TABLE bronze.crm_prod_info (
	prd_id INT,
    prd_key VARCHAR(50),
    prd_nm VARCHAR(50),
    prd_cost INT,
    prd_line VARCHAR(50),
    prd_start_dt DATETIME,
    prd_end_dt DATETIME
);


IF OBJECT_ID ('bronze.crm_sales_details' , 'u') IS NOT NULL
    DROP TABLE bronze.crm_sales_details;
CREATE TABLE bronze.crm_sales_details (
	sls_ord_num VARCHAR(50),
    sls_prd_key VARCHAR(50),
    sls_cust_id INT,
    sls_order_dt INT,
    sls_ship_dt INT,
    sls_due_dt INT,
    sls_sales INT,
    sls_quantity INT,
    sls_price INT
);

IF OBJECT_ID ('bronze.erp_cust_az12' , 'u') IS NOT NULL
    DROP TABLE bronze.erp_cust_az12;
CREATE TABLE bronze.erp_cust_az12 (
	cust_cid VARCHAR(50),
    cust_bdate DATE,
    cust_gen VARCHAR(50)
);

IF OBJECT_ID ('bronze.erp_loc_a101' , 'u') IS NOT NULL
    DROP TABLE bronze.erp_loc_a101;
CREATE TABLE bronze.erp_loc_a101 (
	loc_cid VARCHAR(50),
    loc_cntry VARCHAR(50)
);

IF OBJECT_ID ('bronze.erp_px_cat_g1v2' , 'u') IS NOT NULL
    DROP TABLE bronze.erp_px_cat_g1v2;
CREATE TABLE bronze.erp_px_cat_g1v2 (
	px_id VARCHAR(50),
    px_cat VARCHAR(50),
    px_subcat VARCHAR(50),
    px_maint VARCHAR(50)
);
