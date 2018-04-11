def recommand_book(id_etu):
    # coding: utf-8

    # In[10]:


    import pymysql.cursors

    # Connect to the database
    connection = pymysql.connect(host='localhost',
                                user='root',
                                password='',
                                db='printerproject',
                                cursorclass=pymysql.cursors.DictCursor)

    try:
        with connection.cursor() as cursor:
            # Read a single record
            sql = "SELECT `id_Etudiant`, `Livre_name`, `Livre_theme` FROM `history`, `books` WHERE books.ISBN = history.ISBN"
            cursor.execute(sql)
            result = cursor. fetchall()
            #print(result)
            sql = "SELECT `Id_Etudiant`, `Livre_theme`, COUNT(*) as C FROM `history`, `books` WHERE books.ISBN = history.ISBN GROUP BY Livre_theme, Id_Etudiant"
            cursor.execute(sql)
            result2 = cursor. fetchall()
            #print(result2)
            sql = "SELECT `Id_Etudiant`, `Livre_theme` FROM `history`, `books` WHERE books.ISBN = history.ISBN GROUP BY Livre_theme, Id_Etudiant"
            cursor.execute(sql)
            result3 = cursor. fetchall()
            #print(result3)
            sql = "SELECT MAX(`Id_Etudiant`)FROM `history`"
            cursor.execute(sql)
            max_id = cursor. fetchall()
            #print(max_id)
    finally:
        connection.close()
    #print(result3)
    themes_per_id = [];
    max_id[0]['MAX(`Id_Etudiant`)'] = max_id[0]['MAX(`Id_Etudiant`)'] + 1
    max_id_int = max_id[0]['MAX(`Id_Etudiant`)']
    #print(max_id_int)
    #print(len(result3))
    #for i in range(0, len(result3)):
    #    s = result3[i]['Livre_theme']
    #    result3[i]['Livre_theme']=[]
    #    result3[i]['Livre_theme'].append(s)
    for i in range(0, max_id_int):
        l = len(result3)
        for j in range(0, len(result3)):
            if(result3[j]['Id_Etudiant'] == result3[i]['Id_Etudiant'] and j != i):
                #result3[i]['Livre_theme'].append(result3[j]['Livre_theme'])
                result3[i]['Livre_theme']+=","
                result3[i]['Livre_theme']+=(result3[j]['Livre_theme'])
                result3[j]['Livre_theme'] = ""
    result4 = []
    for j in range(0, len(result3)):
        if(result3[j]['Livre_theme'] != ""):
            result3[j]['Livre_theme'] = [x for x in result3[j]['Livre_theme'].split(',') if x]
            result4.append(result3[j])
    #print(result4)
    #print(result4[0]['Livre_theme'])
    #print(result4[73]['Livre_theme'])
    def get_max_length(array1, array2):
        if(len(array1) > len(array2)):
            return 1
        return 2
    def count_different(array1, array2):
        ans = 0
        s1 = set(array1)
        s2 = set(array2)
        temp1 = [x for x in array1 if x not in s2]
        temp2 = [x for x in array2 if x not in s1]
        temp3 = temp1 + temp2
        return temp3
    #print(count_different(result4[0]['Livre_theme'],result4[73]['Livre_theme']))
    from operator import itemgetter
    newlist = sorted(result4, key=itemgetter('Id_Etudiant')) 
    #print(newlist)


    # In[11]:


    import numpy as np
    dist_matrix = np.zeros((max_id_int, max_id_int))
    dist_matrix[:] = np.nan
    #print(max_id_int)
    def get_index(result, index):
        ans = -1;
        for i in range(len(result)):
            if result[i]['Id_Etudiant'] == index:
                ans = i
                return ans
        return ans
            
    def distance_theme(result):
        for i in range(1, max_id_int):
            index_i_in_result = get_index(result, i)
            if index_i_in_result != -1:
                for j in range(1, max_id_int):
                    index_j_in_result = get_index(result, j) 
                    if index_j_in_result != -1:
                        dist_matrix[i][j] = len(count_different(result[index_i_in_result]['Livre_theme'], result[index_j_in_result]['Livre_theme']))
                        #print("i=%d,j=%d, l=%d" % (i, j, dist_matrix[i][j]))
    distance_theme(newlist)
    array_max = np.nanmax(dist_matrix, axis=1)
    array_max = np.nan_to_num(array_max)
    array_max = set(array_max)
    array_max = sorted(array_max, reverse=True)
    #print(array_max)


    # In[12]:


    import math
    k = 3 # number of clusters
    k_copy = k
    clusters_centers = []
    clusters_dic = {}

    # Randomly choose first two farthest Ids
    def choose_first_two_centers(max_id_int, array_max):
        for i in range(1,max_id_int):
            for j in range(1, max_id_int):
                if dist_matrix[i][j] == array_max[0]:
                    clusters_centers.append(i)
                    clusters_centers.append(j)
                    return
    choose_first_two_centers(max_id_int, array_max)
    k -= 2
    dist_to_set = np.zeros((max_id_int, len(clusters_centers)))
    dist_to_set[:] = np.nan
    #choose remaining centers by calculating the distance to the set of the first two Ids

    def choose_farthest_next_centers(result, max_id_int, k, dist_to_set):
        while k > 0:
            for i in range(1,max_id_int):
                index_i_in_result = get_index(result, i)
                if index_i_in_result != -1:
                    for j in range(0, len(clusters_centers)):
                        if i not in clusters_centers:
                            dist_to_set[i][j] = len(count_different(result[index_i_in_result]['Livre_theme'], result[get_index(result, clusters_centers[j])]['Livre_theme']))
            array_dist_to_set = np.nanmin(dist_to_set, axis=1)
            array_dist_to_set = np.nan_to_num(array_dist_to_set)
            next_center = np.argmax(array_dist_to_set)
            clusters_centers.append(next_center)
            k -= 1
            dist_to_set = np.zeros((max_id_int, len(clusters_centers)))
            dist_to_set[:] = np.nan

    choose_farthest_next_centers(newlist, max_id_int, k, dist_to_set)
        
    for i in range(0,k_copy):
        key = clusters_centers[i]
        clusters_dic[key] = []

    def find_nearest(array,value):
        idx = (np.abs(array-value)).argmin()
        return idx

    for i in range(1, max_id_int):
        values = []
        for j in clusters_centers:
            if not math.isnan(dist_matrix[i][j]):
                values.append(dist_matrix[i][j])
            else:
                values.append(math.inf)
        values = np.asarray(values)
        key = find_nearest(values, 0)
        clusters_dic[clusters_centers[key]].append(i)
    #print(clusters_centers)
    #print(clusters_dic)


    # In[13]:


    import random

    def recommend(clusters_dic, clusters_centers, id_etudiant):
        for i in clusters_centers:
            if id_etudiant in clusters_dic[i]:
                near_id = random.choice(clusters_dic[i])
                while near_id == id_etudiant:
                    near_id = random.choice(clusters_dic[i])
                return near_id
        id_generated = id_etudiant
        while id_generated == id_etudiant:
            id_generated = random.randint(1,max_id_int-2)
        return id_generated
    id_recommended = recommend(clusters_dic, clusters_centers, id_etu)
    recommended_theme = ""
    for i in range(0, len(newlist)):
        if(newlist[i]['Id_Etudiant'] == id_recommended):
            recommended_theme = random.choice(newlist[i]['Livre_theme'])
            break
    # Connect to the database
    connection = pymysql.connect(host='localhost',
                                user='root',
                                password='',
                                db='printerproject',
                                cursorclass=pymysql.cursors.DictCursor)

    try:
        with connection.cursor() as cursor:
            # Read a single record
            sql = "SELECT `Livre_name`, `Livre_theme` FROM `books` WHERE books.Livre_theme = '" + recommended_theme + "'"
            cursor.execute(sql)
            books = cursor. fetchall()
    finally:
        connection.close()
    if(books):
        random_recommended_book = random.choice(books)['Livre_name']
        recommanded_theme_for_book = random.choice(books)['Livre_theme']
    else:
        while(not books):
            random_theme = random.choice(newlist)['Livre_theme'][0]
            # Connect to the database
            connection = pymysql.connect(host='localhost',
                                        user='root',
                                        password='',
                                        db='printerproject',
                                        cursorclass=pymysql.cursors.DictCursor)

            try:
                with connection.cursor() as cursor:
                    # Read a single record
                    sql = "SELECT `Livre_name`, `Livre_theme` FROM `books` WHERE books.Livre_theme = '" + random_theme + "'"
                    cursor.execute(sql)
                    books = cursor. fetchall()
            finally:
                connection.close()
        random_recommended_book = random.choice(books)['Livre_name']
        recommanded_theme_for_book = random.choice(books)['Livre_theme']
    #print("Recommanded Book: ", random_recommended_book)
    #print("Recommanded Book's Theme: ", recommanded_theme_for_book)

    # In[15]:


    #import pymysql.cursors
    #from random import randint

    # Connect to the database
    #connection = pymysql.connect(host='localhost',
    #                             user='root',
    #                             password='',
    #                             db='printerproject',
    #                             cursorclass=pymysql.cursors.DictCursor)

    #try:
    #    with connection.cursor() as cursor:
    #        sql = "SELECT `Livre_name` FROM `books`"
    #        cursor.execute(sql)
    #        list_books = cursor. fetchall()
    #        print(list_books)
    #        sql = "SELECT `Livre_theme` FROM `books`"
    #        cursor.execute(sql)
    #        list_themes = cursor. fetchall()
    #        print(list_themes)
    #        for i in list_books:
    #            j = randint(0, 100)
    #           # Read a single record
    #            sql = "UPDATE `books` SET `Livre_name`='"+ str(j) +"' WHERE `Livre_name`='"+i['Livre_name']+"'"
    #            cursor.execute(sql)
    #            connection.commit()
    #        for k in list_themes:
    #            j = randint(1, 7)
    #            sql = "UPDATE `books` SET `Livre_theme`='"+ str(j) +"' WHERE `Livre_theme`='"+k['Livre_theme']+"'"
    #            cursor.execute(sql)
    #            connection.commit()
    #finally:
    #    connection.close()


    # In[17]:


    #Data
    books = {'Aventure': ['butterfly of yesterday', 'rat of power', 'boys of the ocean', 'trees of the sea', 
                        'turtles and invaders', 'foes and spies', 'harmony of tomorrow', 'disruption of the day', 
                        'justice in my enemies', 'changing my past', 'lion of the solstice', 'descendant of time',
                        'pilots of greatness','pirates without time','turtles and armies','aliens and kings',
                        'will of the frontline','destiny without direction','screams at the town','shelter in my friends'],
            'Romance': ['visitor in the forest', 'sweetie with brown hair', 'knights without fear', 
                        'neighbors of joy', 'boyfriends and girls', 'strangers and knights',
                        'accident of bliss', 'romance of rainbows', 'listening to myself', 'smile at my man',
                        'man with blond hair','girlfriend of my admiration','foreigners with curly hair',
                        'angels of paradise','knights and girlfriends','nymphs and wifes','vision of devotion',
                        'destiny of the evening','guarding my nightmares','lucky with the husband'], 
            'Drama': ['woman of darkness','inventor of agony','collectors of the forest','saviors without a goal',
                        'collectors and friends', 'butchers and companions', 'accidents without hope', 'anger of dread', 'searching in the mines'
                        'cruelty of my future'],
            'Fantasy': ['defender of heaven', 'hero of limbo', 'priests of my imagination', 'men without sin',
                            'wizards and children', 'bandits and swindlers', 'demise of whispers', 'spells without sin',
                            'challenging the jungle', 'bound to my end'],
            'Horreur':['witch in the lake', 'owl at the lake', 'rats in the castle', 'boys in my nightmares',
                        'figures and cats', 'visitors and spiders', 'hands in the fog', 'footsteps in my closet', 'rotten in the shadows'
                        'forsaken in the graveyard'], 
            'Mystery': ['foreigner of tomorrow', 'rebel of outer space', 'slaves of a dog', 'trees in the city',
                        'lords and companions', 'priests and wives', 'explosion of a person', 'predictions of darkness',
                        'shrouded by the fog', 'guilt of the world', 'slave of a person','descendant of light',
                        'hunters of the mountain','foes of a painting','serpents and figures','officers and lions',
                        'explosion in the lake','enigma of tomorrow','hatred of my destiny','enchanted by the end'],
            'Science_Fiction': ['human of the ocean', 'commander of the sands', 'boys of the worlds', 'martians of outer space',
                                'friends and volunteers', 'aliens and traitors', 'planet of time', 'end of the universe',
                                'courage for the secrets', 'alive in a nuclear war']}
    return random_recommended_book, recommanded_theme_for_book

def gray_Scale(imgname):
    # In[14]:
    from PIL import Image
    img = Image.open(open(imgname,'rb')).convert('LA')
    #img = Image.open(imgname+'.png').convert('LA')
    imgGray = imgname+'Gray.png'
    img.save(imgGray)
    return imgGray
    #https://raspberrypi.stackexchange.com/questions/45570/how-do-i-make-serial-work-on-the-raspberry-pi3
    #Do not change "root=/dev/mmcblk0p2"
    #Then enable GPIO: sudo raspi-config, then, Choose interfacing options, then, Remote GPIO, then Reboot

