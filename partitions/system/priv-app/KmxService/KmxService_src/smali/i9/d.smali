.class public abstract Li9/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lf9/c;

.field public final c:Ljava/lang/String;

.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li9/d;->a:Landroid/content/Context;

    invoke-static {p1}, Lf9/c;->G(Landroid/content/Context;)Lf9/c;

    move-result-object v0

    iput-object v0, p0, Li9/d;->b:Lf9/c;

    invoke-static {}, Lf9/a;->b()Lf9/a;

    move-result-object v1

    invoke-virtual {v1, p1}, Lf9/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Li9/d;->c:Ljava/lang/String;

    invoke-virtual {v0}, Lf9/c;->L()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Li9/d;->d:Ljava/lang/String;

    return-void
.end method

.method public static h(Lc9/b;)Lorg/json/JSONArray;
    .locals 5

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {p0}, Lc9/b;->w()Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    const-string v4, "mid"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "feedback"

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public final a(Li9/c;)V
    .locals 8

    iget-object v0, p0, Li9/d;->b:Lf9/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lf9/c;->Q(I)V

    iget-object v0, p0, Li9/d;->b:Lf9/c;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    monitor-enter v0

    :try_start_0
    const-string v4, "last_upload_complete_time"

    invoke-virtual {v0, v4, v2, v3}, Le9/b;->v(Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    monitor-exit v0

    sget-object v0, Lcom/samsung/android/sdk/smp/marketing/c;->a:Ljava/util/HashSet;

    iget-object v0, p0, Li9/d;->a:Landroid/content/Context;

    iget-object v2, p1, Li9/c;->j:Lorg/json/JSONArray;

    const-string v3, "c"

    if-nez v2, :cond_0

    const-string v1, "deleteFeedbacks. error : marketings empty"

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lc9/b;->O(Landroid/content/Context;)Lc9/b;

    move-result-object v4

    if-nez v4, :cond_1

    const-string v1, "deleteFeedbacks. error : dbhandler null"

    :goto_0
    invoke-static {v3, v1}, Lj3/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_1
    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v1, v5, :cond_2

    :try_start_1
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "mid"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "feedback"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7, v5}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v6, v7}, Lc9/b;->s(Ljava/lang/String;Lorg/json/JSONArray;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "deleteFeedbacks. error : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lj3/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v4}, Lc9/b;->c()V

    :goto_3
    sget-object v1, Li9/f;->k:Li9/f;

    invoke-static {v0}, Lc9/b;->O(Landroid/content/Context;)Lc9/b;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lc9/b;->l()V

    invoke-virtual {v0}, Lc9/b;->p()V

    invoke-virtual {v0}, Lc9/b;->c()V

    :cond_3
    iget-object v0, p1, Li9/c;->e:Lorg/json/JSONObject;

    if-eqz v0, :cond_4

    iget-object v1, p0, Li9/d;->b:Lf9/c;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    monitor-enter v1

    :try_start_2
    const-string v2, "prev_basic"

    invoke-virtual {v1, v2, v0}, Le9/b;->x(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v1

    goto :goto_4

    :catchall_0
    move-exception p0

    monitor-exit v1

    throw p0

    :cond_4
    :goto_4
    iget-object v0, p1, Li9/c;->f:Lorg/json/JSONObject;

    if-eqz v0, :cond_5

    iget-object v1, p0, Li9/d;->b:Lf9/c;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    monitor-enter v1

    :try_start_3
    const-string v2, "prev_appfilters"

    invoke-virtual {v1, v2, v0}, Le9/b;->x(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit v1

    goto :goto_5

    :catchall_1
    move-exception p0

    monitor-exit v1

    throw p0

    :cond_5
    :goto_5
    iget-object p1, p1, Li9/c;->g:Lorg/json/JSONArray;

    if-eqz p1, :cond_6

    iget-object p0, p0, Li9/d;->b:Lf9/c;

    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    monitor-enter p0

    :try_start_4
    const-string v0, "prev_app_referrer_keys"

    invoke-virtual {p0, v0, p1}, Le9/b;->x(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    monitor-exit p0

    goto :goto_6

    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_6
    :goto_6
    return-void

    :catchall_3
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public abstract b(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public c(ILjava/lang/String;)V
    .locals 0

    const/16 p2, 0x3ea

    if-eq p1, p2, :cond_0

    iget-object p2, p0, Li9/d;->a:Landroid/content/Context;

    invoke-static {p2}, Li9/f;->b(Landroid/content/Context;)V

    :cond_0
    const/16 p2, 0x190

    if-lt p1, p2, :cond_1

    const/16 p2, 0x1f4

    if-ge p1, p2, :cond_1

    const-string p1, "d"

    const-string p2, "invalid base url - server client error"

    invoke-static {p1, p2}, Lj3/f;->y(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Li9/d;->b:Lf9/c;

    monitor-enter p0

    :try_start_0
    const-string p1, "baseUrl"

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Le9/b;->x(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public abstract d(Li9/c;Ljava/lang/String;)V
.end method

.method public abstract e()Z
.end method

.method public final f(Lc9/b;)Lorg/json/JSONObject;
    .locals 10

    monitor-enter p1

    :try_start_0
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x0

    :try_start_1
    iget-object v2, p1, Lc9/b;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "appfilter"

    const-string v4, "key"

    const-string v5, "value"

    filled-new-array {v4, v5}, [Ljava/lang/String;

    move-result-object v4

    const-string v5, "value is not null and value != ?"

    const-string v6, ""

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "key"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "value"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_3

    :catch_0
    move-exception v2

    :try_start_2
    const-string v3, "b"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get app filter error. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lj3/f;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    :try_start_3
    invoke-static {v1}, Lc9/b;->d(Landroid/database/Cursor;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit p1

    iget-object p0, p0, Li9/d;->a:Landroid/content/Context;

    invoke-static {p0}, Lfc/e;->F(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_2

    sget p0, Lp1/f;->f:I

    const-string p0, "p_deviceId"

    invoke-virtual {v0, p0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    const-string p0, "d"

    const-string p1, "buildAppFilter error. deviceid null"

    invoke-static {p0, p1}, Lj3/f;->j(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lcom/samsung/android/sdk/smp/common/exception/InternalException$BuildClientsException;

    const-string p1, "SMP_0401"

    const-string v0, "Internal error"

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/sdk/smp/common/exception/InternalException$BuildClientsException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_1
    sget p0, Li4/f;->e:I

    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_4

    const-string v0, ""

    :cond_4
    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    :cond_5
    return-object p0

    :goto_3
    :try_start_4
    invoke-static {v1}, Lc9/b;->d(Landroid/database/Cursor;)V

    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p0

    monitor-exit p1

    throw p0
.end method

.method public final g()Lorg/json/JSONObject;
    .locals 33

    move-object/from16 v1, p0

    iget-object v2, v1, Li9/d;->a:Landroid/content/Context;

    iget-object v0, v1, Li9/d;->b:Lf9/c;

    invoke-virtual {v0}, Lf9/c;->K()J

    move-result-wide v3

    invoke-static {}, Lfc/e;->n()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Android"

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-object v0, v1, Li9/d;->b:Lf9/c;

    invoke-virtual {v0}, Lf9/c;->J()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, v1, Li9/d;->b:Lf9/c;

    invoke-virtual {v0}, Lf9/c;->I()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    invoke-static {}, Lfc/e;->m()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    move-object v10, v0

    const-string v0, "phone"

    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    const/4 v11, 0x0

    const/4 v13, 0x5

    const/4 v14, 0x3

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v15

    if-ne v15, v13, :cond_1

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v15

    if-le v15, v14, :cond_1

    invoke-virtual {v0, v11, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    const-string v0, ""

    :cond_2
    move-object v15, v0

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    const-string v0, "d"

    const-string v1, "buildBasicData error. country code and sim mcc null"

    invoke-static {v0, v1}, Lj3/f;->k(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/sdk/smp/common/exception/InternalException$BuildClientsException;

    const-string v1, "SMP_0103"

    const-string v2, "Fail to init. device and sim country code are empty"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/smp/common/exception/InternalException$BuildClientsException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_1
    const-string v0, "phone"

    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v12

    if-le v12, v14, :cond_5

    invoke-virtual {v0, v11, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    :goto_2
    if-nez v0, :cond_6

    const-string v0, ""

    :cond_6
    move-object v12, v0

    const-string v0, "phone"

    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v11

    if-ne v11, v13, :cond_7

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_7

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v11

    if-le v11, v14, :cond_7

    invoke-virtual {v0, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_7
    const/4 v0, 0x0

    :goto_3
    if-nez v0, :cond_8

    const-string v0, ""

    :cond_8
    move-object v11, v0

    const-string v0, "phone"

    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_9

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v13

    if-le v13, v14, :cond_9

    invoke-virtual {v0, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_9
    const/4 v0, 0x0

    :goto_4
    if-nez v0, :cond_a

    const-string v0, ""

    :cond_a
    move-object v13, v0

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v18, v8

    :try_start_0
    const-string v0, "ro.product_ship"

    invoke-static {v0}, Lfc/e;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v8, "true"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception v0

    const-string v8, "e"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    :goto_5
    if-nez v0, :cond_b

    const-string v0, "_eng"

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :try_start_1
    const-string v0, "ro.csc.sales_code"

    invoke-static {v0}, Lfc/e;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object/from16 v20, v9

    move-object v9, v0

    goto :goto_6

    :catch_0
    move-exception v0

    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v20, v9

    const-string v9, "get csc code fail. "

    invoke-direct {v14, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v9, "e"

    invoke-static {v9, v0}, Lj3/f;->y(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v9, 0x0

    :goto_6
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lfc/e;->o(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_c

    const-string v0, "e"

    const-string v14, "fail to get sdk version"

    invoke-static {v0, v14}, Lj3/f;->y(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ""

    goto :goto_7

    :cond_c
    const-string v14, "com.samsung.android.sdk.smp.sdkv"

    invoke-virtual {v0, v14}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_7
    move-object v14, v0

    :try_start_2
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    move-object/from16 v21, v14

    const/4 v14, 0x0

    :try_start_3
    invoke-static {v14, v2, v0}, Li4/f;->u(ILandroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_8

    :catch_1
    move-object/from16 v21, v14

    const/4 v14, 0x0

    :catch_2
    const-string v0, ""

    :goto_8
    move-object v14, v0

    move-object/from16 v22, v14

    invoke-static {v2}, Lfc/e;->r(Landroid/content/Context;)I

    move-result v14

    iget-object v0, v1, Li9/d;->a:Landroid/content/Context;

    move/from16 v23, v14

    iget-object v14, v1, Li9/d;->b:Lf9/c;

    move-object/from16 v24, v9

    const/4 v9, 0x1

    invoke-virtual {v14, v9}, Lf9/c;->H(I)Ljava/lang/String;

    move-result-object v14

    :try_start_4
    invoke-static {v0, v14}, Lfc/e;->z(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v14
    :try_end_4
    .catch Lcom/samsung/android/sdk/smp/common/exception/InternalException$IllegalPushChannelException; {:try_start_4 .. :try_end_4} :catch_3

    xor-int/2addr v14, v9

    goto :goto_9

    :catch_3
    const/4 v14, 0x0

    :goto_9
    iget-object v9, v1, Li9/d;->b:Lf9/c;

    move-object/from16 v25, v8

    const/4 v8, 0x2

    invoke-virtual {v9, v8}, Lf9/c;->H(I)Ljava/lang/String;

    move-result-object v8

    :try_start_5
    invoke-static {v0, v8}, Lfc/e;->z(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0
    :try_end_5
    .catch Lcom/samsung/android/sdk/smp/common/exception/InternalException$IllegalPushChannelException; {:try_start_5 .. :try_end_5} :catch_4

    const/4 v8, 0x1

    xor-int/2addr v0, v8

    goto :goto_a

    :catch_4
    const/4 v0, 0x0

    :goto_a
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    const-string v9, "notice"

    invoke-virtual {v8, v9, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v9, "marketing"

    invoke-virtual {v8, v9, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    invoke-static {v2}, Lfc/e;->F(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v9, "f"

    const-string v0, "getSpsPolicy success. policy : "

    const-string v14, "spspolicy"

    invoke-static {v2, v14}, Lp1/f;->M(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_d

    goto :goto_b

    :cond_d
    move-object/from16 v17, v8

    :try_start_6
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, v14}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object/from16 v19, v8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lj3/f;->l(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_5

    move-object/from16 v0, v19

    goto :goto_d

    :catch_5
    move-exception v0

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v14, "getSpsPolicy error. "

    invoke-direct {v8, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lj3/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    :cond_e
    :goto_b
    move-object/from16 v17, v8

    :goto_c
    const/4 v0, 0x0

    :goto_d
    iget-object v8, v1, Li9/d;->b:Lf9/c;

    monitor-enter v8

    :try_start_7
    const-string v9, "confVersion"

    const/4 v14, -0x1

    invoke-virtual {v8, v14, v9}, Le9/b;->d(ILjava/lang/String;)I

    move-result v9
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    monitor-exit v8

    iget-object v8, v1, Li9/d;->b:Lf9/c;

    monitor-enter v8

    :try_start_8
    const-string v14, "uid"

    move-object/from16 v16, v0

    const-string v0, ""

    invoke-virtual {v8, v14, v0}, Le9/b;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    monitor-exit v8

    sget-object v8, Lcom/samsung/android/sdk/smp/SmpConstants$OptInPolicy;->INTEGRATED_BASED:Lcom/samsung/android/sdk/smp/SmpConstants$OptInPolicy;

    iget-object v14, v1, Li9/d;->b:Lf9/c;

    monitor-enter v14

    move-object/from16 v19, v0

    :try_start_9
    const-string v0, "opt_in_policy"

    sget-object v26, Lcom/samsung/android/sdk/smp/SmpConstants$OptInPolicy;->DEVICE_BASED:Lcom/samsung/android/sdk/smp/SmpConstants$OptInPolicy;

    move/from16 v27, v9

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v14, v0, v9}, Le9/b;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/smp/SmpConstants$OptInPolicy;->fromString(Ljava/lang/String;)Lcom/samsung/android/sdk/smp/SmpConstants$OptInPolicy;

    move-result-object v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    monitor-exit v14

    invoke-virtual {v8, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    iget-object v8, v1, Li9/d;->b:Lf9/c;

    monitor-enter v8

    :try_start_a
    const-string v9, "optin"

    invoke-virtual {v8, v9}, Le9/b;->a(Ljava/lang/String;)Z

    move-result v9
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    monitor-exit v8

    iget-object v1, v1, Li9/d;->b:Lf9/c;

    monitor-enter v1

    :try_start_b
    const-string v8, "optintime"

    move-object/from16 v26, v13

    const-wide/16 v13, 0x0

    invoke-virtual {v1, v13, v14, v8}, Le9/b;->g(JLjava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v13
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    monitor-exit v1

    invoke-static {v2}, Lfc/e;->x(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v2}, Lfc/e;->D(Landroid/content/Context;)Z

    move-result v8

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v28

    move/from16 p0, v1

    invoke-virtual/range {v28 .. v28}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v28, v1

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    move/from16 v29, v8

    const-string v8, "activity"

    invoke-virtual {v1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    invoke-virtual {v1}, Landroid/app/ActivityManager;->isBackgroundRestricted()Z

    move-result v1

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    move/from16 v30, v1

    const-string v1, "usagestats"

    invoke-virtual {v8, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/usage/UsageStatsManager;

    invoke-virtual {v1}, Landroid/app/usage/UsageStatsManager;->getAppStandbyBucket()I

    move-result v1

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    invoke-static {}, Lfc/e;->y()Z

    move-result v8

    move/from16 v31, v8

    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    move/from16 v32, v2

    const-string v2, "initsts"

    invoke-virtual {v8, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "dcc"

    invoke-virtual {v8, v2, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "lc"

    invoke-virtual {v8, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "os"

    invoke-virtual {v8, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "osv"

    invoke-virtual {v8, v2, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "mcc"

    invoke-virtual {v8, v2, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "nmcc"

    invoke-virtual {v8, v2, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "mnc"

    invoke-virtual {v8, v2, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "nmnc"

    move-object/from16 v3, v26

    invoke-virtual {v8, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "model"

    move-object/from16 v3, v25

    invoke-virtual {v8, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "csc"

    move-object/from16 v3, v24

    invoke-virtual {v8, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "sdkv"

    move-object/from16 v3, v21

    invoke-virtual {v8, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "appv"

    move-object/from16 v3, v22

    invoke-virtual {v8, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "targetsdklevel"

    move/from16 v3, v23

    invoke-virtual {v8, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "channel"

    move-object/from16 v3, v17

    invoke-virtual {v8, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "pid"

    move-object/from16 v3, v20

    invoke-virtual {v8, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "ptype"

    move-object/from16 v3, v18

    invoke-virtual {v8, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "confv"

    move/from16 v3, v27

    invoke-virtual {v8, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "uid"

    move-object/from16 v3, v19

    invoke-virtual {v8, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "optin"

    invoke-virtual {v8, v2, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v2, "optintime"

    invoke-virtual {v8, v2, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "isIntegratedOptin"

    invoke-virtual {v8, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v0, "powersaver"

    move/from16 v2, v29

    invoke-virtual {v8, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v0, "datasaver"

    move/from16 v2, p0

    invoke-virtual {v8, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v0, "timezone"

    move-object/from16 v2, v28

    invoke-virtual {v8, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz v16, :cond_f

    const-string v0, "spspolicy"

    move-object/from16 v2, v16

    invoke-virtual {v8, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_f
    const-string v0, "standbybucket"

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "backgroundRestricted"

    move/from16 v1, v30

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v0, "smallestScreenWidth"

    move/from16 v1, v32

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "fold"

    move/from16 v1, v31

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    return-object v8

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    :catchall_2
    move-exception v0

    monitor-exit v8

    throw v0

    :catchall_3
    move-exception v0

    monitor-exit v14

    throw v0

    :catchall_4
    move-exception v0

    monitor-exit v8

    throw v0

    :catchall_5
    move-exception v0

    monitor-exit v8

    throw v0

    :cond_10
    const-string v0, "d"

    const-string v1, "buildBasicData error. push token null"

    invoke-static {v0, v1}, Lj3/f;->j(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/sdk/smp/common/exception/InternalException$BuildClientsException;

    const-string v1, "SMP_0401"

    const-string v2, "Internal error"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/smp/common/exception/InternalException$BuildClientsException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_11
    const-string v0, "d"

    const-string v1, "buildBasicData error. push type null"

    invoke-static {v0, v1}, Lj3/f;->j(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/sdk/smp/common/exception/InternalException$BuildClientsException;

    const-string v1, "SMP_0401"

    const-string v2, "Internal error"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/smp/common/exception/InternalException$BuildClientsException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method

.method public final i()Lorg/json/JSONObject;
    .locals 2

    iget-object p0, p0, Li9/d;->a:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/a;->g(Landroid/content/Context;)V

    sget-object p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/a;->o:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    sget-object v0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/a;->o:Ljava/lang/String;

    const-string v1, "devicename"

    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final j(Lorg/json/JSONObject;)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v1, "alarm"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const-string v2, "job"

    invoke-virtual {p1, v2, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    move p1, v0

    move v0, v1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    iget-object v1, p0, Li9/d;->b:Lf9/c;

    monitor-enter v1

    :try_start_0
    const-string v2, "debugAlarm"

    invoke-virtual {v1, v2, v0}, Le9/b;->r(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit v1

    iget-object p0, p0, Li9/d;->b:Lf9/c;

    monitor-enter p0

    :try_start_1
    const-string v0, "debugJob"

    invoke-virtual {p0, v0, p1}, Le9/b;->r(Ljava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :catchall_1
    move-exception p0

    monitor-exit v1

    throw p0
.end method

.method public final k(Ljava/lang/String;)V
    .locals 5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "config"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    const-string p1, "config"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "session"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "session"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iget-object v2, p0, Li9/d;->b:Lf9/c;

    monitor-enter v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v3, "tracking"

    invoke-virtual {v2, v3, v1}, Le9/b;->r(Ljava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v2

    throw p0

    :cond_1
    :goto_0
    const-string v1, "uploadperiod"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "uploadperiod"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iget-object v3, p0, Li9/d;->b:Lf9/c;

    monitor-enter v3
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    const-string v4, "uploadDelay"

    invoke-virtual {v3, v4, v1, v2}, Le9/b;->v(Ljava/lang/String;J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    monitor-exit v3

    goto :goto_1

    :catchall_1
    move-exception p0

    monitor-exit v3

    throw p0

    :cond_2
    :goto_1
    const-string v1, "activeperiod"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "activeperiod"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iget-object v3, p0, Li9/d;->b:Lf9/c;

    monitor-enter v3
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    :try_start_5
    const-string v4, "activePeriod"

    invoke-virtual {v3, v4, v1, v2}, Le9/b;->v(Ljava/lang/String;J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    monitor-exit v3

    goto :goto_2

    :catchall_2
    move-exception p0

    monitor-exit v3

    throw p0

    :cond_3
    :goto_2
    const-string v1, "version"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "version"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Li9/d;->b:Lf9/c;

    monitor-enter v2
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_0

    :try_start_7
    const-string v3, "confVersion"

    invoke-virtual {v2, v1, v3}, Le9/b;->t(ILjava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :try_start_8
    monitor-exit v2

    goto :goto_3

    :catchall_3
    move-exception p0

    monitor-exit v2

    throw p0

    :cond_4
    :goto_3
    const-string v1, "ackperiod"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "ackperiod"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iget-object v3, p0, Li9/d;->b:Lf9/c;

    invoke-virtual {v3, v1, v2}, Lf9/c;->N(J)V

    :cond_5
    const-string v1, "baseUrl"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "baseUrl"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Li9/d;->b:Lf9/c;

    monitor-enter v2
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_0

    :try_start_9
    const-string v3, "baseUrl"

    invoke-virtual {v2, v3, v1}, Le9/b;->x(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    :try_start_a
    monitor-exit v2

    goto :goto_4

    :catchall_4
    move-exception p0

    monitor-exit v2

    throw p0

    :cond_6
    :goto_4
    const-string v1, "contentsType"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Li9/d;->b:Lf9/c;

    invoke-virtual {v2, v1}, Lf9/c;->O(Ljava/lang/String;)V

    const-string v1, "debug"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p0, p1}, Li9/d;->j(Lorg/json/JSONObject;)V

    :cond_7
    const-string p1, "spspolicy"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Li9/d;->a:Landroid/content/Context;

    invoke-static {p1}, Lfc/e;->F(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_8

    const-string p1, "spspolicy"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    iget-object p0, p0, Li9/d;->a:Landroid/content/Context;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    sget v0, Lh9/a;->a:I

    if-eqz p0, :cond_8

    const-string v0, "a"

    const-string v1, "send intent : sps policy"

    invoke-static {v0, v1}, Lj3/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.samsung.android.sdk.smp.SPS_POLICY_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "sps_policy"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_0

    goto :goto_5

    :catch_0
    move-exception p0

    const-string p1, "d"

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lj3/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    :goto_5
    return-void
.end method
