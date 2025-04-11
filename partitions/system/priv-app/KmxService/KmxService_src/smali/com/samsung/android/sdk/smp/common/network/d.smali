.class public abstract Lcom/samsung/android/sdk/smp/common/network/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Lv1/i;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/net/Uri;
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/sdk/smp/common/network/d;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/v3/applications"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    sget v0, Lfc/e;->a:I

    const-string v0, "allArea"

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x63

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    const/16 v1, 0x67

    if-eq v0, v1, :cond_0

    invoke-static {p0}, Lf9/c;->G(Landroid/content/Context;)Lf9/c;

    move-result-object p0

    monitor-enter p0

    :try_start_0
    const-string v0, "baseUrl"

    invoke-virtual {p0, v0, v2}, Le9/b;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    return-object v2
.end method

.method public static f(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lcom/samsung/android/sdk/smp/common/network/d;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "cn"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "c"

    goto :goto_0

    :cond_0
    const-string v0, "g"

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " ("

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    return-object p1
.end method

.method public static g(Ljava/lang/Exception;)Lb0/a;
    .locals 8

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "d"

    invoke-static {v1, v0}, Lj3/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    instance-of v0, p0, Ljava/lang/InterruptedException;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const-string p0, "request fail. interruption occurs"

    invoke-static {v1, p0}, Lj3/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lb0/a;

    const/16 v0, 0x3f6

    invoke-direct {p0, v2, v0}, Lb0/a;-><init>(ZI)V

    return-object p0

    :cond_0
    instance-of v0, p0, Ljava/util/concurrent/TimeoutException;

    instance-of v3, p0, Lcom/android/volley/TimeoutError;

    or-int/2addr v0, v3

    if-eqz v0, :cond_1

    const-string p0, "request fail. timeout"

    invoke-static {v1, p0}, Lj3/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lb0/a;

    const/16 v0, 0x3eb

    invoke-direct {p0, v2, v0}, Lb0/a;-><init>(ZI)V

    return-object p0

    :cond_1
    instance-of v0, p0, Ljava/util/concurrent/ExecutionException;

    const/16 v3, 0x44c

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    instance-of v4, v4, Lcom/android/volley/VolleyError;

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    check-cast v4, Lcom/android/volley/VolleyError;

    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    iget-object v4, v4, Lcom/android/volley/VolleyError;->networkResponse:Lv1/f;

    if-nez v4, :cond_4

    goto :goto_1

    :cond_4
    iget-object v5, v4, Lv1/f;->b:[B

    if-eqz v5, :cond_5

    new-instance v6, Ljava/lang/String;

    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v6, v5, v7}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_0

    :cond_5
    const-string v6, ""

    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "request fail. error - "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v4, Lv1/f;->a:I

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lj3/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    move-object v0, v6

    :cond_6
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "request fail. "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lj3/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Lcom/android/volley/AuthFailureError;

    if-eqz v1, :cond_7

    new-instance p0, Lb0/a;

    const/16 v0, 0x3f3

    invoke-direct {p0, v2, v0}, Lb0/a;-><init>(ZI)V

    return-object p0

    :cond_7
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Lcom/android/volley/NoConnectionError;

    if-eqz v1, :cond_8

    new-instance p0, Lb0/a;

    const/16 v0, 0x3ea

    invoke-direct {p0, v2, v0}, Lb0/a;-><init>(ZI)V

    return-object p0

    :cond_8
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Lcom/android/volley/NetworkError;

    if-eqz v1, :cond_9

    new-instance p0, Lb0/a;

    const/16 v0, 0x3f2

    invoke-direct {p0, v2, v0}, Lb0/a;-><init>(ZI)V

    return-object p0

    :cond_9
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Lcom/android/volley/ParseError;

    if-eqz v1, :cond_a

    new-instance p0, Lb0/a;

    const/16 v0, 0x3f7

    invoke-direct {p0, v2, v0}, Lb0/a;-><init>(ZI)V

    return-object p0

    :cond_a
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Lcom/android/volley/ServerError;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    if-eqz v1, :cond_b

    check-cast p0, Lcom/android/volley/ServerError;

    iget-object p0, p0, Lcom/android/volley/VolleyError;->networkResponse:Lv1/f;

    new-instance v1, Lb0/a;

    iget p0, p0, Lv1/f;->a:I

    invoke-direct {v1, v0, p0, v2}, Lb0/a;-><init>(Ljava/lang/String;IZ)V

    return-object v1

    :cond_b
    instance-of p0, p0, Lcom/samsung/android/sdk/smp/common/network/NetworkManager$CDNVolleyRequest$DiscFullError;

    if-eqz p0, :cond_c

    new-instance p0, Lb0/a;

    const/16 v0, 0x3ec

    invoke-direct {p0, v2, v0}, Lb0/a;-><init>(ZI)V

    return-object p0

    :cond_c
    new-instance p0, Lb0/a;

    invoke-direct {p0, v0, v3, v2}, Lb0/a;-><init>(Ljava/lang/String;IZ)V

    return-object p0

    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "request fail. unknown error - "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lj3/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lb0/a;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, v3, v2}, Lb0/a;-><init>(Ljava/lang/String;IZ)V

    return-object v0
