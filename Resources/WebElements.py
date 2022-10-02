# --- BEGIN HeaderPage locators ---
headerpage_search_box = 'id:gh-ac'
headerpage_search_button = 'id:gh-btn'
headerpage_advanced_search_link = 'xpath://*[@id="gh-as-a"]'
# --- END HeaderPage locators ---


# --- BEGIN LandingPage LOCATORS ---
# --- END LandingPage LOCATORS ---


# --- BEGIN ProductDetailsPage LOCATORS ---
# --- END ProductDetailsPage LOCATORS ---


# --- BEGIN SearchResultsPage LOCATORS ---
# Expected text on the search results page (e.g. "results for books")
searchresultspage_results_for_text = "results for"

# Condition dropdown and "New" option in the menu
searchresultspage_condition_dropdown_xpath = "xpath: /html/body/div[5]/div[4]/div[1]/div/div[1]/div[2]/div[2]/span[1]/button/span/span"
searchresultspage_condition_new_xpath = "xpath: /html/body/div[5]/div[4]/div[1]/div/div[1]/div[2]/div[2]/span[1]/span/div/div[2]/span[2]"

# Shipping dropdown and "Free shipping" option in the menu
searchresultspage_shipping_dropdown_xpath = "xpath: /html/body/div[5]/div[4]/div[1]/div/div[1]/div[2]/div[2]/span[2]/button/span/span"
searchresultspage_shipping_free_xpath = "xpath: /html/body/div[5]/div[4]/div[1]/div/div[1]/div[2]/div[2]/span[2]/span/div/div/span[2]"

# Button user clicks to show the currently applied filters
searchresultspage_filters_applied_btn_xpath = "xpath: /html/body/div[5]/div[4]/div[2]/div[1]/div[2]/ul/li[1]/div/div/div/div/div/ul/li[1]/div/div/button"

# Elements we expect to see when the user clicks the filter above
searchresultspage_shipping_free_element_xpath = "xpath: /html/body/div[5]/div[4]/div[2]/div[1]/div[2]/ul/li[1]/div/div/div/div/div/ul/li[1]/div/div/div/ul/li[1]/a"
searchresultspage_shipping_free_remove_element_xpath = "xpath: /html/body/div[5]/div[4]/div[2]/div[1]/div[2]/ul/li[1]/div/div/div/div/div/ul/li[1]/div/div/div/ul/li[1]/a/span"
searchresultspage_condition_new_element_xpath = "xpath: /html/body/div[5]/div[4]/div[2]/div[1]/div[2]/ul/li[1]/div/div/div/div/div/ul/li[1]/div/div/div/ul/li[2]/a"
searchresultspage_condition_new_remove_element_xpath = "xpath: /html/body/div[5]/div[4]/div[2]/div[1]/div[2]/ul/li[1]/div/div/div/div/div/ul/li[1]/div/div/div/ul/li[2]/a/span"

# Values we expect to see in the above elements
searchresultspage_shipping_filter_expected_text = "Free shipping"
searchresultspage_condition_filter_expected_text = "New"
searchresultspage_remove_filter_expected_text = "Remove filter"
# --- END SearchResultsPage LOCATORS ---