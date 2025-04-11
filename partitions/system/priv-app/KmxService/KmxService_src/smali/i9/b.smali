.class public final Li9/b;
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
    .locals 1

    iget-object p1, p0, Li9/d;->a:Landroid/content/Context;

    invoke-static {p1}, Li9/f;->b(Landroid/content/Context;)V

    iget-object p1, p0, Li9/d;->b:Lf9/c;

    monitor-enter p1

    :try_start_0
    const-string p2, "upload_fail_count"

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2}, Le9/b;->d(ILjava/lang/String;)I

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p1

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Lf9/c;->Q(I)V

    invoke-virtual {p0, p2}, Li9/b;->l(I)V

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1

    throw p0
.end method

.method public final c(ILjava/lang/String;)V
    .locals 2

    invoke-super {p0, p1, p2}, Li9/d;->c(ILjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "response code : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", msg : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "b"

    invoke-static {v0, p2}, Lj3/f;->y(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Li9/d;->b:Lf9/c;

    monitor-enter p2

    :try_start_0
    const-string v0, "upload_fail_count"

    const/4 v1, 0x0

    invoke-virtual {p2, v1, v0}, Le9/b;->d(ILjava/lang/String;)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p2

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2, v0}, Lf9/c;->Q(I)V

    const/16 p2, 0x190

    if-lt p1, p2, :cond_0

    const/16 p2, 0x1f4

    if-ge p1, p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, v0}, Li9/b;->l(I)V

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p2

    throw p0
.end method

.method public final d(Li9/c;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p2}, Li9/d;->k(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Li9/d;->a(Li9/c;)V

    return-void
.end method

.method public final e()Z
    .locals 9

    iget-object v0, p0, Li9/d;->b:Lf9/c;

    monitor-enter v0

    :try_start_0
    const-string v1, "webid"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Le9/b;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit v0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v3, 0x1

    if-nez v1, :cond_0

    return v3

    :cond_0
    const-string v1, "webid is empty. request to issue"

    const-string v4, "b"

    invoke-static {v4, v1}, Lj3/f;->l(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Li9/d;->d:Ljava/lang/String;

    iget-object v5, p0, Li9/d;->c:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    const/4 v7, 0x0

    if-nez v6, :cond_5

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_1

    :cond_1
    iget-object v6, p0, Li9/d;->a:Landroid/content/Context;

    invoke-static {v6}, Lfc/e;->F(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_2

    const-string v2, "deviceid"

    invoke-static {v6, v2}, Lp1/f;->M(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    const-string v0, "webid request fail. sps seed is empty"

    goto :goto_2

    :cond_2
    new-instance v8, Li9/e;

    invoke-direct {v8, v5, v2, v1, v7}, Li9/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v1, 0x1e

    invoke-static {v6, v8, v1}, Lcom/samsung/android/sdk/smp/common/network/d;->i(Landroid/content/Context;Lcom/samsung/android/sdk/smp/common/network/d;I)Lb0/a;

    move-result-object v1

    iget-boolean v2, v1, Lb0/a;->a:Z

    if-eqz v2, :cond_4

    iget-object v1, v1, Lb0/a;->c:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "webid"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    monitor-enter v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    const-string v2, "webid"

    invoke-virtual {v0, v2, v1}, Le9/b;->x(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "invalid server response. "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lj3/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x3f7

    const-string v1, "server response error"

    invoke-virtual {p0, v0, v1}, Li9/b;->c(ILjava/lang/String;)V

    move v3, v7

    :cond_3
    :goto_0
    return v3

    :cond_4
    iget v0, v1, Lb0/a;->b:I

    iget-object v1, v1, Lb0/a;->c:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Li9/b;->c(ILjava/lang/String;)V

    return v7

    :cond_5
    :goto_1
    const-string v0, "webid request fail. appid/smpid is empty"

    :goto_2
    const/16 v1, 0x3f0

    invoke-virtual {p0, v1, v0}, Li9/b;->c(ILjava/lang/String;)V

    return v7

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final l(I)V
    .locals 4

    sget-object v0, Lcom/samsung/android/sdk/smp/marketing/c;->a:Ljava/util/HashSet;

    iget-object p0, p0, Li9/d;->a:Landroid/content/Context;

    invoke-static {p0}, Lc9/b;->O(Landroid/content/Context;)Lc9/b;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lc9/b;->w()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v0}, Lc9/b;->c()V

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    sub-int/2addr p1, v1

    rem-int/lit8 p1, p1, 0x7

    add-int/2addr p1, v1

    int-to-long v0, p1

    sget-wide v2, Lb9/a;->c:J

    mul-long/2addr v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, v0

    invoke-static {p0, v2, v3}, Lva/n;->N(Landroid/content/Context;J)V

    goto :goto_1

    :cond_1
    const/4 v0, 0x3

    if-gt p1, v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lb9/a;->f:J

    add-long/2addr v0, v2

    invoke-static {p0, v0, v1}, Lva/n;->N(Landroid/content/Context;J)V

    :cond_2
    :goto_1
    return-void
.end method
