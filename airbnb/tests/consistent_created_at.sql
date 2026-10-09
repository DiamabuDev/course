SELECT * 
FROM {{ ref('fct_reviews') }} AS R
LEFT JOIN {{ ref('dim_listings_cleansed') }} AS L
USING (listing_id)
WHERE L.created_at > R.review_date