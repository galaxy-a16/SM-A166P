.class public final Lt9/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/app/Application;

.field public final b:Ls9/a;

.field public final c:Landroid/content/Context;

.field public final d:Lca/b;

.field public e:I


# direct methods
.method public constructor <init>(Landroid/app/Application;Ls9/a;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lt9/b;->e:I

    iput-object p1, p0, Lt9/b;->a:Landroid/app/Application;

    iput-object p2, p0, Lt9/b;->b:Ls9/a;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lt9/b;->c:Landroid/content/Context;

    new-instance v2, Lca/b;

    invoke-direct {v2, v1}, Lca/b;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lt9/b;->d:Lca/b;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lf9/b;

    const/16 v2, 0x1c

    invoke-direct {v1, p0, v2}, Lf9/b;-><init>(Ljava/lang/Object;I)V

    iput-object v1, p2, Ls9/a;->d:Lf9/b;

    invoke-static {}, Landroidx/work/impl/x;->h()Landroidx/work/impl/x;

    move-result-object v1

    new-instance v2, Lva/f;

    invoke-direct {v2, p0, p2, p1, v0}, Lva/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v1, v2}, Landroidx/work/impl/x;->d(Lab/a;)V

    const-string p0, "Tracker start:6.05.069"

    invoke-static {p0}, Lv4/b;->w(Ljava/lang/String;)V

    return-void
.end method

