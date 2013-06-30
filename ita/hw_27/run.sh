#!/bin/bash

# This command executes the test



bundle exec ruby ./lib/static_element_validation.rb -d www.khatilov.com -p ./etc/test_specs/khatilovdotcom_page_urls_attributes.json -o ./reports/attributes.txt

bundle exec ruby ./lib/static_element_validation.rb -d www.khatilov.com -p ./etc/test_specs/khatilovdotcom_page_urls_elements.json -o ./reports/elements.txt

bundle exec ruby ./lib/static_element_validation.rb -d www.khatilov.com -p ./etc/test_specs/khatilovdotcom_page_urls.json -o ./reports/urls.txt

