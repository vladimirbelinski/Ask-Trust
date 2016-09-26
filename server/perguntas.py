def pegcoisas(conn, c):
    c.execute("SELECT * FROM pergunta")
    palavra = c.fetchall()
    return palavra
