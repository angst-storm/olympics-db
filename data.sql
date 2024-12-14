INSERT INTO sports (name) VALUES ('Aquatics');

INSERT INTO
    disciplines (
        code,
        sport_id,
        name,
        governing_body
    )
VALUES (
        'SWM',
        1,
        'Swimming',
        'World Aquatics'
    );

INSERT INTO
    events (
        discipline_code,
        name,
        description
    )
VALUES (
        'SWM',
        '100 metres freestyle (men)',
        'A short, intense sprint race where swimmers compete to complete one lap of a 50-meter pool in the fastest time.'
    ),
    (
        'SWM',
        '200 metres butterfly (men)',
        '200 meters of swimming with a butterfly stroke, requiring speed, endurance, and underwater undulation.'
    ),
    (
        'SWM',
        '200 m breaststroke (men)',
        '200 meters of swimming with a breaststroke, requiring strong arm and leg propulsion and a specific body position.'
    ),
    (
        'SWM',
        '100 metres freestyle (women)',
        'A short, intense sprint race where swimmers compete to complete one lap of a 50-meter pool in the fastest time.'
    ),
    (
        'SWM',
        '200 m butterfly (women)',
        '200 meters of swimming with a butterfly stroke, requiring speed, endurance, and underwater undulation.'
    ),
    (
        'SWM',
        '200 m breaststroke (women)',
        '200 meters of swimming with a breaststroke, requiring strong arm and leg propulsion and a specific body position.'
    );

INSERT INTO
    nocs (
        code,
        name,
        headqurter_country,
        headqurter_city
    )
VALUES (
        'FRA',
        'French National Olympic and Sports Committee',
        'France',
        'Paris'
    ),
    (
        'CHN',
        'Chinese Olympic Committee',
        'Dongcheng, Beijing',
        'China'
    ),
    (
        'AOC',
        'Australian Olympic Committee',
        'Sydney',
        'Australia'
    ),
    (
        'ROU',
        'Romanian Olympic and Sports Committee',
        'Bucharest',
        'Romania'
    ),
    (
        'HUN',
        'Hungarian Olympic Committee',
        'Budapest',
        'Hungary'
    ),
    (
        'CAN',
        'Canadian Olympic Committee',
        'Toronto, Ontario',
        'Canada'
    ),
    (
        'NED',
        'Dutch Olympic Committee*Dutch Sports Federation',
        'National Sports Centre Papendal, near Arnhem',
        'Netherlands'
    ),
    (
        'SWE',
        'Swedish Olympic Committee',
        'Stockholm',
        'Sweden'
    ),
    (
        'USA',
        'United States Olympic & Paralympic Committee',
        'Colorado Springs, Colorado',
        'United States Of America'
    ),
    (
        'HKG',
        'Sports Federation and Olympic Committee of Hong Kong, China',
        'So Kon Po',
        'Hong Kong'
    ),
    (
        'RSA',
        'South African Sports Confederation and Olympic Committee',
        'Johannesburg',
        'South Africa'
    ),
    (
        'AIN',
        'Individual Neutral Athletes',
        'Paris',
        'France'
    );

INSERT INTO
    athletes (
        noc_code,
        first_name,
        middle_name,
        last_name,
        birth_date,
        birth_country,
        passport_number
    )
VALUES (
        'AIN',
        'Sergei',
        'Andreevich',
        'Kiprin',
        'May 9, 2002',
        'Russian Federation',
        '0000000001'
    ),
    (
        'AOC',
        'Izaac',
        'Keith',
        'Stubblety-Cook',
        'January 4, 1999',
        'Australia',
        '0000000008'
    ),
    (
        'SWE',
        'Sarah',
        'Fredrika',
        'Sjöström',
        'August 17, 1993',
        'Sweden',
        '0000000010'
    ),
    (
        'HKG',
        'Siobhán',
        'Bernadette',
        'Haughey',
        'October 31, 1997',
        'Hong Kong, China',
        '0000000012'
    ),
    (
        'CAN',
        'Summer',
        'Ann',
        'McIntosh',
        'August 18, 2006',
        'Canada',
        '0000000013'
    );

INSERT INTO
    athletes (
        noc_code,
        first_name,
        last_name,
        birth_date,
        birth_country,
        passport_number
    )
VALUES (
        'CHN',
        'Pan',
        'Zhanle',
        'August 4, 2004',
        'China',
        '000000002'
    ),
    (
        'AOC',
        'Kyle',
        'Chalmers',
        'June 25, 1998',
        'Australia',
        '000000003'
    ),
    (
        'ROU',
        'David',
        'Popovici',
        'September 15, 2004',
        'Romania',
        '000000004'
    ),
    (
        'FRA',
        'Léon',
        'Marchand',
        'May 17, 2002',
        'France',
        '000000005'
    ),
    (
        'HUN',
        'Kristóf',
        'Milák',
        'February 20, 2000',
        'Hungary',
        '000000006'
    ),
    (
        'CAN',
        'Ilya',
        'Kharun',
        'February 7, 2005',
        'Canada',
        '000000007'
    ),
    (
        'NED',
        'Caspar',
        'Corbeau',
        'April 3, 2001',
        'United States',
        '000000009'
    ),
    (
        'NED',
        'Caspar',
        'Corbeau',
        'April 3, 2001',
        'United States',
        '000000016'
    ),
    (
        'USA',
        'Victoria',
        'Huske',
        'December 7, 2002',
        'United States',
        '000000011'
    ),
    (
        'USA',
        'Regan',
        'Smith',
        'February 9, 2002',
        'United States',
        '000000014'
    ),
    (
        'CHN',
        'Zhang',
        'Yufei',
        'April 19, 1998',
        'China',
        '000000015'
    );
