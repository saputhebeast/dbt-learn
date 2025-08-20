WITH raw_listings AS (SELECT *
                      FROM {{ source('airbnb', 'listings') }})
SELECT ID   AS listing_id,
       LISTING_URL,
       NAME AS listing_name,
       ROOM_TYPE,
       MINIMUM_NIGHTS,
       HOST_ID,
       PRICE,
       CREATED_AT,
       UPDATED_AT
FROM raw_listings