.method public static a(Lt9/b;)Z
    .locals 4

    const-string v0, "Tracker is not initialized, status : "

    monitor-enter p0

    :try_start_0
    iget v1, p0, Lt9/b;->e:I

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-ne v2, v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lt9/b;->e:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lv4/b;->s(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lt9/b;->b()I

    move-result v0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_1

    iget-object v0, p0, Lt9/b;->d:Lca/b;

    invoke-virtual {v0}, Lca/b;->a()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    move v3, v1

    :cond_1
    :goto_0
    monitor-exit p0

    return v3

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final b()I
    .locals 18

    move-object/from16 v1, p0

    iget v0, v1, Lt9/b;->e:I

    const/4 v2, 0x1

    if-nez v0, :cond_15

    iget-object v3, v1, Lt9/b;->b:Ls9/a;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v0, Lh3/a;->r:I

    iget-object v4, v1, Lt9/b;->c:Landroid/content/Context;

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, -0x1

    if-eq v0, v7, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v4}, Lkotlin/reflect/x;->e(Landroid/content/Context;)I

    move-result v0

    const v8, 0x202fbf00

    if-lt v0, v8, :cond_2

    const v8, 0x23c34600

    if-lt v0, v8, :cond_1

    move v0, v5

    goto :goto_0

    :cond_1
    move v0, v6

    :goto_0
    sput v0, Lh3/a;->r:I

    goto :goto_1

    :cond_2
    sput v7, Lh3/a;->r:I

    :goto_1
    sget v0, Lh3/a;->r:I

    iget-object v8, v1, Lt9/b;->a:Landroid/app/Application;

    if-nez v0, :cond_4

    invoke-static {v8}, Li4/f;->v(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v9, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Domain;->DLS:Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Domain;

    const-string v10, "dom"

    const-string v11, ""

    invoke-interface {v0, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Domain;->setDomain(Ljava/lang/String;)V

    sget-object v9, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Directory;->DLS_DIR:Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Directory;

    const-string v10, "uri"

    invoke-interface {v0, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Directory;->setDirectory(Ljava/lang/String;)V

    sget-object v9, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Directory;->DLS_DIR_BAT:Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Directory;

    const-string v10, "bat-uri"

    invoke-interface {v0, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Directory;->setDirectory(Ljava/lang/String;)V

    invoke-static {v4}, Lh3/a;->z(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Landroidx/work/impl/x;->h()Landroidx/work/impl/x;

    move-result-object v0

    const-class v9, Lu9/a;

    monitor-enter v9

    :try_start_0
    sget-object v10, Lu9/a;->g:Lu9/a;

    if-nez v10, :cond_3

    new-instance v10, Lu9/a;

    invoke-direct {v10, v4}, Lu9/a;-><init>(Landroid/content/Context;)V

    sput-object v10, Lu9/a;->g:Lu9/a;

    :cond_3
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v9, Lu9/a;->g:Lu9/a;

    new-instance v10, Ls9/d;

    invoke-direct {v10, v1}, Ls9/d;-><init>(Lt9/b;)V

    invoke-static {v8, v3, v0, v9, v10}, Lh3/a;->X(Landroid/content/Context;Ls9/a;Landroidx/work/impl/x;Lu9/a;Ls9/d;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_4
    :goto_2
    const-string v0, "user"

    invoke-virtual {v4, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    const/4 v9, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "current user is locked"

    invoke-static {v0}, Lv4/b;->s(Ljava/lang/String;)V

    iput v9, v1, Lt9/b;->e:I

    return v9

    :cond_5
    const-string v0, "SamsungAnalyticsPrefs"

    invoke-virtual {v4, v0, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v10

    const-string v11, "enable_device"

    invoke-interface {v10, v11, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "com.samsung.android.feature.SemFloatingFeature"

    const-string v12, "getBoolean"

    const/4 v13, 0x0

    :try_start_2
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v14, "getInstance"

    new-array v15, v2, [Ljava/lang/Class;

    aput-object v13, v15, v9

    invoke-virtual {v0, v14, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v14

    new-array v15, v9, [Ljava/lang/Object;

    invoke-virtual {v14, v13, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    new-array v15, v2, [Ljava/lang/Class;

    const-class v16, Ljava/lang/String;

    aput-object v16, v15, v9

    invoke-virtual {v0, v12, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v12, v2, [Ljava/lang/Object;

    const-string v15, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    aput-object v15, v12, v9

    invoke-virtual {v0, v14, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    :try_start_3
    const-string v12, "content://com.sec.android.log.diagmonagent.sa/check/diagnostic"

    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    invoke-virtual {v14, v12, v13, v13, v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v12

    if-eqz v12, :cond_7

    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    invoke-interface {v12, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v13
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    if-ne v2, v13, :cond_6

    move v13, v2

    goto :goto_3

    :cond_6
    move v13, v9

    :goto_3
    :try_start_4
    invoke-interface {v12}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_4

    :cond_7
    move v0, v9

    goto :goto_5

    :catch_1
    move v13, v9

    :catch_2
    const-string v12, "DMA is not supported"

    invoke-static {v12}, Lv4/b;->s(Ljava/lang/String;)V

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v14, "["

    invoke-direct {v12, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v14, Lv9/a;

    invoke-virtual {v14}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "] "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v12, "SamsungAnalytics605069"

    invoke-static {v12, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    move v0, v13

    :goto_5
    if-nez v0, :cond_8

    const-string v12, "feature is not supported"

    invoke-static {v12}, Lv4/b;->s(Ljava/lang/String;)V

    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    invoke-interface {v10, v11, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    goto :goto_6

    :cond_8
    const-string v12, "cf feature is supported"

    invoke-static {v12}, Lv4/b;->s(Ljava/lang/String;)V

    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    invoke-interface {v10, v11, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    :goto_6
    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_7

    :cond_9
    if-ne v0, v2, :cond_a

    move v0, v2

    goto :goto_7

    :cond_a
    move v0, v9

    :goto_7
    if-nez v0, :cond_b

    const-string v0, "Device is not enabled for logging"

    goto :goto_8

    :cond_b
    sget v0, Lh3/a;->r:I

    if-ne v7, v0, :cond_c

    const-string v0, "SenderType is None"

    :goto_8
    invoke-static {v0}, Lv4/b;->s(Ljava/lang/String;)V

    goto :goto_b

    :cond_c
    if-ne v0, v6, :cond_f

    invoke-static {v4}, Lkotlin/reflect/x;->g(Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_e

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz v0, :cond_e

    array-length v6, v0

    move v10, v9

    :goto_9
    if-ge v10, v6, :cond_e

    aget-object v11, v0, v10

    const-string v12, "com.sec.spp.permission.TOKEN"

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_d

    move v0, v2

    goto :goto_a

    :cond_d
    add-int/lit8 v10, v10, 0x1

    goto :goto_9

    :cond_e
    move v0, v9

    :goto_a
    if-nez v0, :cond_f

    const-string v0, "SamsungAnalytics2 need to define \'com.sec.spp.permission.TOKEN_XXXX\' permission in AndroidManifest"

    invoke-static {v0}, Lva/n;->O(Ljava/lang/String;)V

    :goto_b
    iput v7, v1, Lt9/b;->e:I

    return v7

    :cond_f
    invoke-static {v4}, Lva/n;->C(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-static {v4}, Lva/n;->B(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, v1, Lt9/b;->b:Ls9/a;

    iget-object v0, v0, Ls9/a;->d:Lf9/b;

    invoke-virtual {v0}, Lf9/b;->f()Z

    move-result v0

    if-eqz v0, :cond_15

    :cond_10
    sget v0, Lh3/a;->r:I

    if-ne v0, v5, :cond_15

    const-string v0, "SamsungAnalyticsPrefs"

    invoke-virtual {v4, v0, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {v4}, Lkotlin/reflect/x;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    const-string v7, "None"

    if-eqz v6, :cond_11

    move-object v4, v7

    :cond_11
    const-string v6, "sendCommonSuccess"

    invoke-interface {v0, v6, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    const-string v10, "appVersion"

    invoke-interface {v0, v10, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v11, "sendCommonTime"

    const-wide/16 v12, 0x0

    invoke-interface {v0, v11, v12, v13}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "AppVersion = "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ", prefAppVersion = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ", beforeSendCommonTime = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v14, ", success = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lv4/b;->s(Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_14

    if-eqz v6, :cond_12

    const/4 v7, 0x7

    invoke-static {v7, v12}, Lva/n;->l(ILjava/lang/Long;)Z

    move-result v7

    if-nez v7, :cond_14

    :cond_12
    if-nez v6, :cond_15

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    const/4 v14, 0x6

    int-to-long v14, v14

    const-wide/32 v16, 0x36ee80

    mul-long v14, v14, v16

    add-long/2addr v14, v12

    cmp-long v6, v6, v14

    if-lez v6, :cond_13

    move v9, v2

    :cond_13
    if-eqz v9, :cond_15

    :cond_14
    const-string v6, "send app common"

    invoke-static {v6}, Lv4/b;->s(Ljava/lang/String;)V

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v10, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-interface {v0, v11, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-static {v8, v5, v3}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/a;->l(Landroid/content/Context;ILs9/a;)Lcom/google/protobuf/b8;

    move-result-object v0

    check-cast v0, Ly9/a;

    invoke-virtual {v0}, Ly9/a;->f()V

    :cond_15
    iput v2, v1, Lt9/b;->e:I

    return v2
.end method