.end method

.method public static i(Landroid/content/Context;Lcom/samsung/android/sdk/smp/common/network/d;I)Lb0/a;
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    const-string v4, "request success. response : "

    const-string v5, "request. uri : "

    const-string v6, "d"

    const/16 v7, 0x3f0

    const/4 v8, 0x0

    if-eqz v1, :cond_8

    if-gez v3, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {v2, v1}, Lcom/samsung/android/sdk/smp/common/network/d;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    const/16 v10, 0xc8

    const/4 v11, 0x1

    if-eqz v9, :cond_4

    new-instance v0, Lcom/samsung/android/sdk/smp/marketing/a;

    invoke-static {}, Lfc/e;->m()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, v9, v11}, Lcom/samsung/android/sdk/smp/marketing/a;-><init>(Ljava/lang/String;I)V

    const/16 v9, 0x3c

    invoke-static {v1, v0, v9}, Lcom/samsung/android/sdk/smp/common/network/d;->i(Landroid/content/Context;Lcom/samsung/android/sdk/smp/common/network/d;I)Lb0/a;

    move-result-object v0

    iget-boolean v9, v0, Lb0/a;->a:Z

    if-eqz v9, :cond_2

    iget-object v0, v0, Lb0/a;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    const/16 v12, 0x3f7

    if-eqz v9, :cond_1

    new-instance v0, Lb0/a;

    invoke-direct {v0, v8, v12}, Lb0/a;-><init>(ZI)V

    goto :goto_0

    :cond_1
    :try_start_0
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "baseUrl"

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static/range {p0 .. p0}, Lf9/c;->G(Landroid/content/Context;)Lf9/c;

    move-result-object v9

    monitor-enter v9
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v13, "baseUrl"

    invoke-virtual {v9, v13, v0}, Le9/b;->x(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v9

    new-instance v0, Lb0/a;

    invoke-direct {v0, v11, v10}, Lb0/a;-><init>(ZI)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v9

    throw v0
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v13, "Fail to parse base url response. "

    invoke-direct {v9, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lj3/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lb0/a;

    invoke-direct {v0, v8, v12}, Lb0/a;-><init>(ZI)V

    goto :goto_0

    :cond_2
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v12, "Fail to get base url. error code:"

    invoke-direct {v9, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v12, v0, Lb0/a;->b:I

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ", error msg:"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v0, Lb0/a;->c:Ljava/lang/Object;

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Lj3/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-boolean v9, v0, Lb0/a;->a:Z

    if-nez v9, :cond_3

    return-object v0

    :cond_3
    invoke-virtual {v2, v1}, Lcom/samsung/android/sdk/smp/common/network/d;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :cond_4
    move-object v14, v0

    new-instance v0, Lw1/i;

    invoke-direct {v0}, Lw1/i;-><init>()V

    :try_start_3
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/sdk/smp/common/network/d;->c()Lorg/json/JSONObject;

    move-result-object v9

    if-nez v9, :cond_5

    const/4 v9, 0x0

    goto :goto_1

    :cond_5
    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    :goto_1
    move-object v15, v9

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v14}, Lcom/samsung/android/sdk/smp/common/network/d;->f(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", body:"

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lj3/f;->l(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/sdk/smp/common/network/d;->h()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-static {v15}, Lh9/a;->l(Ljava/lang/String;)[B

    move-result-object v15

    new-instance v5, Lcom/samsung/android/sdk/smp/common/network/b;

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/sdk/smp/common/network/d;->d()I

    move-result v13

    move-object v12, v5

    move-object/from16 v16, v0

    move-object/from16 v17, v0

    invoke-direct/range {v12 .. v17}, Lcom/samsung/android/sdk/smp/common/network/b;-><init>(ILjava/lang/String;[BLw1/i;Lw1/i;)V

    goto :goto_2

    :cond_6
    new-instance v5, Lcom/samsung/android/sdk/smp/common/network/c;

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/sdk/smp/common/network/d;->d()I

    move-result v13

    move-object v12, v5

    move-object/from16 v16, v0

    move-object/from16 v17, v0

    invoke-direct/range {v12 .. v17}, Lcom/samsung/android/sdk/smp/common/network/c;-><init>(ILjava/lang/String;Ljava/lang/String;Lw1/i;Lw1/i;)V

    :goto_2
    iput-boolean v8, v5, Lv1/h;->i:Z

    new-instance v2, Lj3/b;

    int-to-long v12, v3

    sget-wide v14, Lb9/a;->a:J

    mul-long/2addr v14, v12

    long-to-int v3, v14

    invoke-direct {v2, v3, v8}, Lj3/b;-><init>(II)V

    iput-object v2, v5, Lv1/h;->l:Lj3/b;

    sget-object v2, Lcom/samsung/android/sdk/smp/common/network/d;->a:Lv1/i;

    if-nez v2, :cond_7

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lfc/e;->K(Landroid/content/Context;)Lv1/i;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/sdk/smp/common/network/d;->a:Lv1/i;

    :cond_7
    sget-object v1, Lcom/samsung/android/sdk/smp/common/network/d;->a:Lv1/i;

    invoke-virtual {v1, v5}, Lv1/i;->a(Lv1/h;)V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v12, v13, v1}, Lw1/i;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lj3/f;->l(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lb0/a;

    invoke-direct {v1, v0, v10, v11}, Lb0/a;-><init>(Ljava/lang/String;IZ)V
    :try_end_3
    .catch Lcom/samsung/android/sdk/smp/common/exception/InternalException$InvalidDataException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    return-object v1

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/sdk/smp/common/network/d;->g(Ljava/lang/Exception;)Lb0/a;

    move-result-object v0

    return-object v0

    :catch_2
    const-string v0, "request fail. invalid request body"

    invoke-static {v6, v0}, Lj3/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lb0/a;

    invoke-direct {v0, v8, v7}, Lb0/a;-><init>(ZI)V

    return-object v0

    :cond_8
    :goto_3
    const-string v0, "request fail. invalid params"

    invoke-static {v6, v0}, Lj3/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lb0/a;

    invoke-direct {v0, v8, v7}, Lb0/a;-><init>(ZI)V

    return-object v0
.end method


# virtual methods
.method public abstract c()Lorg/json/JSONObject;
.end method

.method public abstract d()I
.end method

.method public abstract e(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public abstract h()Z
.end method
