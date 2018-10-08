
# coding: utf-8
# Copyright Jana Schaich Borg/Attribution-NonCommercial 4.0 International (CC BY-NC 4.0)

# # Log in
# In[1]:
get_ipython().magic('load_ext sql')
# In[2]:
get_ipython().magic('sql mysql://studentuser:studentpw@mysqlserver/dognitiondb')
# In[3]:
get_ipython().magic('sql USE dognitiondb')



# # Look at database
# In[4]:
get_ipython().magic('sql SHOW tables')
# In[5]:
get_ipython().magic('sql SHOW columns FROM reviews')
# In[6]:
get_ipython().magic('sql DESCRIBE users')
# In[7]:
get_ipython().magic('sql DESCRIBE dogs')
# In[8]:
get_ipython().magic('sql DESCRIBE exam_answers')
# In[9]:
get_ipython().magic('sql DESCRIBE complete_tests')
# In[10]:
get_ipython().magic('sql DESCRIBE site_activities')
# In[12]:
get_ipython().run_cell_magic('sql', '', 'SELECT activity_type FROM site_activities ORDER BY RAND() LIMIT 6;')
# In[18]:
get_ipython().magic('sql SELECT breed FROM dogs LIMIT 10')
# In[20]:
get_ipython().magic('sql SELECT breed FROM dogs LIMIT 10 OFFSET 2;')
# In[21]:
get_ipython().magic('sql SELECT breed FROM dogs LIMIT 3,10')
# In[23]:
get_ipython().magic('sql SELECT breed, breed_type, breed_group FROM dogs LIMIT 3,6')




# In[25]:
get_ipython().magic('sql SELECT * FROM dogs LIMIT 3, 5;')
# In[27]:
get_ipython().magic('sql SELECT median_iti_minutes / 60 FROM dogs LIMIT 5, 10;')
# In[29]:
get_ipython().magic('sql SELECT dog_guid, subcategory_name, test_name FROM reviews LIMIT 15;')
# In[30]:
get_ipython().magic('sql SELECT activity_type, created_at, updated_at FROM site_activities LIMIT 50,10')
# those activity create and update at the same time meaning that only play one time
# In[31]:
get_ipython().magic('sql SELECT * FROM users LIMIT 2000,20')
# In[34]:
get_ipython().magic('sql SELECT activity_type,test_name,dog_guid  FROM site_activities LIMIT 10')
