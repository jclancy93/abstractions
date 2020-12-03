SELECT
    owner AS address,
    lower(name) AS label,
    'hagaetc' AS author,
    'ens name' AS type
FROM
    ethereumnameservice."ETHRegistrarController_1_evt_NameRegistered"
WHERE
    evt_block_time >= '{{timestamp}}'
UNION
SELECT
    owner AS address,
    lower(name) AS label,
    'hagaetc' AS author,
    'ens name' AS type
FROM
    ethereumnameservice."ETHRegistrarController_2_evt_NameRegistered"
WHERE
    evt_block_time >= '{{timestamp}}'
UNION
SELECT
    owner AS address,
    lower(name) AS label,
    'hagaetc' AS author,
    'ens name' AS type
FROM
    ethereumnameservice."ETHRegistrarController_3_evt_NameRegistered"
WHERE
    evt_block_time >= '{{timestamp}}';

