if Rails.env == "production"
    Rails.application.config.session_store :cookie_store, key: "authentication_app", domain: ""
else
    Rails.application.config.session_store :cookie_store, key: "authentication_app"
end