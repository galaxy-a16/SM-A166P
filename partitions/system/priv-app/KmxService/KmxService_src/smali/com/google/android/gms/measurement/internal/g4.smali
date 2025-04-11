.class public final synthetic Lcom/google/android/gms/measurement/internal/g4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/google/android/gms/measurement/internal/n4;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/measurement/internal/n4;I)V
    .locals 0

    iput p2, p0, Lcom/google/android/gms/measurement/internal/g4;->a:I

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/g4;->b:Lcom/google/android/gms/measurement/internal/n4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 16

    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/android/gms/measurement/internal/g4;->a:I

    const-wide/16 v2, -0x1

    const-wide/16 v5, 0x1

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/g4;->b:Lcom/google/android/gms/measurement/internal/n4;

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_a

    :pswitch_0
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/m2;->k()V

    iget-object v0, v0, Lb0/h;->a:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/t3;->h:Lcom/google/android/gms/measurement/internal/i3;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/t3;->i(Lcom/google/android/gms/measurement/internal/a4;)V

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/i3;->t:Lcom/google/android/gms/measurement/internal/e3;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e3;->b()Z

    move-result v0

    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    if-nez v0, :cond_b

    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/t3;->h:Lcom/google/android/gms/measurement/internal/i3;

    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/t3;->i(Lcom/google/android/gms/measurement/internal/a4;)V

    iget-object v0, v8, Lcom/google/android/gms/measurement/internal/i3;->u:Lcom/google/android/gms/measurement/internal/f3;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/f3;->a()J

    move-result-wide v9

    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/t3;->i(Lcom/google/android/gms/measurement/internal/a4;)V

    add-long/2addr v5, v9

    iget-object v0, v8, Lcom/google/android/gms/measurement/internal/i3;->u:Lcom/google/android/gms/measurement/internal/f3;

    invoke-virtual {v0, v5, v6}, Lcom/google/android/gms/measurement/internal/f3;->b(J)V

    const-wide/16 v5, 0x5

    cmp-long v0, v9, v5

    const/4 v5, 0x1

    if-ltz v0, :cond_0

    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    const-string v0, "Permanently failed to retrieve Deferred Deep Link. Reached maximum retries."

    iget-object v1, v7, Lcom/google/android/gms/measurement/internal/x2;->i:Lcom/google/android/gms/measurement/internal/v2;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/measurement/internal/v2;->b(Ljava/lang/String;)V

    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/t3;->i(Lcom/google/android/gms/measurement/internal/a4;)V

    iget-object v0, v8, Lcom/google/android/gms/measurement/internal/i3;->t:Lcom/google/android/gms/measurement/internal/e3;

    invoke-virtual {v0, v5}, Lcom/google/android/gms/measurement/internal/e3;->a(Z)V

    goto/16 :goto_9

    :cond_0
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/t3;->j:Lcom/google/android/gms/measurement/internal/s3;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/s3;->k()V

    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/t3;->u:Lcom/google/android/gms/measurement/internal/q4;

    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/t3;->p()Lcom/google/android/gms/measurement/internal/r2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/r2;->p()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/t3;->i(Lcom/google/android/gms/measurement/internal/a4;)V

    invoke-virtual {v8}, Lb0/h;->k()V

    iget-object v0, v8, Lb0/h;->a:Ljava/lang/Object;

    move-object v10, v0

    check-cast v10, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v11, v10, Lcom/google/android/gms/measurement/internal/t3;->n:Lc3/l;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    iget-object v13, v8, Lcom/google/android/gms/measurement/internal/i3;->g:Ljava/lang/String;

    const-string v14, ""

    if-eqz v13, :cond_2

    iget-wide v4, v8, Lcom/google/android/gms/measurement/internal/i3;->i:J

    cmp-long v4, v11, v4

    if-ltz v4, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/util/Pair;

    iget-boolean v4, v8, Lcom/google/android/gms/measurement/internal/i3;->h:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v0, v13, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    :goto_0
    iget-object v4, v10, Lcom/google/android/gms/measurement/internal/t3;->g:Lcom/google/android/gms/measurement/internal/e;

    sget-object v5, Lcom/google/android/gms/measurement/internal/o2;->c:Lcom/google/android/gms/measurement/internal/n2;

    invoke-virtual {v4, v9, v5}, Lcom/google/android/gms/measurement/internal/e;->p(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/n2;)J

    move-result-wide v4

    add-long/2addr v4, v11

    iput-wide v4, v8, Lcom/google/android/gms/measurement/internal/i3;->i:J

    :try_start_0
    check-cast v0, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/t3;->a:Landroid/content/Context;

    invoke-static {v0}, Lx2/a;->a(Landroid/content/Context;)Ld/t0;

    move-result-object v0

    iput-object v14, v8, Lcom/google/android/gms/measurement/internal/i3;->g:Ljava/lang/String;

    iget-object v4, v0, Ld/t0;->c:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_3

    iput-object v4, v8, Lcom/google/android/gms/measurement/internal/i3;->g:Ljava/lang/String;

    :cond_3
    iget-boolean v0, v0, Ld/t0;->b:Z

    iput-boolean v0, v8, Lcom/google/android/gms/measurement/internal/i3;->h:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    iget-object v4, v10, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    const-string v5, "Unable to get advertising id"

    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/x2;->m:Lcom/google/android/gms/measurement/internal/v2;

    invoke-virtual {v4, v0, v5}, Lcom/google/android/gms/measurement/internal/v2;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v14, v8, Lcom/google/android/gms/measurement/internal/i3;->g:Ljava/lang/String;

    :goto_1
    new-instance v0, Landroid/util/Pair;

    iget-object v4, v8, Lcom/google/android/gms/measurement/internal/i3;->g:Ljava/lang/String;

    iget-boolean v5, v8, Lcom/google/android/gms/measurement/internal/i3;->h:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_2
    const-string v4, "google_analytics_adid_collection_enabled"

    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/t3;->g:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v5, v4}, Lcom/google/android/gms/measurement/internal/e;->r(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_3

    :cond_4
    move v4, v5

    goto :goto_4

    :cond_5
    :goto_3
    const/4 v4, 0x1

    :goto_4
    if-eqz v4, :cond_a

    iget-object v4, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_a

    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    goto/16 :goto_7

    :cond_6
    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/a4;->m()V

    iget-object v4, v6, Lb0/h;->a:Ljava/lang/Object;

    check-cast v4, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v10, v4, Lcom/google/android/gms/measurement/internal/t3;->a:Landroid/content/Context;

    const-string v11, "connectivity"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/ConnectivityManager;

    if-eqz v10, :cond_7

    :try_start_1
    invoke-virtual {v10}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v10
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    :catch_1
    :cond_7
    const/4 v10, 0x0

    :goto_5
    if-eqz v10, :cond_9

    invoke-virtual {v10}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v10

    if-eqz v10, :cond_9

    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/t3;->l:Lcom/google/android/gms/measurement/internal/u5;

    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/t3;->i(Lcom/google/android/gms/measurement/internal/a4;)V

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/t3;->p()Lcom/google/android/gms/measurement/internal/r2;

    move-result-object v10

    iget-object v10, v10, Lb0/h;->a:Ljava/lang/Object;

    check-cast v10, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v10, v10, Lcom/google/android/gms/measurement/internal/t3;->g:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/e;->o()V

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v8, v8, Lcom/google/android/gms/measurement/internal/i3;->u:Lcom/google/android/gms/measurement/internal/f3;

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/f3;->a()J

    move-result-wide v10

    add-long/2addr v10, v2

    iget-object v2, v7, Lb0/h;->a:Ljava/lang/Object;

    :try_start_2
    invoke-static {v0}, Lva/n;->f(Ljava/lang/String;)V

    invoke-static {v9}, Lva/n;->f(Ljava/lang/String;)V

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v8, 0x2

    new-array v12, v8, [Ljava/lang/Object;

    const-wide/32 v13, 0x11d28

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v12, v5

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/u5;->k0()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v13, 0x1

    aput-object v7, v12, v13

    const-string v7, "v%s.%s"

    invoke-static {v7, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v5

    aput-object v0, v3, v13

    aput-object v9, v3, v8

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v5, 0x3

    aput-object v0, v3, v5

    const-string v0, "https://www.googleadservices.com/pagead/conversion/app/deeplink?id_type=adid&sdk_version=%s&rdid=%s&bundleid=%s&retry=%s"

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v3, v2

    check-cast v3, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/t3;->g:Lcom/google/android/gms/measurement/internal/e;

    const-string v5, "debug.deferred.deeplink"

    invoke-virtual {v3, v5}, Lcom/google/android/gms/measurement/internal/e;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    const-string v3, "&ddl_test=1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_8
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v15, v3

    goto :goto_6

    :catch_2
    move-exception v0

    check-cast v2, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/x2;->f:Lcom/google/android/gms/measurement/internal/v2;

    const-string v3, "Failed to create BOW URL for Deferred Deep Link. exception"

    invoke-virtual {v2, v0, v3}, Lcom/google/android/gms/measurement/internal/v2;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v15, 0x0

    :goto_6
    if-eqz v15, :cond_c

    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    new-instance v0, Lp5/c;

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lp5/c;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v6}, Lb0/h;->k()V

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/a4;->m()V

    iget-object v1, v4, Lcom/google/android/gms/measurement/internal/t3;->j:Lcom/google/android/gms/measurement/internal/s3;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    new-instance v2, Lh/h;

    invoke-direct {v2, v6, v9, v15, v0}, Lh/h;-><init>(Lcom/google/android/gms/measurement/internal/q4;Ljava/lang/String;Ljava/net/URL;Lp5/c;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/s3;->r(Ljava/lang/Runnable;)V

    goto :goto_9

    :cond_9
    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    const-string v0, "Network is not available for Deferred Deep Link request. Skipping"

    iget-object v1, v7, Lcom/google/android/gms/measurement/internal/x2;->i:Lcom/google/android/gms/measurement/internal/v2;

    goto :goto_8

    :cond_a
    :goto_7
    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    const-string v0, "ADID unavailable to retrieve Deferred Deep Link. Skipping"

    iget-object v1, v7, Lcom/google/android/gms/measurement/internal/x2;->m:Lcom/google/android/gms/measurement/internal/v2;

    :goto_8
    invoke-virtual {v1, v0}, Lcom/google/android/gms/measurement/internal/v2;->b(Ljava/lang/String;)V

    goto :goto_9

    :cond_b
    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    const-string v0, "Deferred Deep Link already retrieved. Not fetching again."

    iget-object v1, v7, Lcom/google/android/gms/measurement/internal/x2;->m:Lcom/google/android/gms/measurement/internal/v2;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/measurement/internal/v2;->b(Ljava/lang/String;)V

    :cond_c
    :goto_9
    return-void

    :goto_a
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/n4;->n:Lcom/google/android/gms/measurement/internal/d4;

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/d4;->a:Lcom/google/android/gms/measurement/internal/t3;

    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/t3;->j:Lcom/google/android/gms/measurement/internal/s3;

    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/s3;->k()V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d4;->c()Z

    move-result v4

    if-nez v4, :cond_d

    goto/16 :goto_10

    :cond_d
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d4;->d()Z

    move-result v0

    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/t3;->q:Lcom/google/android/gms/measurement/internal/n4;

    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/t3;->h:Lcom/google/android/gms/measurement/internal/i3;

    const-string v8, "_cc"

    if-eqz v0, :cond_e

    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/t3;->i(Lcom/google/android/gms/measurement/internal/a4;)V

    iget-object v0, v7, Lcom/google/android/gms/measurement/internal/i3;->w:Lv1/j;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lv1/j;->b(Ljava/lang/String;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "source"

    const-string v2, "(not set)"

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "medium"

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "_cis"

    const-string v2, "intent"

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v8, v5, v6}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/t3;->j(Lcom/google/android/gms/measurement/internal/g3;)V

    const-string v1, "auto"

    const-string v2, "_cmpx"

    invoke-virtual {v4, v1, v2, v0}, Lcom/google/android/gms/measurement/internal/n4;->r(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_f

    :cond_e
    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/t3;->i(Lcom/google/android/gms/measurement/internal/a4;)V

    iget-object v0, v7, Lcom/google/android/gms/measurement/internal/i3;->w:Lv1/j;

    invoke-virtual {v0}, Lv1/j;->a()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_f

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    const-string v2, "Cache still valid but referrer not found"

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/x2;->g:Lcom/google/android/gms/measurement/internal/v2;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/v2;->b(Ljava/lang/String;)V

    :goto_b
    const/4 v1, 0x0

    goto :goto_e

    :cond_f
    iget-object v1, v7, Lcom/google/android/gms/measurement/internal/i3;->x:Lcom/google/android/gms/measurement/internal/f3;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/f3;->a()J

    move-result-wide v9

    const-wide/32 v11, 0x36ee80

    div-long/2addr v9, v11

    add-long/2addr v9, v2

    mul-long/2addr v9, v11

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    new-instance v3, Landroid/util/Pair;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_10

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v1, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v6, v11}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    :cond_10
    iget-object v1, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    invoke-virtual {v1, v8, v9, v10}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    iget-object v1, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-nez v1, :cond_11

    const-string v1, "app"

    goto :goto_d

    :cond_11
    check-cast v1, Ljava/lang/String;

    :goto_d
    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/t3;->j(Lcom/google/android/gms/measurement/internal/g3;)V

    iget-object v2, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    const-string v3, "_cmp"

    invoke-virtual {v4, v1, v3, v2}, Lcom/google/android/gms/measurement/internal/n4;->r(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_b

    :goto_e
    invoke-virtual {v0, v1}, Lv1/j;->b(Ljava/lang/String;)V

    :goto_f
    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/t3;->i(Lcom/google/android/gms/measurement/internal/a4;)V

    iget-object v0, v7, Lcom/google/android/gms/measurement/internal/i3;->x:Lcom/google/android/gms/measurement/internal/f3;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/f3;->b(J)V

    :goto_10
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
