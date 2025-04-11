.class public final Lh/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/n4;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lh/h;->a:I

    .line 1
    iput-object p1, p0, Lh/h;->e:Ljava/lang/Object;

    iput-object p2, p0, Lh/h;->b:Ljava/lang/Object;

    iput-object p3, p0, Lh/h;->c:Ljava/lang/Object;

    iput-object p4, p0, Lh/h;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/measurement/internal/q4;Ljava/lang/String;Ljava/net/URL;Lp5/c;)V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, Lh/h;->a:I

    .line 2
    iput-object p1, p0, Lh/h;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Lva/n;->f(Ljava/lang/String;)V

    iput-object p3, p0, Lh/h;->b:Ljava/lang/Object;

    iput-object p4, p0, Lh/h;->e:Ljava/lang/Object;

    iput-object p2, p0, Lh/h;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 3
    iput p5, p0, Lh/h;->a:I

    iput-object p1, p0, Lh/h;->e:Ljava/lang/Object;

    iput-object p2, p0, Lh/h;->b:Ljava/lang/Object;

    iput-object p3, p0, Lh/h;->c:Ljava/lang/Object;

    iput-object p4, p0, Lh/h;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lp5/c;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x7

    iput v0, p0, Lh/h;->a:I

    .line 4
    iput-object p1, p0, Lh/h;->e:Ljava/lang/Object;

    iput-object p2, p0, Lh/h;->b:Ljava/lang/Object;

    const-string p1, "_err"

    iput-object p1, p0, Lh/h;->c:Ljava/lang/Object;

    iput-object p3, p0, Lh/h;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ILjava/io/IOException;[BLjava/util/Map;)V
    .locals 8

    iget-object v0, p0, Lh/h;->d:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/measurement/internal/q4;

    iget-object v0, v0, Lb0/h;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/t3;->j:Lcom/google/android/gms/measurement/internal/s3;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    new-instance v7, Lcom/google/android/gms/measurement/internal/p4;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/p4;-><init>(Lh/h;ILjava/io/IOException;[BLjava/util/Map;)V

    invoke-virtual {v0, v7}, Lcom/google/android/gms/measurement/internal/s3;->s(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final run()V
    .locals 15

    iget v0, p0, Lh/h;->a:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lh/h;->e:Ljava/lang/Object;

    iget-object v4, p0, Lh/h;->c:Ljava/lang/Object;

    iget-object v5, p0, Lh/h;->d:Ljava/lang/Object;

    iget-object v6, p0, Lh/h;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_c

    :pswitch_0
    check-cast v3, Lp5/c;

    iget-object p0, v3, Lp5/c;->b:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/measurement/internal/q5;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/q5;->Q()Lcom/google/android/gms/measurement/internal/u5;

    move-result-object v7

    check-cast v6, Ljava/lang/String;

    move-object v8, v4

    check-cast v8, Ljava/lang/String;

    move-object v9, v5

    check-cast v9, Landroid/os/Bundle;

    iget-object p0, v3, Lp5/c;->b:Ljava/lang/Object;

    move-object v0, p0

    check-cast v0, Lcom/google/android/gms/measurement/internal/q5;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/q5;->e()Lg3/a;

    move-result-object v0

    check-cast v0, Lc3/l;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    const-string v10, "auto"

    const/4 v13, 0x0

    invoke-virtual/range {v7 .. v13}, Lcom/google/android/gms/measurement/internal/u5;->q0(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;JZ)Lcom/google/android/gms/measurement/internal/o;

    move-result-object v0

    check-cast p0, Lcom/google/android/gms/measurement/internal/q5;

    invoke-static {v0}, Lva/n;->i(Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v6}, Lcom/google/android/gms/measurement/internal/q5;->j(Lcom/google/android/gms/measurement/internal/o;Ljava/lang/String;)V

    return-void

    :pswitch_1
    :try_start_0
    move-object p0, v3

    check-cast p0, Lcom/google/android/gms/measurement/internal/c5;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/c5;->d:Lcom/google/android/gms/measurement/internal/q2;

    if-nez v0, :cond_0

    iget-object p0, p0, Lb0/h;->a:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/measurement/internal/t3;

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {p0}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/x2;->f:Lcom/google/android/gms/measurement/internal/v2;

    const-string v0, "Discarding data. Failed to send event to service to bundle"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/measurement/internal/v2;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    check-cast v6, Lcom/google/android/gms/measurement/internal/o;

    check-cast v4, Ljava/lang/String;

    invoke-interface {v0, v6, v4}, Lcom/google/android/gms/measurement/internal/q2;->j(Lcom/google/android/gms/measurement/internal/o;Ljava/lang/String;)[B

    move-result-object v1

    move-object p0, v3

    check-cast p0, Lcom/google/android/gms/measurement/internal/c5;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c5;->v()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    :try_start_1
    move-object v0, v3

    check-cast v0, Lcom/google/android/gms/measurement/internal/c5;

    iget-object v0, v0, Lb0/h;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/x2;->f:Lcom/google/android/gms/measurement/internal/v2;

    const-string v2, "Failed to send event to the service to bundle"

    invoke-virtual {v0, p0, v2}, Lcom/google/android/gms/measurement/internal/v2;->c(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    check-cast v3, Lcom/google/android/gms/measurement/internal/c5;

    iget-object p0, v3, Lb0/h;->a:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/measurement/internal/t3;

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/t3;->l:Lcom/google/android/gms/measurement/internal/u5;

    invoke-static {p0}, Lcom/google/android/gms/measurement/internal/t3;->i(Lcom/google/android/gms/measurement/internal/a4;)V

    check-cast v5, Lcom/google/android/gms/internal/measurement/i0;

    invoke-virtual {p0, v5, v1}, Lcom/google/android/gms/measurement/internal/u5;->F(Lcom/google/android/gms/internal/measurement/i0;[B)V

    return-void

    :goto_1
    check-cast v3, Lcom/google/android/gms/measurement/internal/c5;

    iget-object v0, v3, Lb0/h;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/t3;->l:Lcom/google/android/gms/measurement/internal/u5;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/t3;->i(Lcom/google/android/gms/measurement/internal/a4;)V

    check-cast v5, Lcom/google/android/gms/internal/measurement/i0;

    invoke-virtual {v0, v5, v1}, Lcom/google/android/gms/measurement/internal/u5;->F(Lcom/google/android/gms/internal/measurement/i0;[B)V

    throw p0

    :pswitch_2
    check-cast v3, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;

    iget-object p0, v3, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->c:Lcom/google/android/gms/measurement/internal/t3;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/t3;->t()Lcom/google/android/gms/measurement/internal/c5;

    move-result-object p0

    move-object v11, v6

    check-cast v11, Lcom/google/android/gms/internal/measurement/i0;

    move-object v9, v4

    check-cast v9, Lcom/google/android/gms/measurement/internal/o;

    move-object v10, v5

    check-cast v10, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/m2;->k()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/g3;->l()V

    iget-object v0, p0, Lb0/h;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/t3;->l:Lcom/google/android/gms/measurement/internal/u5;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/t3;->i(Lcom/google/android/gms/measurement/internal/a4;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, La3/f;->b:La3/f;

    iget-object v1, v1, Lb0/h;->a:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/t3;->a:Landroid/content/Context;

    const v4, 0xbdfcb8

    invoke-virtual {v3, v1, v4}, La3/f;->b(Landroid/content/Context;I)I

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, v0, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {p0}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    const-string v1, "Not bundling data. Service unavailable or out of date"

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/x2;->i:Lcom/google/android/gms/measurement/internal/v2;

    invoke-virtual {p0, v1}, Lcom/google/android/gms/measurement/internal/v2;->b(Ljava/lang/String;)V

    iget-object p0, v0, Lcom/google/android/gms/measurement/internal/t3;->l:Lcom/google/android/gms/measurement/internal/u5;

    invoke-static {p0}, Lcom/google/android/gms/measurement/internal/t3;->i(Lcom/google/android/gms/measurement/internal/a4;)V

    new-array v0, v2, [B

    invoke-virtual {p0, v11, v0}, Lcom/google/android/gms/measurement/internal/u5;->F(Lcom/google/android/gms/internal/measurement/i0;[B)V

    goto :goto_2

    :cond_1
    new-instance v0, Lh/h;

    const/4 v12, 0x6

    move-object v7, v0

    move-object v8, p0

    invoke-direct/range {v7 .. v12}, Lh/h;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/measurement/internal/c5;->w(Ljava/lang/Runnable;)V

    :goto_2
    return-void

    :pswitch_3
    move-object v0, v5

    check-cast v0, Lcom/google/android/gms/measurement/internal/q4;

    iget-object v0, v0, Lb0/h;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/t3;->j:Lcom/google/android/gms/measurement/internal/s3;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/s3;->o()V

    :try_start_2
    check-cast v5, Lcom/google/android/gms/measurement/internal/q4;

    check-cast v6, Ljava/net/URL;

    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    instance-of v3, v0, Ljava/net/HttpURLConnection;

    if-eqz v3, :cond_4

    check-cast v0, Ljava/net/HttpURLConnection;

    invoke-virtual {v0, v2}, Ljava/net/URLConnection;->setDefaultUseCaches(Z)V

    iget-object v3, v5, Lb0/h;->a:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/gms/measurement/internal/t3;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v3, 0xea60

    invoke-virtual {v0, v3}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    iget-object v3, v5, Lb0/h;->a:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/gms/measurement/internal/t3;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v3, 0xee48

    invoke-virtual {v0, v3}, Ljava/net/URLConnection;->setReadTimeout(I)V

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/net/URLConnection;->setDoInput(Z)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    :try_start_3
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    :try_start_4
    invoke-virtual {v0}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v4
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    :try_start_5
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    const/16 v7, 0x400

    :try_start_6
    new-array v7, v7, [B

    :goto_3
    invoke-virtual {v6, v7}, Ljava/io/InputStream;->read([B)I

    move-result v8

    if-lez v8, :cond_2

    invoke-virtual {v5, v7, v2, v8}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_3

    :cond_2
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    invoke-virtual {p0, v3, v1, v2, v4}, Lh/h;->a(ILjava/io/IOException;[BLjava/util/Map;)V

    goto :goto_9

    :catchall_1
    move-exception v2

    goto :goto_4

    :catchall_2
    move-exception v2

    move-object v6, v1

    :goto_4
    if-eqz v6, :cond_3

    :try_start_8
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    :cond_3
    throw v2
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :catchall_3
    move-exception v2

    goto :goto_6

    :catch_1
    move-exception v2

    goto :goto_8

    :catchall_4
    move-exception v2

    move-object v4, v1

    goto :goto_6

    :catch_2
    move-exception v2

    move-object v4, v1

    goto :goto_8

    :catchall_5
    move-exception v3

    goto :goto_5

    :catch_3
    move-exception v3

    goto :goto_7

    :cond_4
    :try_start_9
    new-instance v0, Ljava/io/IOException;

    const-string v3, "Failed to obtain HTTP connection"

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    :catchall_6
    move-exception v0

    move-object v3, v0

    move-object v0, v1

    :goto_5
    move-object v4, v1

    move-object v14, v3

    move v3, v2

    move-object v2, v14

    :goto_6
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_5
    invoke-virtual {p0, v3, v1, v1, v4}, Lh/h;->a(ILjava/io/IOException;[BLjava/util/Map;)V

    throw v2

    :catch_4
    move-exception v0

    move-object v3, v0

    move-object v0, v1

    :goto_7
    move-object v4, v1

    move-object v14, v3

    move v3, v2

    move-object v2, v14

    :goto_8
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_6
    invoke-virtual {p0, v3, v2, v1, v4}, Lh/h;->a(ILjava/io/IOException;[BLjava/util/Map;)V

    :goto_9
    return-void

    :pswitch_4
    check-cast v3, Lcom/google/android/gms/measurement/internal/n4;

    iget-object p0, v3, Lb0/h;->a:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/measurement/internal/t3;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/t3;->t()Lcom/google/android/gms/measurement/internal/c5;

    move-result-object p0

    move-object v9, v6

    check-cast v9, Ljava/util/concurrent/atomic/AtomicReference;

    move-object v10, v4

    check-cast v10, Ljava/lang/String;

    move-object v11, v5

    check-cast v11, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/m2;->k()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/g3;->l()V

    invoke-virtual {p0, v2}, Lcom/google/android/gms/measurement/internal/c5;->t(Z)Lcom/google/android/gms/measurement/internal/w5;

    move-result-object v12

    new-instance v0, Landroidx/core/view/l1;

    move-object v7, v0

    move-object v8, p0

    invoke-direct/range {v7 .. v12}, Landroidx/core/view/l1;-><init>(Lcom/google/android/gms/measurement/internal/c5;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/w5;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/measurement/internal/c5;->w(Ljava/lang/Runnable;)V

    return-void

    :pswitch_5
    const-string p0, "Ignoring setProgressAsync(...). WorkSpec ("

    check-cast v6, Ljava/util/UUID;

    invoke-virtual {v6}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroidx/work/o;->d()Landroidx/work/o;

    move-result-object v2

    sget-object v7, Lq1/s;->c:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Updating progress for "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " ("

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v6, v4

    check-cast v6, Landroidx/work/f;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v7, v6}, Landroidx/work/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v3

    check-cast v2, Lq1/s;

    iget-object v6, v2, Lq1/s;->a:Landroidx/work/impl/WorkDatabase;

    iget-object v2, v2, Lq1/s;->a:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v6}, Landroidx/room/RoomDatabase;->beginTransaction()V

    :try_start_a
    move-object v6, v3

    check-cast v6, Lq1/s;

    iget-object v6, v6, Lq1/s;->a:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v6}, Landroidx/work/impl/WorkDatabase;->h()Lp1/s;

    move-result-object v6

    invoke-virtual {v6, v0}, Lp1/s;->h(Ljava/lang/String;)Lp1/q;

    move-result-object v6

    if-eqz v6, :cond_8

    iget-object v6, v6, Lp1/q;->b:Landroidx/work/WorkInfo$State;

    sget-object v8, Landroidx/work/WorkInfo$State;->RUNNING:Landroidx/work/WorkInfo$State;

    if-ne v6, v8, :cond_7

    new-instance p0, Lp1/m;

    check-cast v4, Landroidx/work/f;

    invoke-direct {p0, v0, v4}, Lp1/m;-><init>(Ljava/lang/String;Landroidx/work/f;)V

    move-object v0, v3

    check-cast v0, Lq1/s;

    iget-object v0, v0, Lq1/s;->a:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->g()Lp1/o;

    move-result-object v0

    invoke-virtual {v0, p0}, Lp1/o;->i(Lp1/m;)V

    goto :goto_a

    :cond_7
    invoke-static {}, Landroidx/work/o;->d()Landroidx/work/o;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ") is not in a RUNNING state."

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, v7, p0}, Landroidx/work/o;->g(Ljava/lang/String;Ljava/lang/String;)V

    :goto_a
    move-object p0, v5

    check-cast p0, Landroidx/work/impl/utils/futures/i;

    invoke-virtual {p0, v1}, Landroidx/work/impl/utils/futures/i;->i(Ljava/lang/Object;)Z

    check-cast v3, Lq1/s;

    iget-object p0, v3, Lq1/s;->a:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V

    goto :goto_b

    :cond_8
    const-string p0, "Calls to setProgressAsync() must complete before a ListenableWorker signals completion of work by returning an instance of Result."

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    :catchall_7
    move-exception p0

    :try_start_b
    invoke-static {}, Landroidx/work/o;->d()Landroidx/work/o;

    move-result-object v0

    sget-object v1, Lq1/s;->c:Ljava/lang/String;

    const-string v3, "Error updating Worker progress"

    invoke-virtual {v0, v1, v3, p0}, Landroidx/work/o;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    check-cast v5, Landroidx/work/impl/utils/futures/i;

    invoke-virtual {v5, p0}, Landroidx/work/impl/utils/futures/i;->j(Ljava/lang/Throwable;)Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_8

    :goto_b
    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_8
    move-exception p0

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->endTransaction()V

    throw p0

    :pswitch_6
    const-string p0, "Updating proxies: (BatteryNotLowProxy ("

    :try_start_c
    move-object v0, v6

    check-cast v0, Landroid/content/Intent;

    const-string v1, "KEY_BATTERY_NOT_LOW_PROXY_ENABLED"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    move-object v1, v6

    check-cast v1, Landroid/content/Intent;

    const-string v3, "KEY_BATTERY_CHARGING_PROXY_ENABLED"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    move-object v3, v6

    check-cast v3, Landroid/content/Intent;

    const-string v7, "KEY_STORAGE_NOT_LOW_PROXY_ENABLED"

    invoke-virtual {v3, v7, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    check-cast v6, Landroid/content/Intent;

    const-string v7, "KEY_NETWORK_STATE_PROXY_ENABLED"

    invoke-virtual {v6, v7, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, "), BatteryChargingProxy ("

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, "), StorageNotLowProxy ("

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, "), NetworkStateProxy ("

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, "), "

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Landroidx/work/o;->d()Landroidx/work/o;

    move-result-object v6

    sget-object v7, Landroidx/work/impl/background/systemalarm/ConstraintProxyUpdateReceiver;->a:Ljava/lang/String;

    invoke-virtual {v6, v7, p0}, Landroidx/work/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    move-object p0, v4

    check-cast p0, Landroid/content/Context;

    const-class v6, Landroidx/work/impl/background/systemalarm/ConstraintProxy$BatteryNotLowProxy;

    invoke-static {p0, v6, v0}, Lq1/k;->a(Landroid/content/Context;Ljava/lang/Class;Z)V

    move-object p0, v4

    check-cast p0, Landroid/content/Context;

    const-class v0, Landroidx/work/impl/background/systemalarm/ConstraintProxy$BatteryChargingProxy;

    invoke-static {p0, v0, v1}, Lq1/k;->a(Landroid/content/Context;Ljava/lang/Class;Z)V

    move-object p0, v4

    check-cast p0, Landroid/content/Context;

    const-class v0, Landroidx/work/impl/background/systemalarm/ConstraintProxy$StorageNotLowProxy;

    invoke-static {p0, v0, v3}, Lq1/k;->a(Landroid/content/Context;Ljava/lang/Class;Z)V

    check-cast v4, Landroid/content/Context;

    const-class p0, Landroidx/work/impl/background/systemalarm/ConstraintProxy$NetworkStateProxy;

    invoke-static {v4, p0, v2}, Lq1/k;->a(Landroid/content/Context;Ljava/lang/Class;Z)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_9

    check-cast v5, Landroid/content/BroadcastReceiver$PendingResult;

    invoke-virtual {v5}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    return-void

    :catchall_9
    move-exception p0

    check-cast v5, Landroid/content/BroadcastReceiver$PendingResult;

    invoke-virtual {v5}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    throw p0

    :pswitch_7
    check-cast v6, Lh3/a;

    if-nez v6, :cond_a

    check-cast v4, Landroid/view/MenuItem;

    invoke-interface {v4}, Landroid/view/MenuItem;->isEnabled()Z

    move-result p0

    if-eqz p0, :cond_9

    invoke-interface {v4}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result p0

    if-eqz p0, :cond_9

    check-cast v5, Lh/n;

    const/4 p0, 0x4

    invoke-virtual {v5, v4, v1, p0}, Lh/n;->q(Landroid/view/MenuItem;Lh/b0;I)Z

    :cond_9
    return-void

    :cond_a
    check-cast v3, Lf9/b;

    iget-object p0, v3, Lf9/b;->b:Ljava/lang/Object;

    invoke-static {p0}, Lcom/google/protobuf/n;->w(Ljava/lang/Object;)V

    throw v1

    :goto_c
    check-cast v3, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;

    iget-object p0, v3, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->c:Lcom/google/android/gms/measurement/internal/t3;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/t3;->t()Lcom/google/android/gms/measurement/internal/c5;

    move-result-object p0

    move-object v12, v6

    check-cast v12, Lcom/google/android/gms/internal/measurement/i0;

    move-object v9, v4

    check-cast v9, Ljava/lang/String;

    move-object v10, v5

    check-cast v10, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/m2;->k()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/g3;->l()V

    invoke-virtual {p0, v2}, Lcom/google/android/gms/measurement/internal/c5;->t(Z)Lcom/google/android/gms/measurement/internal/w5;

    move-result-object v11

    new-instance v0, Landroidx/core/view/l1;

    const/4 v13, 0x3

    move-object v7, v0

    move-object v8, p0

    invoke-direct/range {v7 .. v13}, Landroidx/core/view/l1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/measurement/internal/c5;->w(Ljava/lang/Runnable;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
