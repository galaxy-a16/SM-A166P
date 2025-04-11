.class public final Lx9/c;
.super Lcom/google/protobuf/b8;
.source "SourceFile"


# instance fields
.field public final e:Lu9/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ls9/a;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/b8;-><init>(Landroid/content/Context;Ls9/a;)V

    const-class p2, Lu9/a;

    monitor-enter p2

    :try_start_0
    sget-object v0, Lu9/a;->g:Lu9/a;

    if-nez v0, :cond_0

    new-instance v0, Lu9/a;

    invoke-direct {v0, p1}, Lu9/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lu9/a;->g:Lu9/a;

    :cond_0
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object p1, Lu9/a;->g:Lu9/a;

    iput-object p1, p0, Lx9/c;->e:Lu9/a;

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public final c(Ljava/util/Map;)I
    .locals 7

    iget-object v0, p0, Lcom/google/protobuf/b8;->a:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    const/4 v2, -0x4

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v2

    :goto_1
    const/4 v3, -0x6

    const-string v4, "DLS Sender"

    if-ne v1, v2, :cond_2

    const-string v5, "Network unavailable."

    invoke-static {v4, v5}, Lv4/b;->t(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    invoke-static {v0}, Lh3/a;->z(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "policy expired. request policy"

    invoke-static {v4, v2}, Lv4/b;->t(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v3

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    :goto_2
    iget-object v4, p0, Lcom/google/protobuf/b8;->c:Ljava/lang/Object;

    if-eqz v2, :cond_5

    invoke-virtual {p0, p1}, Lcom/google/protobuf/b8;->b(Ljava/util/Map;)V

    if-ne v2, v3, :cond_4

    iget-object p1, p0, Lcom/google/protobuf/b8;->b:Ljava/lang/Object;

    check-cast p1, Ls9/a;

    iget-object v1, p0, Lcom/google/protobuf/b8;->d:Ljava/lang/Object;

    check-cast v1, Landroidx/work/impl/x;

    const/4 v3, 0x0

    iget-object p0, p0, Lx9/c;->e:Lu9/a;

    invoke-static {v0, p1, v1, p0, v3}, Lh3/a;->X(Landroid/content/Context;Ls9/a;Landroidx/work/impl/x;Lu9/a;Ls9/d;)V

    check-cast v4, Lz9/a;

    iget-boolean p0, v4, Lz9/a;->a:Z

    if-eqz p0, :cond_4

    iget-object p0, v4, Lz9/a;->b:Ljava/lang/Object;

    check-cast p0, Lp1/l;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 p1, 0x5

    int-to-long v3, p1

    const-wide/32 v5, 0x5265c00

    mul-long/2addr v3, v5

    sub-long/2addr v0, v3

    invoke-virtual {p0, v0, v1}, Lp1/l;->g(J)V

    :cond_4
    return v2

    :cond_5
    new-instance v0, Lx9/b;

    invoke-direct {v0, p0, v1}, Lx9/b;-><init>(Lx9/c;I)V

    new-instance v2, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/b;

    const-string v3, "ts"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-virtual {p0, p1}, Lx9/c;->d(Ljava/util/Map;)Ljava/util/Map;

    sget-object v3, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Utils$Depth;->ONE_DEPTH:Lcom/samsung/context/sdk/samsunganalytics/internal/util/Utils$Depth;

    invoke-static {p1, v3}, Lva/n;->F(Ljava/util/Map;Lcom/samsung/context/sdk/samsunganalytics/internal/util/Utils$Depth;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Lcom/google/protobuf/b8;->a(Ljava/util/Map;)Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;

    move-result-object p1

    invoke-direct {v2, v5, v6, v3, p1}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/b;-><init>(JLjava/lang/String;Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;)V

    invoke-virtual {p0, v1, v2, v0}, Lx9/c;->f(ILcom/samsung/context/sdk/samsunganalytics/internal/sender/b;Lx9/b;)I

    move-result p1

    const/4 v2, -0x1

    if-ne p1, v2, :cond_6

    return p1

    :cond_6
    check-cast v4, Lz9/a;

    const/16 v3, 0xc8

    invoke-virtual {v4, v3}, Lz9/a;->a(I)Ljava/util/Queue;

    move-result-object v3

    iget-boolean v4, v4, Lz9/a;->a:Z

    if-eqz v4, :cond_7

    sget-object v2, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;->UIX:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;

    invoke-virtual {p0, v1, v2, v3, v0}, Lx9/c;->e(ILcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;Ljava/util/Queue;Lx9/b;)V

    sget-object v2, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;->DEVICE:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;

    invoke-virtual {p0, v1, v2, v3, v0}, Lx9/c;->e(ILcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;Ljava/util/Queue;Lx9/b;)V

    goto :goto_3

    :cond_7
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_8

    invoke-interface {v3}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/b;

    invoke-virtual {p0, v1, p1, v0}, Lx9/c;->f(ILcom/samsung/context/sdk/samsunganalytics/internal/sender/b;Lx9/b;)I

    move-result p1

    if-ne p1, v2, :cond_7

    :cond_8
    :goto_3
    return p1
.end method

.method public final d(Ljava/util/Map;)Ljava/util/Map;
    .locals 4

    iget-object v0, p0, Lx9/c;->e:Lu9/a;

    iget-object v1, v0, Lu9/a;->a:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    const-string v2, "la"

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lu9/a;->e:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lu9/a;->e:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    const-string v2, "mcc"

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v1, v0, Lu9/a;->f:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v0, Lu9/a;->f:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    const-string v2, "mnc"

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v1, v0, Lu9/a;->c:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    const-string v2, "dm"

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/protobuf/b8;->b:Ljava/lang/Object;

    check-cast v1, Ls9/a;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    const-string v3, "auid"

    invoke-interface {p1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lu9/a;->b:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    const-string v3, "do"

    invoke-interface {p1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/google/protobuf/b8;->a:Ljava/lang/Object;

    check-cast p0, Landroid/content/Context;

    invoke-static {p0}, Lkotlin/reflect/x;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const-string v2, "av"

    invoke-interface {p1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, v1, Ls9/a;->c:Ljava/lang/String;

    const-string v2, "uv"

    invoke-interface {p1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "v"

    const-string v2, "6.05.069"

    invoke-interface {p1, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget p0, v1, Ls9/a;->e:I

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string v2, "at"

    invoke-interface {p1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, v0, Lu9/a;->d:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    const-string v0, "fv"

    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, v1, Ls9/a;->a:Ljava/lang/String;

    const-string v0, "tid"

    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    const-string v0, "tz"

    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public final e(ILcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;Ljava/util/Queue;Lx9/b;)V
    .locals 9

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    new-instance v2, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v2}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iget-object v3, p0, Lcom/google/protobuf/b8;->a:Ljava/lang/Object;

    check-cast v3, Landroid/content/Context;

    const-string v4, "SamsungAnalyticsPrefs"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    const/4 v6, 0x1

    if-ne p1, v6, :cond_0

    const-string v6, "dq-w"

    invoke-interface {v4, v6, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    const-string v7, "wifi_used"

    goto :goto_1

    :cond_0
    if-nez p1, :cond_1

    const-string v6, "dq-3g"

    invoke-interface {v4, v6, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    const-string v7, "data_used"

    :goto_1
    invoke-interface {v4, v7, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    goto :goto_2

    :cond_1
    move v4, v5

    move v6, v4

    :goto_2
    sub-int/2addr v6, v4

    const v4, 0xc800

    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    :cond_2
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    iget-object v7, p0, Lcom/google/protobuf/b8;->c:Ljava/lang/Object;

    if-eqz v6, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/b;

    iget-object v8, v6, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/b;->d:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;

    if-eq v8, p2, :cond_3

    goto :goto_3

    :cond_3
    iget-object v8, v6, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/b;->c:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    array-length v8, v8

    add-int/2addr v8, v5

    if-le v8, v4, :cond_4

    goto :goto_4

    :cond_4
    iget-object v8, v6, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/b;->c:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    array-length v8, v8

    add-int/2addr v5, v8

    invoke-interface {v2, v6}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    iget-object v6, v6, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {p3}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    check-cast v7, Lz9/a;

    invoke-virtual {v7, v0}, Lz9/a;->d(Ljava/util/ArrayList;)V

    const/16 p3, 0xc8

    invoke-virtual {v7, p3}, Lz9/a;->a(I)Ljava/util/Queue;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    goto :goto_3

    :cond_5
    :goto_4
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_6

    return-void

    :cond_6
    check-cast v7, Lz9/a;

    invoke-virtual {v7, v0}, Lz9/a;->d(Ljava/util/ArrayList;)V

    invoke-static {v3, p1, v5}, Lh3/a;->Y(Landroid/content/Context;II)V

    iget-object v3, p0, Lcom/google/protobuf/b8;->d:Ljava/lang/Object;

    check-cast v3, Landroidx/work/impl/x;

    new-instance v4, Lx9/a;

    iget-object v6, p0, Lcom/google/protobuf/b8;->b:Ljava/lang/Object;

    check-cast v6, Ls9/a;

    iget-object v6, v6, Ls9/a;->a:Ljava/lang/String;

    invoke-direct {v4, p2, v2, v6, p4}, Lx9/a;-><init>(Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;Ljava/util/concurrent/LinkedBlockingQueue;Ljava/lang/String;Lx9/b;)V

    invoke-virtual {v3, v4}, Landroidx/work/impl/x;->d(Lab/a;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "send packet : num("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") size("

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DLSLogSender"

    invoke-static {v3, v2}, Lv4/b;->t(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    return-void
.end method

.method public final f(ILcom/samsung/context/sdk/samsunganalytics/internal/sender/b;Lx9/b;)I
    .locals 10

    if-nez p2, :cond_0

    const/16 p0, -0x64

    return p0

    :cond_0
    iget-object v0, p2, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/b;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    iget-object v1, p0, Lcom/google/protobuf/b8;->a:Ljava/lang/Object;

    check-cast v1, Landroid/content/Context;

    const-string v2, "SamsungAnalyticsPrefs"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const/4 v4, 0x1

    if-ne p1, v4, :cond_1

    const-string v4, "dq-w"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    const-string v5, "wifi_used"

    invoke-interface {v2, v5, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    const-string v6, "oq-w"

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    const-string v4, "dq-3g"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    const-string v5, "data_used"

    invoke-interface {v2, v5, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    const-string v6, "oq-3g"

    :goto_0
    invoke-interface {v2, v6, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    goto :goto_1

    :cond_2
    move v2, v3

    move v4, v2

    move v5, v4

    :goto_1
    const-string v6, "Quota : "

    const-string v7, "/ Uploaded : "

    const-string v8, "/ limit : "

    invoke-static {v6, v4, v7, v5, v8}, Landroidx/activity/b;->t(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "/ size : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lv4/b;->v(Ljava/lang/String;)V

    add-int v6, v5, v0

    const-string v7, ")"

    const-string v8, "/ size: "

    const-string v9, "DLS Sender"

    if-ge v4, v6, :cond_3

    const-string v2, "send result fail : Over daily quota (quota: "

    const-string v6, "/ uploaded: "

    invoke-static {v2, v4, v6, v5, v8}, Landroidx/activity/b;->t(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Lv4/b;->t(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, -0x1

    goto :goto_2

    :cond_3
    if-ge v2, v0, :cond_4

    const-string v4, "send result fail : Over once quota (limit: "

    invoke-static {v4, v2, v8, v0, v7}, Landroidx/activity/b;->j(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Lv4/b;->t(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, -0xb

    goto :goto_2

    :cond_4
    move v2, v3

    :goto_2
    if-eqz v2, :cond_5

    return v2

    :cond_5
    invoke-static {v1, p1, v0}, Lh3/a;->Y(Landroid/content/Context;II)V

    new-instance p1, Lx9/a;

    iget-object v0, p0, Lcom/google/protobuf/b8;->b:Ljava/lang/Object;

    check-cast v0, Ls9/a;

    iget-object v0, v0, Ls9/a;->a:Ljava/lang/String;

    invoke-direct {p1, p2, v0, p3}, Lx9/a;-><init>(Lcom/samsung/context/sdk/samsunganalytics/internal/sender/b;Ljava/lang/String;Lx9/b;)V

    iget-object p0, p0, Lcom/google/protobuf/b8;->d:Ljava/lang/Object;

    check-cast p0, Landroidx/work/impl/x;

    invoke-virtual {p0, p1}, Landroidx/work/impl/x;->d(Lab/a;)V

    return v3
.end method
