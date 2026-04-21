{% docs OrderItemId %}
Unique identifier for each order item record in the source system.  
Used as the primary key for order item entities across Bronze, Silver, and Gold layers.
{% enddocs %}

{% docs OrderId %}
Unique identifier for an order.  
Links order header information to order item details and downstream fact tables.
{% enddocs %}

{% docs ProductId %}
Unique identifier for a product in the source system.  
Used to join product attributes across Bronze, Silver, and Gold layers.
{% enddocs %}

{% docs UnitPrice %}
The price per unit of the product at the time of the transaction.  
Used for calculating extended amounts and revenue metrics.
{% enddocs %}

{% docs Quantity %}
Number of units purchased for a given order item.  
Used in sales calculations and inventory analytics.
{% enddocs %}

{% docs OrderDate %}
The original order date from the source system.  
Represents when the customer placed the order.
{% enddocs %}

{% docs OrderNumber %}
Human‑readable order reference number used in the operational system.  
Not guaranteed to be unique across all systems.
{% enddocs %}

{% docs CustomerId %}
Unique identifier for a customer in the source system.  
Used to link customer attributes across all layers.
{% enddocs %}

{% docs TotalAmount %}
Total monetary amount of the order or order item, depending on context.  
Typically calculated as `Quantity * UnitPrice`.
{% enddocs %}

{% docs ProductName %}
Descriptive name of the product.  
Used for reporting, search, and product categorization.
{% enddocs %}

{% docs SupplierId %}
Unique identifier for the supplier providing the product.  
Used to join supplier attributes across layers.
{% enddocs %}

{% docs Package %}
Packaging description for the product (e.g., “24‑pack”, “1L bottle”).  
Useful for logistics and product grouping.
{% enddocs %}

{% docs IsDiscontinued %}
Indicates whether the product is no longer available for sale.  
Used for lifecycle and assortment analysis.
{% enddocs %}

{% docs CompanyName %}
Name of the supplier company.  
Used for reporting and supplier master data.
{% enddocs %}

{% docs ContactName %}
Primary contact person at the supplier organization.  
Used for operational and vendor management workflows.
{% enddocs %}

{% docs ContactTitle %}
Job title of the supplier contact person.  
Provides additional context for vendor relationship management.
{% enddocs %}

{% docs City %}
City associated with the customer or supplier.  
Used for geographic segmentation and regional reporting.
{% enddocs %}

{% docs Country %}
Country associated with the customer or supplier.  
Used for international reporting and compliance.
{% enddocs %}

{% docs Phone %}
Raw phone number from the source system.  
May contain formatting characters or inconsistent patterns.
{% enddocs %}

{% docs Fax %}
Fax number for the supplier, if available.  
Included for completeness of supplier master data.
{% enddocs %}

{% docs FirstName %}
Customer’s first name, as provided in the source system.  
Used for personalization and customer analytics.
{% enddocs %}

{% docs LastName %}
Customer’s last name, as provided in the source system.  
Used for personalization and customer analytics.
{% enddocs %}

{% docs PhoneDigits %}
Phone number normalized to digits only.  
Used for matching, deduplication, and standardization.
{% enddocs %}

{% docs OrderDateFormatted %}
Standardized order date formatted for analytics and date dimension joins.  
Ensures consistent date handling across the Silver and Gold layers.
{% enddocs %}

{% docs ProductKey %}
Surrogate key for the product dimension in the Gold layer.  
Ensures stable joins between fact and dimension tables.
{% enddocs %}

{% docs CustomerKey %}
Surrogate key for the customer dimension in the Gold layer.  
Used for fact‑to‑dimension relationships.
{% enddocs %}

{% docs PhoneGold %}
Standardized phone number with country code added in the Gold layer.  
Ensures consistent formatting across dimensions.
{% enddocs %}

{% docs DateKey %}
Surrogate key for the date dimension.  
Used for efficient fact table joins.
{% enddocs %}

{% docs Date %}
Calendar date represented in the date dimension.  
Forms the basis for all time‑based analysis.
{% enddocs %}

{% docs Day %}
Day of the month extracted from the date.  
Used for daily reporting and calendar hierarchies.
{% enddocs %}

{% docs Month %}
Month number extracted from the date.  
Used for monthly rollups and time‑series analysis.
{% enddocs %}

{% docs Year %}
Calendar year extracted from the date.  
Used for annual reporting and trend analysis.
{% enddocs %}

{% docs Quarter %}
Quarter of the year (1–4) derived from the date.  
Used for quarterly reporting and financial analysis.
{% enddocs %}

{% docs SupplierKey %}
Surrogate key for the supplier dimension in the Gold layer.  
Used to join supplier attributes to fact tables.
{% enddocs %}

{% docs SalesKey %}
Surrogate key for the fact_sales table.  
Uniquely identifies each sales transaction record.
{% enddocs %}