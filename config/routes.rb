Rails.application.routes.draw do



  # Routes for the Message thread resource:

  # CREATE
  post("/insert_message_thread", { :controller => "message_threads", :action => "create" })
          
  # READ
  get("/message_threads", { :controller => "message_threads", :action => "index" })
  
  get("/message_threads/:path_id", { :controller => "message_threads", :action => "show" })
  
  # UPDATE
  
  post("/modify_message_thread/:path_id", { :controller => "message_threads", :action => "update" })
  
  # DELETE
  get("/delete_message_thread/:path_id", { :controller => "message_threads", :action => "destroy" })

  #------------------------------

  # Routes for the Message resource:

  # CREATE
  post("/insert_message", { :controller => "messages", :action => "create" })
          
  # READ
  get("/messages", { :controller => "messages", :action => "index" })
  
  get("/messages/:path_id", { :controller => "messages", :action => "show" })
  
  # UPDATE
  
  post("/modify_message/:path_id", { :controller => "messages", :action => "update" })
  
  # DELETE
  get("/delete_message/:path_id", { :controller => "messages", :action => "destroy" })

  #------------------------------

  # Routes for the Color resource:

  # CREATE
  post("/insert_color", { :controller => "colors", :action => "create" })
          
  # READ
  get("/colors", { :controller => "colors", :action => "index" })
  
  get("/colors/:path_id", { :controller => "colors", :action => "show" })
  
  # UPDATE
  
  post("/modify_color/:path_id", { :controller => "colors", :action => "update" })
  
  # DELETE
  get("/delete_color/:path_id", { :controller => "colors", :action => "destroy" })

  #------------------------------

  # Routes for the Offspring resource:

  # CREATE
  post("/insert_offspring", { :controller => "offsprings", :action => "create" })
          
  # READ
  get("/offsprings", { :controller => "offsprings", :action => "index" })
  
  get("/offsprings/:path_id", { :controller => "offsprings", :action => "show" })
  
  # UPDATE
  
  post("/modify_offspring/:path_id", { :controller => "offsprings", :action => "update" })
  
  # DELETE
  get("/delete_offspring/:path_id", { :controller => "offsprings", :action => "destroy" })

  #------------------------------

  # Routes for the Faq resource:

  # CREATE
  post("/insert_faq", { :controller => "faqs", :action => "create" })
          
  # READ
  get("/faqs", { :controller => "faqs", :action => "index" })
  
  get("/faqs/:path_id", { :controller => "faqs", :action => "show" })
  
  # UPDATE
  
  post("/modify_faq/:path_id", { :controller => "faqs", :action => "update" })
  
  # DELETE
  get("/delete_faq/:path_id", { :controller => "faqs", :action => "destroy" })

  #------------------------------

  # Routes for the Review resource:

  # CREATE
  post("/insert_review", { :controller => "reviews", :action => "create" })
          
  # READ
  get("/reviews", { :controller => "reviews", :action => "index" })
  
  get("/reviews/:path_id", { :controller => "reviews", :action => "show" })
  
  # UPDATE
  
  post("/modify_review/:path_id", { :controller => "reviews", :action => "update" })
  
  # DELETE
  get("/delete_review/:path_id", { :controller => "reviews", :action => "destroy" })

  #------------------------------

  # Routes for the Product resource:

  # CREATE
  post("/insert_product", { :controller => "products", :action => "create" })
          
  # READ
  get("/products", { :controller => "products", :action => "index" })
  
  get("/products/:path_id", { :controller => "products", :action => "show" })
  
  # UPDATE
  
  post("/modify_product/:path_id", { :controller => "products", :action => "update" })
  
  # DELETE
  get("/delete_product/:path_id", { :controller => "products", :action => "destroy" })

  #------------------------------

  # Routes for the User account:

  # SIGN UP FORM
  get("/user_sign_up", { :controller => "user_authentication", :action => "sign_up_form" })        
  # CREATE RECORD
  post("/insert_user", { :controller => "user_authentication", :action => "create"  })
      
  # EDIT PROFILE FORM        
  get("/edit_user_profile", { :controller => "user_authentication", :action => "edit_profile_form" })       
  # UPDATE RECORD
  post("/modify_user", { :controller => "user_authentication", :action => "update" })
  
  # DELETE RECORD
  get("/cancel_user_account", { :controller => "user_authentication", :action => "destroy" })

  # ------------------------------

  # SIGN IN FORM
  get("/user_sign_in", { :controller => "user_authentication", :action => "sign_in_form" })
  # AUTHENTICATE AND STORE COOKIE
  post("/user_verify_credentials", { :controller => "user_authentication", :action => "create_cookie" })
  
  # SIGN OUT        
  get("/user_sign_out", { :controller => "user_authentication", :action => "destroy_cookies" })
             
  #------------------------------

end
