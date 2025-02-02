Rails.application.routes.draw do
  # เพิ่มเส้นทางสำหรับบทความ
  resources :articles
  
  # กำหนดให้หน้าแรกเป็นหน้าแสดงรายการบทความ (index)
  root 'articles#index'
 end