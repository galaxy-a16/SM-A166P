.class public final Lcom/google/android/gms/measurement/internal/a3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Ljava/net/URL;

.field public final b:[B

.field public final c:Lcom/google/android/gms/measurement/internal/z2;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/util/Map;

.field public final synthetic f:Lcom/google/android/gms/measurement/internal/b3;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/b3;Ljava/lang/String;Ljava/net/URL;[BLl/b;Lcom/google/android/gms/measurement/internal/z2;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/a3;->f:Lcom/google/android/gms/measurement/internal/b3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Lva/n;->f(Ljava/lang/String;)V

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/a3;->a:Ljava/net/URL;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/a3;->b:[B

    iput-object p6, p0, Lcom/google/android/gms/measurement/internal/a3;->c:Lcom/google/android/gms/measurement/internal/z2;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/a3;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/measurement/internal/a3;->e:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/a3;->d:Ljava/lang/String;

    const-string v1, "Error closing HTTP compressed POST connection output stream. appId"

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/a3;->f:Lcom/google/android/gms/measurement/internal/b3;

    iget-object v3, v2, Lb0/h;->a:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/t3;->j:Lcom/google/android/gms/measurement/internal/s3;

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/s3;->o()V

    iget-object v3, v2, Lb0/h;->a:Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_0
    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/a3;->a:Ljava/net/URL;

    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v6

    instance-of v7, v6, Ljava/net/HttpURLConnection;

    if-eqz v7, :cond_4

    check-cast v6, Ljava/net/HttpURLConnection;

    invoke-virtual {v6, v4}, Ljava/net/URLConnection;->setDefaultUseCaches(Z)V

    move-object v7, v3

    check-cast v7, Lcom/google/android/gms/measurement/internal/t3;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v7, 0xea60

    invoke-virtual {v6, v7}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    move-object v7, v3

    check-cast v7, Lcom/google/android/gms/measurement/internal/t3;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v7, 0xee48

    invoke-virtual {v6, v7}, Ljava/net/URLConnection;->setReadTimeout(I)V

    invoke-virtual {v6, v4}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/net/URLConnection;->setDoInput(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    :try_start_1
    iget-object v8, p0, Lcom/google/android/gms/measurement/internal/a3;->e:Ljava/util/Map;

    if-eqz v8, :cond_0

    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v6, v10, v9}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    goto :goto_0

    :cond_0
    iget-object v8, p0, Lcom/google/android/gms/measurement/internal/a3;->b:[B

    if-eqz v8, :cond_1

    :try_start_2
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/m5;->b:Lcom/google/android/gms/measurement/internal/q5;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/q5;->g:Lcom/google/android/gms/measurement/internal/b3;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    invoke-virtual {v2, v8}, Lcom/google/android/gms/measurement/internal/b3;->N([B)[B

    move-result-object v2

    move-object v8, v3

    check-cast v8, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v8, v8, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    iget-object v8, v8, Lcom/google/android/gms/measurement/internal/x2;->n:Lcom/google/android/gms/measurement/internal/v2;

    array-length v9, v2

    const-string v10, "Uploading data. size"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v8, v11, v10}, Lcom/google/android/gms/measurement/internal/v2;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/net/URLConnection;->setDoOutput(Z)V

    const-string v7, "Content-Encoding"

    const-string v8, "gzip"

    invoke-virtual {v6, v7, v8}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v9}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    invoke-virtual {v6}, Ljava/net/URLConnection;->connect()V

    invoke-virtual {v6}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    :try_start_3
    invoke-virtual {v7, v2}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    goto/16 :goto_5

    :catch_0
    move-exception v2

    move-object v10, v2

    move v9, v4

    move-object v12, v5

    move-object v5, v7

    goto/16 :goto_8

    :cond_1
    :goto_1
    :try_start_4
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v10
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    :try_start_5
    invoke-virtual {v6}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v13
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    :try_start_6
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {v6}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    const/16 v8, 0x400

    :try_start_7
    new-array v8, v8, [B

    :goto_2
    invoke-virtual {v7, v8}, Ljava/io/InputStream;->read([B)I

    move-result v9

    if-lez v9, :cond_2

    invoke-virtual {v2, v8, v4, v9}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v12
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    check-cast v3, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v0, v3, Lcom/google/android/gms/measurement/internal/t3;->j:Lcom/google/android/gms/measurement/internal/s3;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    new-instance v1, Landroidx/fragment/app/q1;

    iget-object v8, p0, Lcom/google/android/gms/measurement/internal/a3;->d:Ljava/lang/String;

    iget-object v9, p0, Lcom/google/android/gms/measurement/internal/a3;->c:Lcom/google/android/gms/measurement/internal/z2;

    const/4 v11, 0x0

    move-object v7, v1

    invoke-direct/range {v7 .. v13}, Landroidx/fragment/app/q1;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/z2;ILjava/io/IOException;[BLjava/util/Map;)V

    goto/16 :goto_a

    :catchall_1
    move-exception v2

    goto :goto_3

    :catchall_2
    move-exception v2

    move-object v7, v5

    :goto_3
    if-eqz v7, :cond_3

    :try_start_9
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    :cond_3
    throw v2
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :catchall_3
    move-exception v2

    move v7, v10

    move-object v10, v13

    goto :goto_6

    :catch_1
    move-exception v2

    goto :goto_4

    :catchall_4
    move-exception v2

    move v7, v10

    move-object v10, v5

    goto :goto_6

    :catch_2
    move-exception v2

    move-object v13, v5

    :goto_4
    move v9, v10

    move-object v12, v13

    move-object v10, v2

    goto :goto_8

    :catchall_5
    move-exception v2

    move-object v7, v5

    goto :goto_5

    :catch_3
    move-exception v2

    move-object v10, v2

    move v9, v4

    move-object v12, v5

    goto :goto_8

    :cond_4
    :try_start_a
    new-instance v2, Ljava/io/IOException;

    const-string v6, "Failed to obtain HTTP connection"

    invoke-direct {v2, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    :catchall_6
    move-exception v2

    move-object v6, v5

    move-object v7, v6

    :goto_5
    move-object v10, v5

    move-object v5, v7

    move v7, v4

    :goto_6
    if-eqz v5, :cond_5

    :try_start_b
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4

    goto :goto_7

    :catch_4
    move-exception v4

    move-object v5, v3

    check-cast v5, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/x2;->t(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/w2;

    move-result-object v0

    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/x2;->f:Lcom/google/android/gms/measurement/internal/v2;

    invoke-virtual {v5, v1, v0, v4}, Lcom/google/android/gms/measurement/internal/v2;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5
    :goto_7
    if-eqz v6, :cond_6

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_6
    check-cast v3, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v0, v3, Lcom/google/android/gms/measurement/internal/t3;->j:Lcom/google/android/gms/measurement/internal/s3;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    new-instance v1, Landroidx/fragment/app/q1;

    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/a3;->d:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/a3;->c:Lcom/google/android/gms/measurement/internal/z2;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v1

    invoke-direct/range {v4 .. v10}, Landroidx/fragment/app/q1;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/z2;ILjava/io/IOException;[BLjava/util/Map;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/s3;->s(Ljava/lang/Runnable;)V

    throw v2

    :catch_5
    move-exception v2

    move-object v10, v2

    move v9, v4

    move-object v6, v5

    move-object v12, v6

    :goto_8
    if-eqz v5, :cond_7

    :try_start_c
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6

    goto :goto_9

    :catch_6
    move-exception v2

    move-object v4, v3

    check-cast v4, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/x2;->t(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/w2;

    move-result-object v0

    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/x2;->f:Lcom/google/android/gms/measurement/internal/v2;

    invoke-virtual {v4, v1, v0, v2}, Lcom/google/android/gms/measurement/internal/v2;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_7
    :goto_9
    if-eqz v6, :cond_8

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_8
    check-cast v3, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v0, v3, Lcom/google/android/gms/measurement/internal/t3;->j:Lcom/google/android/gms/measurement/internal/s3;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    new-instance v1, Landroidx/fragment/app/q1;

    iget-object v7, p0, Lcom/google/android/gms/measurement/internal/a3;->d:Ljava/lang/String;

    iget-object v8, p0, Lcom/google/android/gms/measurement/internal/a3;->c:Lcom/google/android/gms/measurement/internal/z2;

    const/4 v11, 0x0

    move-object v6, v1

    invoke-direct/range {v6 .. v12}, Landroidx/fragment/app/q1;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/z2;ILjava/io/IOException;[BLjava/util/Map;)V

    :goto_a
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/s3;->s(Ljava/lang/Runnable;)V

    return-void
.end method
