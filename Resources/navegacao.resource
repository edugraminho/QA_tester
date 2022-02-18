*** Variables ***

&{scene_01}
...    element_home=css:#n2-ss-6-align
...    search_input=css:#s
...    search_element=xpath://*[contains(text(), "Search Results for: ")]
...    search_text=xpath://*[@id="loops-wrapper"]/article[{index}]//h2/a

&{scene_02}
...    element_home=css:#n2-ss-6-align
...    search_input=css:#s
...    search_element=xpath://*[contains(text(), "Search Results for: ")]
...    search_text=xpath://*[@id="content"]/p

&{scene_03}
...    shop_btn=css:#menu-item-40>a
...    shop_element=css:#woocommerce_price_filter-2
...    html_btn=xpath://*[@id="woocommerce_product_categories-2"]//*[contains(text(), "HTML")]
...    search_element=xpath://*[@id="content"]
...    search_product=xpath://*[@id="content"]/ul/li[{index}]/a/h3


&{scene_04}
...    myacc_btn=css:#menu-item-50>a
...    page_element=css:#page-36
...    email_input=css:#reg_email
...    password_input=css:#reg_password
...    submit_btn=xpath://form[@class="register"] //input[@class="woocommerce-Button button"]
...    error_msg=xpath://*[@class="woocommerce-error"]/li
...    check_record=xpath://*[contains(text(), "From your account dashboard you can view your")]