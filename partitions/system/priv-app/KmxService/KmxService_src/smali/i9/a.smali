.class public final Li9/a;
.super Li9/d;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Li9/d;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Li9/d;->a:Landroid/content/Context;

    invoke-static {p0}, Li9/f;->b(Landroid/content/Context;)V

    invoke-static {p0, p1, p2}, Lh9/a;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final c(ILjava/lang/String;)V
    .locals 2

    invoke-super {p0, p1, p2}, Li9/d;->c(ILjava/lang/String;)V

    const/16 v0, 0x3e8

    if-ge p1, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Internal server error - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SMP_0501"

    goto :goto_0

    :cond_0
    const/16 p2, 0x3ea

    if-eq p1, p2, :cond_2

    const/16 p2, 0x3eb

    if-eq p1, p2, :cond_2

    const/16 p2, 0x3f2

    if-eq p1, p2, :cond_2

    const/16 p2, 0x3f7

    if-eq p1, p2, :cond_1

    const-string p2, "SMP_0401"

    const-string p1, "Internal error"

    goto :goto_0

    :cond_1
    const-string p2, "SMP_0502"

    const-string p1, "Invalid server response"

    goto :goto_0

    :cond_2
    const-string p2, "SMP_0301"

    const-string p1, "Network is not available"

    :goto_0
    iget-object p0, p0, Li9/d;->a:Landroid/content/Context;

    invoke-static {p0, p2, p1}, Lh9/a;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final d(Li9/c;Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Li9/d;->b:Lf9/c;

    invoke-virtual {v0}, Lf9/c;->K()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-lez v0, :cond_0

    const-string v0, "a"

    const-string v2, "already have first upload time. skip setting firstUploadTime"

    invoke-static {v0, v2}, Lj3/f;->l(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "initsts"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iget-object v0, p0, Li9/d;->b:Lf9/c;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v4, "smp_first_upload_time"

    invoke-virtual {v0, v4, v2, v3}, Le9/b;->v(Ljava/lang/String;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    :goto_0
    move v0, v1

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v0

    throw v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    const-string v2, "a"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "invalid server response. "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lj3/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_1

    iget-object p0, p0, Li9/d;->a:Landroid/content/Context;

    const-string p1, "SMP_0502"

    const-string p2, "Invalid server response"

    invoke-static {p0, p1, p2}, Lh9/a;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {p0, p2}, Li9/d;->k(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Li9/d;->a(Li9/c;)V

    iget-object p0, p0, Li9/d;->a:Landroid/content/Context;

    invoke-static {p0, v1}, Lh9/a;->e(Landroid/content/Context;Z)V

    return-void
.end method

.method public final e()Z
    .locals 12

    iget-object v0, p0, Li9/d;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "Internal error"

    const-string v3, "SMP_0401"

    const-string v4, "a"

    iget-object v5, p0, Li9/d;->a:Landroid/content/Context;

    const/4 v6, 0x0

    if-eqz v1, :cond_0

    const-string p0, "request fail. appid null"

    invoke-static {v4, p0}, Lj3/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v5, v3, v2}, Lh9/a;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return v6

    :cond_0
    invoke-static {v5}, Lfc/e;->F(Landroid/content/Context;)Z

    move-result v1

    iget-object v7, p0, Li9/d;->d:Ljava/lang/String;

    const/4 v8, 0x1

    if-eqz v1, :cond_1

    invoke-static {v5}, Lf9/c;->G(Landroid/content/Context;)Lf9/c;

    move-result-object v7

    monitor-enter v7

    :try_start_0
    const-string v9, "random_smpid_generated"

    invoke-virtual {v7, v9}, Le9/b;->a(Ljava/lang/String;)Z

    move-result v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v7

    if-eqz v9, :cond_2

    const-string p0, "already have random smpid. skip generation"

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v7

    throw p0

    :cond_1
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string p0, "already have smpid. skip generation"

    :goto_0
    invoke-static {v4, p0}, Lj3/f;->l(Ljava/lang/String;Ljava/lang/String;)V

    return v8

    :cond_2
    const/4 v7, 0x0

    if-eqz v1, :cond_3

    const-string v1, "deviceid"

    invoke-static {v5, v1}, Lp1/f;->M(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_4

    const-string p0, "request fail. seed null"

    invoke-static {v4, p0}, Lj3/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "SMP_0102"

    const-string v0, "Fail to create smp id. Device Id is not available"

    invoke-static {v5, p0, v0}, Lh9/a;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return v6

    :cond_3
    move-object v1, v7

    :cond_4
    new-instance v9, Li9/e;

    invoke-direct {v9, v0, v1, v7, v6}, Li9/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v0, 0x1e

    invoke-static {v5, v9, v0}, Lcom/samsung/android/sdk/smp/common/network/d;->i(Landroid/content/Context;Lcom/samsung/android/sdk/smp/common/network/d;I)Lb0/a;

    move-result-object v0

    iget-boolean v1, v0, Lb0/a;->a:Z

    if-eqz v1, :cond_9

    iget-object v0, v0, Lb0/a;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Li9/d;->b:Lf9/c;

    const-string v7, "Invalid server response"

    const-string v9, "SMP_0502"

    :try_start_1
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lfc/e;->F(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "deviceid"

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_5

    const-string p0, "invalid server response. sps deviceid null"

    :goto_1
    invoke-static {v4, p0}, Lj3/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    invoke-static {v5, v0}, Lp1/f;->N(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string p0, "fail to set sps deviceid"

    invoke-static {v4, p0}, Lj3/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v5, v3, v2}, Lh9/a;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_6
    const-string v0, "smpid"

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string p0, "invalid server response. smpid is null"

    goto :goto_1

    :goto_2
    invoke-static {v5, v9, v7}, Lh9/a;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_7
    monitor-enter v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    const-string v2, "smpid"

    invoke-virtual {v1, v2, v0}, Le9/b;->x(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    monitor-exit v1

    iput-object v0, p0, Li9/d;->d:Ljava/lang/String;

    const-string p0, "webid"

    invoke-virtual {v10, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    monitor-enter v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :try_start_4
    const-string v0, "webid"

    invoke-virtual {v1, v0, p0}, Le9/b;->x(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    monitor-exit v1

    goto :goto_3

    :catchall_1
    move-exception p0

    monitor-exit v1

    throw p0

    :cond_8
    :goto_3
    move v6, v8

    goto :goto_4

    :catchall_2
    move-exception p0

    monitor-exit v1

    throw p0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "invalid server response. "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lj3/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v5, v9, v7}, Lh9/a;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    return v6

    :cond_9
    iget v1, v0, Lb0/a;->b:I

    iget-object v0, v0, Lb0/a;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Li9/a;->c(ILjava/lang/String;)V

    return v6
.end method
