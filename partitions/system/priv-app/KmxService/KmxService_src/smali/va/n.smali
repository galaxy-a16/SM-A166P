.class public abstract Lva/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld5/a;


# static fields
.field public static final a:Lcom/google/gson/internal/e;

.field public static final b:Le5/a;

.field public static c:Z = false

.field public static d:Z = false

.field public static final e:[Lkotlinx/serialization/c;

.field public static final f:Lcom/google/gson/internal/c;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/gson/internal/e;

    const/16 v1, 0x17

    invoke-direct {v0, v1}, Lcom/google/gson/internal/e;-><init>(I)V

    sput-object v0, Lva/n;->a:Lcom/google/gson/internal/e;

    new-instance v0, Le5/a;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Le5/a;-><init>(I)V

    sput-object v0, Lva/n;->b:Le5/a;

    const/4 v0, 0x0

    new-array v0, v0, [Lkotlinx/serialization/c;

    sput-object v0, Lva/n;->e:[Lkotlinx/serialization/c;

    new-instance v0, Lcom/google/gson/internal/c;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/google/gson/internal/c;-><init>(I)V

    sput-object v0, Lva/n;->f:Lcom/google/gson/internal/c;

    return-void
.end method

.method public static A(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "panel_mode"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    move v0, v1

    :cond_0
    return v0

    :catch_0
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed get panel mode "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "SeslDisplayUtils"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static B(Landroid/content/Context;)Z
    .locals 1

    const v0, 0x2a51bd80

    invoke-static {p0}, Lkotlin/reflect/x;->e(Landroid/content/Context;)I

    move-result p0

    if-gt v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static C(Landroid/content/Context;)Z
    .locals 1

    const v0, 0x2a796da8

    invoke-static {p0}, Lkotlin/reflect/x;->e(Landroid/content/Context;)I

    move-result p0

    if-le v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static D(IFI)I
    .locals 1

    invoke-static {p2}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-static {p2, p1}, Lw/a;->b(II)I

    move-result p1

    invoke-static {p0, p1}, Lva/n;->E(II)I

    move-result p0

    return p0
.end method

.method public static E(II)I
    .locals 8

    sget-object v0, Lw/a;->a:Ljava/lang/ThreadLocal;

    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    rsub-int v2, v0, 0xff

    rsub-int v3, v1, 0xff

    mul-int/2addr v2, v3

    div-int/lit16 v2, v2, 0xff

    rsub-int v2, v2, 0xff

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v4

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v5

    const/4 v6, 0x0

    if-nez v2, :cond_0

    move v5, v6

    goto :goto_0

    :cond_0
    mul-int/lit16 v4, v4, 0xff

    mul-int/2addr v4, v1

    mul-int/2addr v5, v0

    mul-int/2addr v5, v3

    add-int/2addr v5, v4

    mul-int/lit16 v4, v2, 0xff

    div-int/2addr v5, v4

    :goto_0
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v4

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v7

    if-nez v2, :cond_1

    move v7, v6

    goto :goto_1

    :cond_1
    mul-int/lit16 v4, v4, 0xff

    mul-int/2addr v4, v1

    mul-int/2addr v7, v0

    mul-int/2addr v7, v3

    add-int/2addr v7, v4

    mul-int/lit16 v4, v2, 0xff

    div-int/2addr v7, v4

    :goto_1
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    mul-int/lit16 p1, p1, 0xff

    mul-int/2addr p1, v1

    mul-int/2addr p0, v0

    mul-int/2addr p0, v3

    add-int/2addr p0, p1

    mul-int/lit16 p1, v2, 0xff

    div-int v6, p0, p1

    :goto_2
    invoke-static {v2, v5, v7, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method

.method public static F(Ljava/util/Map;Lcom/samsung/context/sdk/samsunganalytics/internal/util/Utils$Depth;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {p1}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Utils$Depth;->getCollectionDLM()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Utils$Depth;->getKeyValueDLM()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static G(Landroid/widget/EdgeEffect;FF)F
    .locals 1

    invoke-static {}, Lfc/c;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1, p2}, Le0/e;->c(Landroid/widget/EdgeEffect;FF)F

    move-result p0

    return p0

    :cond_0
    invoke-static {p0, p1, p2}, Le0/d;->a(Landroid/widget/EdgeEffect;FF)V

    return p1
.end method

.method public static H(Landroid/content/Context;Ljava/lang/String;)Lc9/b;
    .locals 0

    invoke-static {p0}, Lc9/b;->O(Landroid/content/Context;)Lc9/b;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, " error. db null"

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "n"

    invoke-static {p1, p0}, Lj3/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lcom/samsung/android/sdk/smp/SmpException$DBException;

    const-string p1, "database open failed"

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/smp/SmpException$DBException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static I(Landroid/content/Context;)V
    .locals 22

    move-object/from16 v0, p0

    invoke-static/range {p0 .. p0}, Lfc/e;->B(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "n"

    const-string v1, "device does not upload clients data"

    goto :goto_0

    :cond_0
    invoke-static/range {p0 .. p0}, Lg9/b;->G(Landroid/content/Context;)Lg9/b;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    const-string v2, "is_data_cleared"

    invoke-virtual {v1, v2}, Le9/b;->a(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_a

    monitor-exit v1

    if-eqz v2, :cond_1

    const-string v0, "n"

    const-string v1, "Upload clients request is no more valid. This may because smp data is cleared"

    :goto_0
    invoke-static {v0, v1}, Lj3/f;->l(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v1, 0x1

    sput-boolean v1, Lva/n;->d:Z

    new-instance v2, Lp9/c;

    sget-object v3, Lcom/samsung/android/sdk/smp/task/STask$CommonAction;->UPLOAD_CLIENTS:Lcom/samsung/android/sdk/smp/task/STask$CommonAction;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lp9/c;-><init>(Lp9/b;Landroid/os/Bundle;)V

    invoke-static {v0, v2}, Lv4/b;->A(Landroid/content/Context;Lp9/c;)V

    invoke-static/range {p0 .. p0}, Lf9/c;->G(Landroid/content/Context;)Lf9/c;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    monitor-enter v2

    :try_start_1
    const-string v3, "last_upload_try_time"

    invoke-virtual {v2, v3, v5, v6}, Le9/b;->v(Ljava/lang/String;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_9

    monitor-exit v2

    invoke-static/range {p0 .. p0}, Lva/n;->y(Landroid/content/Context;)Z

    move-result v2

    xor-int/2addr v2, v1

    const-string v3, "n"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "initial upload : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lj3/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_2

    new-instance v2, Li9/a;

    invoke-direct {v2, v0}, Li9/a;-><init>(Landroid/content/Context;)V

    goto :goto_1

    :cond_2
    new-instance v2, Li9/b;

    invoke-direct {v2, v0}, Li9/b;-><init>(Landroid/content/Context;)V

    :goto_1
    invoke-virtual {v2}, Li9/d;->e()Z

    move-result v0

    if-nez v0, :cond_3

    :goto_2
    const/4 v1, 0x0

    goto/16 :goto_1a

    :cond_3
    const-string v5, "build request fail. "

    const-string v6, "build request fail. JSONError : "

    iget-object v8, v2, Li9/d;->a:Landroid/content/Context;

    invoke-static {v8}, Lc9/b;->O(Landroid/content/Context;)Lc9/b;

    move-result-object v15

    const-string v14, "Internal error"

    const-string v13, "SMP_0401"

    const-string v12, "d"

    if-nez v15, :cond_4

    const-string v0, "build request fail. dbHandler null"

    invoke-static {v12, v0}, Lj3/f;->j(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v13, v14}, Li9/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    move-object v7, v4

    goto/16 :goto_6

    :cond_4
    :try_start_2
    iget-object v9, v2, Li9/d;->c:Ljava/lang/String;

    iget-object v10, v2, Li9/d;->d:Ljava/lang/String;

    invoke-virtual {v2}, Li9/d;->g()Lorg/json/JSONObject;

    move-result-object v11

    const-string v0, "c"

    if-eqz v8, :cond_7

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    invoke-virtual {v2, v15}, Li9/d;->f(Lc9/b;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v15}, Lc9/b;->x()Lorg/json/JSONArray;

    move-result-object v16

    invoke-virtual {v15}, Lc9/b;->y()Lorg/json/JSONArray;

    move-result-object v17

    invoke-virtual {v15}, Lc9/b;->G()Lorg/json/JSONArray;

    move-result-object v18

    invoke-static {v15}, Li9/d;->h(Lc9/b;)Lorg/json/JSONArray;

    move-result-object v19

    invoke-virtual {v2}, Li9/d;->i()Lorg/json/JSONObject;

    move-result-object v20

    new-instance v7, Li9/c;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lcom/samsung/android/sdk/smp/common/exception/InternalException$BuildClientsException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object/from16 p0, v7

    move-object/from16 v7, p0

    move-object v3, v12

    move-object v12, v0

    move-object v4, v13

    move-object/from16 v13, v16

    move-object v1, v14

    move-object/from16 v14, v17

    move-object/from16 v21, v15

    move-object/from16 v15, v18

    move-object/from16 v16, v19

    move-object/from16 v17, v20

    :try_start_3
    invoke-direct/range {v7 .. v17}, Li9/c;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONObject;)V

    iget-object v7, v2, Li9/d;->b:Lf9/c;

    monitor-enter v7
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lcom/samsung/android/sdk/smp/common/exception/InternalException$BuildClientsException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    const-string v0, "tracking"

    invoke-virtual {v7, v0}, Le9/b;->a(Ljava/lang/String;)Z

    move-result v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    monitor-exit v7

    move-object/from16 v7, p0

    iput-boolean v0, v7, Li9/c;->l:Z
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lcom/samsung/android/sdk/smp/common/exception/InternalException$BuildClientsException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-virtual/range {v21 .. v21}, Lc9/b;->c()V

    goto/16 :goto_6

    :catchall_0
    move-exception v0

    goto/16 :goto_1b

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto/16 :goto_4

    :catchall_1
    move-exception v0

    :try_start_6
    monitor-exit v7

    throw v0

    :cond_5
    move-object v3, v12

    move-object v4, v13

    move-object v1, v14

    move-object/from16 v21, v15

    sget v7, Li9/c;->m:I

    const-string v7, "create builder fail. smpId null"

    invoke-static {v0, v7}, Lj3/f;->j(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/sdk/smp/common/exception/InternalException$BuildClientsException;

    invoke-direct {v0, v4, v1}, Lcom/samsung/android/sdk/smp/common/exception/InternalException$BuildClientsException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_6
    move-object v3, v12

    move-object v4, v13

    move-object v1, v14

    move-object/from16 v21, v15

    sget v7, Li9/c;->m:I

    const-string v7, "create builder fail. appId null"

    invoke-static {v0, v7}, Lj3/f;->j(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/sdk/smp/common/exception/InternalException$BuildClientsException;

    invoke-direct {v0, v4, v1}, Lcom/samsung/android/sdk/smp/common/exception/InternalException$BuildClientsException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_7
    move-object v3, v12

    move-object v4, v13

    move-object v1, v14

    move-object/from16 v21, v15

    sget v7, Li9/c;->m:I

    const-string v7, "create builder fail. context null"

    invoke-static {v0, v7}, Lj3/f;->j(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/sdk/smp/common/exception/InternalException$BuildClientsException;

    invoke-direct {v0, v4, v1}, Lcom/samsung/android/sdk/smp/common/exception/InternalException$BuildClientsException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Lcom/samsung/android/sdk/smp/common/exception/InternalException$BuildClientsException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catchall_2
    move-exception v0

    move-object/from16 v21, v15

    goto/16 :goto_1b

    :catch_2
    move-exception v0

    move-object v3, v12

    move-object/from16 v21, v15

    :goto_3
    :try_start_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/common/exception/InternalException$BuildClientsException;->getErrorCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lj3/f;->j(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/common/exception/InternalException$BuildClientsException;->getErrorCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/common/exception/InternalException$BuildClientsException;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Li9/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :catch_3
    move-exception v0

    move-object v3, v12

    move-object v4, v13

    move-object v1, v14

    move-object/from16 v21, v15

    :goto_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lj3/f;->j(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v4, v1}, Li9/d;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :goto_5
    invoke-virtual/range {v21 .. v21}, Lc9/b;->c()V

    const/4 v7, 0x0

    :goto_6
    if-nez v7, :cond_8

    const-string v0, "d"

    const-string v1, "request fail. fail to build request"

    invoke-static {v0, v1}, Lj3/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_8
    iget-object v0, v7, Li9/c;->b:Landroid/content/Context;

    invoke-static {v0}, Lf9/c;->G(Landroid/content/Context;)Lf9/c;

    move-result-object v1

    monitor-enter v1

    :try_start_8
    const-string v0, "prev_basic"

    const-string v3, ""

    invoke-virtual {v1, v0, v3}, Le9/b;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    monitor-exit v1

    iget-object v3, v7, Li9/c;->e:Lorg/json/JSONObject;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Li9/c;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v0}, Li9/c;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto/16 :goto_f

    :cond_9
    monitor-enter v1

    :try_start_9
    const-string v0, "prev_appfilters"

    const-string v3, ""

    invoke-virtual {v1, v0, v3}, Le9/b;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    monitor-exit v1

    iget-object v3, v7, Li9/c;->f:Lorg/json/JSONObject;

    sget v4, Li4/f;->e:I

    if-eqz v3, :cond_b

    invoke-virtual {v3}, Lorg/json/JSONObject;->length()I

    move-result v3

    if-nez v3, :cond_a

    goto :goto_7

    :cond_a
    const/4 v3, 0x0

    goto :goto_8

    :cond_b
    :goto_7
    const/4 v3, 0x1

    :goto_8
    if-eqz v3, :cond_c

    const-string v3, ""

    goto :goto_9

    :cond_c
    iget-object v3, v7, Li9/c;->f:Lorg/json/JSONObject;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_e

    const-string v4, "[]"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e

    const-string v4, "{}"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    goto :goto_a

    :cond_d
    const/4 v4, 0x0

    goto :goto_b

    :cond_e
    :goto_a
    const/4 v4, 0x1

    :goto_b
    if-eqz v4, :cond_f

    const-string v0, ""

    :cond_f
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    goto :goto_f

    :cond_10
    monitor-enter v1

    :try_start_a
    const-string v0, "prev_app_referrer_keys"

    const-string v3, ""

    invoke-virtual {v1, v0, v3}, Le9/b;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    monitor-exit v1

    iget-object v1, v7, Li9/c;->g:Lorg/json/JSONArray;

    invoke-static {v1}, Li4/f;->A(Lorg/json/JSONArray;)Z

    move-result v1

    if-eqz v1, :cond_11

    const-string v1, ""

    goto :goto_c

    :cond_11
    iget-object v1, v7, Li9/c;->g:Lorg/json/JSONArray;

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_c
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_13

    const-string v3, "[]"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_13

    const-string v3, "{}"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    goto :goto_d

    :cond_12
    const/4 v3, 0x0

    goto :goto_e

    :cond_13
    :goto_d
    const/4 v3, 0x1

    :goto_e
    if-eqz v3, :cond_14

    const-string v0, ""

    :cond_14
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    goto :goto_f

    :cond_15
    iget-object v0, v7, Li9/c;->h:Lorg/json/JSONArray;

    invoke-static {v0}, Li4/f;->A(Lorg/json/JSONArray;)Z

    move-result v0

    if-nez v0, :cond_16

    goto :goto_f

    :cond_16
    iget-object v0, v7, Li9/c;->i:Lorg/json/JSONArray;

    invoke-static {v0}, Li4/f;->A(Lorg/json/JSONArray;)Z

    move-result v0

    if-nez v0, :cond_17

    :goto_f
    const/4 v1, 0x1

    goto :goto_10

    :cond_17
    iget-object v0, v7, Li9/c;->j:Lorg/json/JSONArray;

    invoke-static {v0}, Li4/f;->A(Lorg/json/JSONArray;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    move v1, v0

    :goto_10
    if-eqz v1, :cond_18

    const-string v0, "d"

    const-string v1, "UPLOAD_CLIENTS available : data changed"

    goto :goto_12

    :cond_18
    iget-object v1, v2, Li9/d;->b:Lf9/c;

    monitor-enter v1

    :try_start_b
    const-string v0, "last_upload_complete_time"

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v3, v4, v0}, Le9/b;->g(JLjava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    monitor-exit v1

    iget-object v1, v2, Li9/d;->b:Lf9/c;

    monitor-enter v1

    :try_start_c
    const-string v0, "activePeriod"

    const-wide/16 v5, 0x2760

    invoke-virtual {v1, v5, v6, v0}, Le9/b;->g(JLjava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    monitor-exit v1

    sget-wide v0, Lb9/a;->b:J

    mul-long/2addr v5, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    add-long/2addr v3, v5

    cmp-long v5, v8, v3

    if-lez v5, :cond_19

    const-string v0, "d"

    const-string v1, "UPLOAD_CLIENTS available : active period"

    goto :goto_12

    :cond_19
    iget-object v5, v7, Li9/c;->k:Lorg/json/JSONObject;

    if-eqz v5, :cond_1a

    const/4 v5, 0x1

    goto :goto_11

    :cond_1a
    const/4 v5, 0x0

    :goto_11
    if-eqz v5, :cond_1b

    const-string v0, "d"

    const-string v1, "UPLOAD_CLIENTS available : test device"

    :goto_12
    invoke-static {v0, v1}, Lj3/f;->l(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    goto :goto_13

    :cond_1b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v3, v5

    const-string v5, "d"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "data not changed. next active period will be after "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    div-long/2addr v3, v0

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " minutes"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lj3/f;->l(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_13
    if-nez v1, :cond_1c

    goto/16 :goto_2

    :cond_1c
    iget-object v0, v2, Li9/d;->a:Landroid/content/Context;

    invoke-static {v0}, Lfc/e;->F(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v1, v2, Li9/d;->a:Landroid/content/Context;

    const-string v3, "notifyInitAndUpdateAppFilterForSps JSON error. "

    sget v0, Lp1/f;->f:I

    const-string v0, "content://com.sec.spp.smpc.provider/appclientinit"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :try_start_d
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_4

    goto :goto_14

    :catch_4
    move-exception v0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "updateToSps error. "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "f"

    invoke-static {v4, v0}, Lj3/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_14
    const-string v4, "Internal error"

    const-string v5, "SMP_0401"

    const-string v6, "d"

    const/4 v8, 0x1

    if-eq v0, v8, :cond_1d

    const-string v0, "notifyInitAndUpdateAppFilterForSps. notify fail"

    goto :goto_15

    :cond_1d
    invoke-static {v1}, Lc9/b;->O(Landroid/content/Context;)Lc9/b;

    move-result-object v1

    if-nez v1, :cond_1e

    const-string v0, "notifyInitAndUpdateAppFilterForSps fail. db null"

    :goto_15
    invoke-static {v6, v0}, Lj3/f;->j(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v5, v4}, Li9/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_17

    :cond_1e
    :try_start_e
    invoke-virtual {v2, v1}, Li9/d;->f(Lc9/b;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, v7, Li9/c;->f:Lorg/json/JSONObject;
    :try_end_e
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_e} :catch_6
    .catch Lcom/samsung/android/sdk/smp/common/exception/InternalException$BuildClientsException; {:try_start_e .. :try_end_e} :catch_5
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    invoke-virtual {v1}, Lc9/b;->c()V

    move v1, v8

    goto :goto_18

    :catchall_3
    move-exception v0

    goto :goto_19

    :catch_5
    move-exception v0

    :try_start_f
    const-string v3, "notifyInitAndUpdateAppFilterForSps fail. update app filters error"

    invoke-static {v6, v3}, Lj3/f;->j(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/common/exception/InternalException$BuildClientsException;->getErrorCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/common/exception/InternalException$BuildClientsException;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Li9/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_16

    :catch_6
    move-exception v0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lj3/f;->j(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v5, v4}, Li9/d;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    :goto_16
    invoke-virtual {v1}, Lc9/b;->c()V

    :goto_17
    const/4 v1, 0x0

    :goto_18
    if-nez v1, :cond_1f

    goto/16 :goto_2

    :goto_19
    invoke-virtual {v1}, Lc9/b;->c()V

    throw v0

    :cond_1f
    iget-object v0, v2, Li9/d;->a:Landroid/content/Context;

    const/16 v1, 0x1e

    invoke-static {v0, v7, v1}, Lcom/samsung/android/sdk/smp/common/network/d;->i(Landroid/content/Context;Lcom/samsung/android/sdk/smp/common/network/d;I)Lb0/a;

    move-result-object v0

    iget-boolean v1, v0, Lb0/a;->a:Z

    if-eqz v1, :cond_20

    iget-object v0, v0, Lb0/a;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v7, v0}, Li9/d;->d(Li9/c;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_20
    iget v1, v0, Lb0/a;->b:I

    iget-object v0, v0, Lb0/a;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Li9/d;->c(ILjava/lang/String;)V

    goto/16 :goto_2

    :goto_1a
    sput-boolean v1, Lva/n;->d:Z

    return-void

    :catchall_4
    move-exception v0

    monitor-exit v1

    throw v0

    :catchall_5
    move-exception v0

    monitor-exit v1

    throw v0

    :catchall_6
    move-exception v0

    monitor-exit v1

    throw v0

    :catchall_7
    move-exception v0

    monitor-exit v1

    throw v0

    :catchall_8
    move-exception v0

    monitor-exit v1

    throw v0

    :goto_1b
    invoke-virtual/range {v21 .. v21}, Lc9/b;->c()V

    throw v0

    :catchall_9
    move-exception v0

    monitor-exit v2

    throw v0

    :catchall_a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static J(Landroid/content/Context;Ls9/a;)V
    .locals 11

    new-instance v0, Lp1/e;

    const/16 v1, 0x11

    invoke-direct {v0, v1, p0, p1}, Lp1/e;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iget-object p0, v0, Lp1/e;->c:Ljava/lang/Object;

    check-cast p0, Ls9/a;

    iget-object p0, p0, Ls9/a;->d:Lf9/b;

    invoke-virtual {p0}, Lf9/b;->f()Z

    move-result p0

    iget-object p1, v0, Lp1/e;->b:Ljava/lang/Object;

    check-cast p1, Landroid/content/Context;

    invoke-static {p1}, Lva/n;->B(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    if-nez p0, :cond_0

    const-string p0, "user do not agree Property"

    goto/16 :goto_2

    :cond_0
    iget-object p1, v0, Lp1/e;->b:Ljava/lang/Object;

    check-cast p1, Landroid/content/Context;

    const-string v1, "SAProperties"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_8

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_4

    :cond_1
    iget-object v1, v0, Lp1/e;->c:Ljava/lang/Object;

    check-cast v1, Ls9/a;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lv9/a;->i(Ljava/util/Map;)Ljava/util/HashMap;

    move-result-object p1

    sget-object v1, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Utils$Depth;->TWO_DEPTH:Lcom/samsung/context/sdk/samsunganalytics/internal/util/Utils$Depth;

    invoke-static {p1, v1}, Lva/n;->F(Ljava/util/Map;Lcom/samsung/context/sdk/samsunganalytics/internal/util/Utils$Depth;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lp9/d;->l0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, v0, Lp1/e;->b:Ljava/lang/Object;

    check-cast v3, Landroid/content/Context;

    const-string v4, "SamsungAnalyticsPrefs"

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "property_data"

    const-string v7, ""

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    const-string v8, "property_sent_date"

    const-wide/16 v9, 0x0

    invoke-interface {v7, v8, v9, v10}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v9

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v7, 0x1

    if-eqz v5, :cond_2

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v7, v5}, Lva/n;->l(ILjava/lang/Long;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v1, "do not send property < 1day"

    invoke-static {v1}, Lv4/b;->s(Ljava/lang/String;)V

    move v1, v2

    goto :goto_0

    :cond_2
    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5, v6, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-interface {v1, v8, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string v1, "update property, send it"

    invoke-static {v1}, Lv4/b;->w(Ljava/lang/String;)V

    move v1, v7

    :goto_0
    if-nez v1, :cond_3

    goto/16 :goto_5

    :cond_3
    const-string v1, "Send Property Log"

    invoke-static {v1}, Lv4/b;->w(Ljava/lang/String;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const-string v4, "ts"

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "t"

    const-string v5, "pp"

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "cp"

    invoke-virtual {v1, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget p1, Lh3/a;->r:I

    const/4 v4, 0x3

    if-lt p1, v4, :cond_7

    const-string p1, "v"

    const-string v4, "6.05.069"

    invoke-virtual {v1, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {p1, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string v4, "tz"

    invoke-virtual {v1, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    iget-object v4, v0, Lp1/e;->c:Ljava/lang/Object;

    check-cast v4, Ls9/a;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "tcType"

    invoke-virtual {p1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v2, v0, Lp1/e;->c:Ljava/lang/Object;

    check-cast v2, Ls9/a;

    iget-object v2, v2, Ls9/a;->a:Ljava/lang/String;

    const-string v4, "tid"

    invoke-virtual {p1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;->UIX:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;

    invoke-virtual {v2}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;->getAbbrev()Ljava/lang/String;

    move-result-object v2

    const-string v4, "logType"

    invoke-virtual {p1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "timeStamp"

    invoke-virtual {p1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v2, "agree"

    invoke-virtual {p1, v2, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object p0, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Utils$Depth;->ONE_DEPTH:Lcom/samsung/context/sdk/samsunganalytics/internal/util/Utils$Depth;

    invoke-static {v1, p0}, Lva/n;->F(Ljava/util/Map;Lcom/samsung/context/sdk/samsunganalytics/internal/util/Utils$Depth;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "body"

    invoke-virtual {p1, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, v0, Lp1/e;->b:Ljava/lang/Object;

    check-cast p0, Landroid/content/Context;

    invoke-static {p0}, Lva/n;->C(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_4

    iget-object p0, v0, Lp1/e;->b:Ljava/lang/Object;

    check-cast p0, Landroid/content/Context;

    iget-object v1, v0, Lp1/e;->c:Ljava/lang/Object;

    check-cast v1, Ls9/a;

    invoke-static {p0, p1, v1}, Lva/n;->a(Landroid/content/Context;Landroid/content/ContentValues;Ls9/a;)V

    :cond_4
    iget-object p0, v0, Lp1/e;->b:Ljava/lang/Object;

    check-cast p0, Landroid/content/Context;

    invoke-static {p0}, Lva/n;->C(Landroid/content/Context;)Z

    move-result p0

    xor-int/2addr p0, v7

    if-eqz p0, :cond_5

    iget-object p0, v0, Lp1/e;->c:Ljava/lang/Object;

    check-cast p0, Ls9/a;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, -0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v1, "networkType"

    invoke-virtual {p1, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_5
    :try_start_0
    iget-object p0, v0, Lp1/e;->b:Ljava/lang/Object;

    check-cast p0, Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "content://com.sec.android.log.diagmonagent.sa/log"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "failed to send properties"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lv4/b;->O(Ljava/lang/String;)V

    const/4 p0, 0x0

    :goto_1
    if-nez p0, :cond_6

    const-string p0, "Property send fail"

    :goto_2
    invoke-static {p0}, Lv4/b;->s(Ljava/lang/String;)V

    goto :goto_5

    :cond_6
    invoke-virtual {p0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    goto :goto_3

    :cond_7
    iget-object p0, v0, Lp1/e;->b:Ljava/lang/Object;

    check-cast p0, Landroid/content/Context;

    iget-object v0, v0, Lp1/e;->c:Ljava/lang/Object;

    check-cast v0, Ls9/a;

    invoke-static {p0, p1, v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/a;->l(Landroid/content/Context;ILs9/a;)Lcom/google/protobuf/b8;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/google/protobuf/b8;->c(Ljava/util/Map;)I

    move-result p0

    :goto_3
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Send Property Log Result = "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lv4/b;->w(Ljava/lang/String;)V

    goto :goto_5

    :cond_8
    :goto_4
    const-string p0, "PropertyLogBuildClient"

    const-string p1, "No Property log"

    invoke-static {p0, p1}, Lv4/b;->t(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5
    return-void
.end method

.method public static K(Landroid/content/Context;Ls9/a;)V
    .locals 14

    iget-object v0, p1, Ls9/a;->d:Lf9/b;

    invoke-virtual {v0}, Lf9/b;->f()Z

    move-result v0

    invoke-static {p0}, Lva/n;->B(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    const-string p0, "user do not agree setting"

    goto/16 :goto_a

    :cond_0
    new-instance v0, Lo2/i;

    invoke-direct {v0, p0}, Lo2/i;-><init>(Landroid/content/Context;)V

    iget-object v1, v0, Lo2/i;->d:Ljava/lang/Object;

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    goto/16 :goto_5

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, v0, Lo2/i;->d:Ljava/lang/Object;

    check-cast v3, Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const-string v4, ""

    move-object v5, v4

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iget-object v7, v0, Lo2/i;->c:Ljava/lang/Object;

    check-cast v7, Landroid/content/Context;

    invoke-virtual {v7, v6, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    iget-object v8, v0, Lo2/i;->c:Ljava/lang/Object;

    check-cast v8, Landroid/content/Context;

    invoke-static {v8}, Li4/f;->v(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v8, v6, v9}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v6

    invoke-interface {v7}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v6, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    const-class v10, Ljava/lang/Integer;

    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_7

    const-class v10, Ljava/lang/Float;

    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_7

    const-class v10, Ljava/lang/Long;

    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_7

    const-class v10, Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_7

    const-class v10, Ljava/lang/Boolean;

    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    goto :goto_2

    :cond_4
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Set;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lo2/i;->b:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    const/4 v10, 0x0

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_5

    invoke-static {v10}, Lcom/google/protobuf/n;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v12, v0, Lo2/i;->e:Ljava/lang/Object;

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    :cond_5
    invoke-static {v10, v11}, Landroidx/activity/b;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    goto :goto_1

    :cond_6
    invoke-static {v8, v10}, Landroidx/activity/b;->u(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    goto :goto_3

    :cond_7
    :goto_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v0, Lo2/i;->b:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-object v8, v9

    :goto_3
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v10, v9

    const/16 v9, 0x200

    if-le v10, v9, :cond_8

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v5, v4

    goto :goto_4

    :cond_8
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_9

    invoke-static {v5}, Lcom/google/protobuf/n;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v9, v0, Lo2/i;->a:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_9
    :goto_4
    invoke-static {v5, v8}, Landroidx/activity/b;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    :cond_a
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    move-object v0, v1

    :goto_5
    if-eqz v0, :cond_18

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_c

    goto/16 :goto_b

    :cond_c
    const-string v1, "SamsungAnalyticsPrefs"

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "status_sent_date"

    const-wide/16 v5, 0x0

    invoke-interface {v3, v4, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v5, 0x1

    invoke-static {v5, v3}, Lva/n;->l(ILjava/lang/Long;)Z

    move-result v3

    if-nez v3, :cond_d

    const-string p0, "do not send setting < 1day"

    goto/16 :goto_a

    :cond_d
    const-string v3, "Send Setting Log"

    invoke-static {v3}, Lv4/b;->s(Ljava/lang/String;)V

    sget v3, Lh3/a;->r:I

    const-string v6, "st"

    const-string v7, "t"

    const-string v8, "ts"

    const/4 v9, 0x3

    const-string v10, "sti"

    const/4 v11, 0x2

    if-ne v3, v9, :cond_12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const-string v13, "tcType"

    invoke-virtual {v9, v13, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v12, p1, Ls9/a;->a:Ljava/lang/String;

    const-string v13, "tid"

    invoke-virtual {v9, v13, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v12, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;->UIX:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;

    invoke-virtual {v12}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;->getAbbrev()Ljava/lang/String;

    move-result-object v12

    const-string v13, "logType"

    invoke-virtual {v9, v13, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v12, "timeStamp"

    invoke-virtual {v9, v12, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v12, p1, Ls9/a;->d:Lf9/b;

    invoke-virtual {v12}, Lf9/b;->f()Z

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const-string v13, "agree"

    invoke-virtual {v9, v13, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {p0}, Lva/n;->C(Landroid/content/Context;)Z

    move-result v12

    if-nez v12, :cond_e

    invoke-static {p0, v9, p1}, Lva/n;->a(Landroid/content/Context;Landroid/content/ContentValues;Ls9/a;)V

    :cond_e
    invoke-static {p0}, Lva/n;->C(Landroid/content/Context;)Z

    move-result p1

    xor-int/2addr p1, v5

    if-eqz p1, :cond_f

    const/4 p1, -0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v12, "networkType"

    invoke-virtual {v9, v12, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_f
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "v"

    const-string v6, "6.05.069"

    invoke-virtual {p1, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v3, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const-string v6, "tz"

    invoke-virtual {p1, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "content://com.sec.android.log.diagmonagent.sa/log"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {p1, v10, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Utils$Depth;->ONE_DEPTH:Lcom/samsung/context/sdk/samsunganalytics/internal/util/Utils$Depth;

    invoke-static {p1, v6}, Lva/n;->F(Ljava/util/Map;Lcom/samsung/context/sdk/samsunganalytics/internal/util/Utils$Depth;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "body"

    invoke-virtual {v9, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v6, v3, v9}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-exception v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "failed to send setting log"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lv4/b;->P(Ljava/lang/String;)V

    const/4 v6, 0x0

    :goto_6
    if-nez v6, :cond_11

    goto :goto_8

    :cond_11
    invoke-virtual {v6}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_10

    if-eq v6, v11, :cond_10

    goto :goto_8

    :cond_12
    if-eq v3, v11, :cond_14

    if-nez v3, :cond_13

    goto :goto_7

    :cond_13
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Sender type is invalid : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lv4/b;->P(Ljava/lang/String;)V

    goto :goto_8

    :cond_14
    :goto_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v9, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v9, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v9, v10, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget v3, Lh3/a;->r:I

    invoke-static {p0, v3, p1}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/a;->l(Landroid/content/Context;ILs9/a;)Lcom/google/protobuf/b8;

    move-result-object v3

    invoke-virtual {v3, v9}, Lcom/google/protobuf/b8;->c(Ljava/util/Map;)I

    move-result v3

    if-eqz v3, :cond_15

    :goto_8
    move v5, v2

    :cond_16
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    if-eqz v5, :cond_17

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    goto :goto_9

    :cond_17
    const-wide/16 v0, 0x0

    :goto_9
    invoke-interface {p0, v4, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Send Setting Log Result = "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_a
    invoke-static {p0}, Lv4/b;->s(Ljava/lang/String;)V

    goto :goto_c

    :cond_18
    :goto_b
    const-string p0, "Setting Sender"

    const-string p1, "No status log"

    invoke-static {p0, p1}, Lv4/b;->t(Ljava/lang/String;Ljava/lang/String;)V

    :goto_c
    return-void
.end method

.method public static final L(Landroid/view/View;Landroidx/lifecycle/z;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f090279

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public static M(Landroid/content/Context;Lc9/b;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "setAppFilterData. value is empty. change to clear appFilter : "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "n"

    invoke-static {p3, p1}, Lj3/f;->l(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "clearAppFilterData"

    invoke-static {p0, p1}, Lva/n;->H(Landroid/content/Context;Ljava/lang/String;)Lc9/b;

    move-result-object p0

    :try_start_0
    invoke-virtual {p0, p2}, Lc9/b;->q(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lc9/b;->c()V

    return-void

    :cond_0
    :try_start_1
    new-instance p1, Lcom/samsung/android/sdk/smp/SmpException$DBException;

    invoke-direct {p1}, Lcom/samsung/android/sdk/smp/SmpException$DBException;-><init>()V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lc9/b;->c()V

    throw p1

    :cond_1
    invoke-virtual {p1, p2, p3}, Lc9/b;->Q(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    return-void

    :cond_2
    new-instance p0, Lcom/samsung/android/sdk/smp/SmpException$DBException;

    invoke-direct {p0}, Lcom/samsung/android/sdk/smp/SmpException$DBException;-><init>()V

    throw p0
.end method

.method public static N(Landroid/content/Context;J)V
    .locals 3

    new-instance v0, Lp9/c;

    sget-object v1, Lcom/samsung/android/sdk/smp/task/STask$CommonAction;->UPLOAD_CLIENTS:Lcom/samsung/android/sdk/smp/task/STask$CommonAction;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lp9/c;-><init>(Lp9/b;Landroid/os/Bundle;)V

    const/4 v1, 0x1

    invoke-static {p0, v0, p1, p2, v1}, Lv4/b;->V(Landroid/content/Context;Lp9/c;JI)V

    return-void
.end method

.method public static O(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "user"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    invoke-static {p0}, Lv4/b;->u(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Lcom/samsung/context/sdk/samsunganalytics/AnalyticsException;

    invoke-direct {v0, p0}, Lcom/samsung/context/sdk/samsunganalytics/AnalyticsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static P(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    const-string v0, "n"

    invoke-static {p0}, Lf9/c;->G(Landroid/content/Context;)Lf9/c;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lf9/c;->Q(I)V

    invoke-static {p0}, Lva/n;->o(Landroid/content/Context;)J

    move-result-wide v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    cmp-long v3, v3, v1

    if-ltz v3, :cond_0

    const/4 v1, 0x1

    :try_start_0
    invoke-static {p0, p1}, Lcom/samsung/android/sdk/smp/marketing/j;->g(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/sdk/smp/marketing/g;

    move-result-object p1

    iget v2, p1, Lcom/samsung/android/sdk/smp/marketing/g;->x:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget p1, p1, Lcom/samsung/android/sdk/smp/marketing/g;->y:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    move v2, v1

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lj3/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0xa

    :goto_1
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    sub-int/2addr p1, v2

    add-int/2addr p1, v1

    invoke-virtual {v3, p1}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    add-int/2addr p1, v2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Feedback dispersion - min: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lj3/f;->l(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    int-to-long v2, p1

    sget-wide v4, Lb9/a;->b:J

    mul-long/2addr v2, v4

    add-long/2addr v2, v0

    invoke-static {p0, v2, v3}, Lva/n;->N(Landroid/content/Context;J)V

    goto :goto_2

    :cond_0
    invoke-static {p0, v1, v2}, Lva/n;->N(Landroid/content/Context;J)V

    :goto_2
    return-void
.end method

.method public static Q(Landroid/content/Context;Z)V
    .locals 2

    invoke-static {}, Lfc/e;->t()Z

    move-result v0

    const-string v1, "n"

    if-eqz v0, :cond_0

    const-string p0, "do not proceed upload clients request. spp force activation mode"

    invoke-static {v1, p0}, Lj3/f;->l(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    if-eqz p1, :cond_1

    sget-boolean p1, Lva/n;->d:Z

    if-eqz p1, :cond_1

    const-string p0, "do not proceed upload clients request. isClientsUploading : true"

    invoke-static {v1, p0}, Lj3/f;->l(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance p1, Lp9/c;

    sget-object v0, Lcom/samsung/android/sdk/smp/task/STask$CommonAction;->UPLOAD_CLIENTS:Lcom/samsung/android/sdk/smp/task/STask$CommonAction;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lp9/c;-><init>(Lp9/b;Landroid/os/Bundle;)V

    invoke-static {p0, p1}, Lv4/b;->A(Landroid/content/Context;Lp9/c;)V

    new-instance p1, Lp9/c;

    invoke-direct {p1, v0, v1}, Lp9/c;-><init>(Lp9/b;Landroid/os/Bundle;)V

    invoke-static {p0, p1}, Lv4/b;->D(Landroid/content/Context;Lp9/c;)V

    invoke-static {p0}, Lf9/c;->G(Landroid/content/Context;)Lf9/c;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    monitor-enter p0

    :try_start_0
    const-string p1, "last_upload_try_time"

    invoke-virtual {p0, p1, v0, v1}, Le9/b;->v(Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static a(Landroid/content/Context;Landroid/content/ContentValues;Ls9/a;)V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "av"

    invoke-static {p0}, Lkotlin/reflect/x;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p2, Ls9/a;->c:Ljava/lang/String;

    const-string v1, "uv"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "v"

    const-string v1, "6.05.069"

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Utils$Depth;->ONE_DEPTH:Lcom/samsung/context/sdk/samsunganalytics/internal/util/Utils$Depth;

    invoke-static {v0, p0}, Lva/n;->F(Ljava/util/Map;Lcom/samsung/context/sdk/samsunganalytics/internal/util/Utils$Depth;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "appCommon_data"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "auid"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget p2, p2, Ls9/a;->e:I

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "at"

    invoke-virtual {v1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "appCommon_did"

    invoke-static {v1, p0}, Lva/n;->F(Ljava/util/Map;Lcom/samsung/context/sdk/samsunganalytics/internal/util/Utils$Depth;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static b(Ljava/lang/String;Z)V
    .locals 0

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static c(Z)V
    .locals 0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static d(Ll3/c;)V
    .locals 5

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "null current looper"

    :goto_0
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v2, "Must be called on "

    const-string v3, " thread, but got "

    const-string v4, "."

    invoke-static {v2, p0, v3, v0, v4}, Landroidx/activity/b;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static f(Ljava/lang/String;)V
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Given String is empty or null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static g(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static h(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static i(Ljava/lang/Object;)V
    .locals 1

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "null reference"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static j(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static k(Ljava/lang/String;Z)V
    .locals 0

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static l(ILjava/lang/Long;)Z
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    int-to-long p0, p0

    const-wide/32 v4, 0x5265c00

    mul-long/2addr p0, v4

    add-long/2addr p0, v2

    cmp-long p0, v0, p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final m(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroidx/room/w;
    .locals 2

    const-string v0, "context"

    invoke-static {p0, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Lkotlin/text/r;->I(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    xor-int/2addr v0, v1

    if-eqz v0, :cond_1

    new-instance v0, Landroidx/room/w;

    invoke-direct {v0, p0, p1, p2}, Landroidx/room/w;-><init>(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)V

    return-object v0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cannot build a database with null or empty name. If you are trying to create an in memory database, use Room.inMemoryDatabaseBuilder"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static n(Landroid/content/Context;)V
    .locals 2

    invoke-static {p0}, Lf9/c;->G(Landroid/content/Context;)Lf9/c;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    const-string v1, "smpid"

    invoke-virtual {v0, v1}, Le9/b;->B(Ljava/lang/String;)V

    const-string v1, "webid"

    invoke-virtual {v0, v1}, Le9/b;->B(Ljava/lang/String;)V

    const-string v1, "aid"

    invoke-virtual {v0, v1}, Le9/b;->B(Ljava/lang/String;)V

    const-string v1, "pid"

    invoke-virtual {v0, v1}, Le9/b;->B(Ljava/lang/String;)V

    const-string v1, "ptype"

    invoke-virtual {v0, v1}, Le9/b;->B(Ljava/lang/String;)V

    const-string v1, "ptype_cache"

    invoke-virtual {v0, v1}, Le9/b;->B(Ljava/lang/String;)V

    const-string v1, "uid"

    invoke-virtual {v0, v1}, Le9/b;->B(Ljava/lang/String;)V

    const-string v1, "optin"

    invoke-virtual {v0, v1}, Le9/b;->B(Ljava/lang/String;)V

    const-string v1, "optintime"

    invoke-virtual {v0, v1}, Le9/b;->B(Ljava/lang/String;)V

    const-string v1, "smp_first_upload_time"

    invoke-virtual {v0, v1}, Le9/b;->B(Ljava/lang/String;)V

    const-string v1, "last_upload_try_time"

    invoke-virtual {v0, v1}, Le9/b;->B(Ljava/lang/String;)V

    const-string v1, "last_upload_complete_time"

    invoke-virtual {v0, v1}, Le9/b;->B(Ljava/lang/String;)V

    const-string v1, "init_complete_time_for_spp_force_activation_feature"

    invoke-virtual {v0, v1}, Le9/b;->B(Ljava/lang/String;)V

    const-string v1, "last_ack_complete_time"

    invoke-virtual {v0, v1}, Le9/b;->B(Ljava/lang/String;)V

    const-string v1, "confVersion"

    invoke-virtual {v0, v1}, Le9/b;->B(Ljava/lang/String;)V

    const-string v1, "uploadDelay"

    invoke-virtual {v0, v1}, Le9/b;->B(Ljava/lang/String;)V

    const-string v1, "activePeriod"

    invoke-virtual {v0, v1}, Le9/b;->B(Ljava/lang/String;)V

    const-string v1, "tracking"

    invoke-virtual {v0, v1}, Le9/b;->B(Ljava/lang/String;)V

    const-string v1, "ackPeriod"

    invoke-virtual {v0, v1}, Le9/b;->B(Ljava/lang/String;)V

    const-string v1, "spp_app_id"

    invoke-virtual {v0, v1}, Le9/b;->B(Ljava/lang/String;)V

    const-string v1, "opt_in_policy"

    invoke-virtual {v0, v1}, Le9/b;->B(Ljava/lang/String;)V

    const-string v1, "debug"

    invoke-virtual {v0, v1}, Le9/b;->B(Ljava/lang/String;)V

    const-string v1, "push_mode"

    invoke-virtual {v0, v1}, Le9/b;->B(Ljava/lang/String;)V

    const-string v1, "noti_sound_uri"

    invoke-virtual {v0, v1}, Le9/b;->B(Ljava/lang/String;)V

    const-string v1, "noti_sound_enabled"

    invoke-virtual {v0, v1}, Le9/b;->B(Ljava/lang/String;)V

    const-string v1, "noti_vibrate_pattern"

    invoke-virtual {v0, v1}, Le9/b;->B(Ljava/lang/String;)V

    const-string v1, "noti_vibrate_enabled"

    invoke-virtual {v0, v1}, Le9/b;->B(Ljava/lang/String;)V

    const-string v1, "noti_color"

    invoke-virtual {v0, v1}, Le9/b;->B(Ljava/lang/String;)V

    const-string v1, "chan_"

    invoke-virtual {v0, v1}, Le9/b;->B(Ljava/lang/String;)V

    const-string v1, "noti_group"

    invoke-virtual {v0, v1}, Le9/b;->B(Ljava/lang/String;)V

    const-string v1, "upload_fail_count"

    invoke-virtual {v0, v1}, Le9/b;->B(Ljava/lang/String;)V

    const-string v1, "prev_basic"

    invoke-virtual {v0, v1}, Le9/b;->B(Ljava/lang/String;)V

    const-string v1, "prev_appfilters"

    invoke-virtual {v0, v1}, Le9/b;->B(Ljava/lang/String;)V

    const-string v1, "random_smpid_generated"

    invoke-virtual {v0, v1}, Le9/b;->B(Ljava/lang/String;)V

    const-string v1, "next_push_type"

    invoke-virtual {v0, v1}, Le9/b;->B(Ljava/lang/String;)V

    const-string v1, "prev_app_referrer_keys"

    invoke-virtual {v0, v1}, Le9/b;->B(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit v0

    invoke-static {p0}, Lc9/b;->O(Landroid/content/Context;)Lc9/b;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "n"

    const-string v0, "deactivate. fail to delete db. dbHandler is null"

    invoke-static {p0, v0}, Lj3/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lc9/b;->o()V

    invoke-virtual {p0}, Lc9/b;->n()V

    invoke-virtual {p0}, Lc9/b;->i()V

    invoke-virtual {p0}, Lc9/b;->j()V

    invoke-virtual {p0}, Lc9/b;->l()V

    invoke-virtual {p0}, Lc9/b;->p()V

    invoke-virtual {p0}, Lc9/b;->m()V

    invoke-virtual {p0}, Lc9/b;->k()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    invoke-virtual {p0}, Lc9/b;->c()V

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static o(Landroid/content/Context;)J
    .locals 7

    invoke-static {p0}, Lf9/c;->G(Landroid/content/Context;)Lf9/c;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    const-string v1, "last_upload_try_time"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3, v1}, Le9/b;->g(JLjava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit v0

    sget-object v0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/a;->o:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-wide/16 v3, 0x3c

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lf9/c;->G(Landroid/content/Context;)Lf9/c;

    move-result-object p0

    monitor-enter p0

    :try_start_1
    const-string v0, "uploadDelay"

    invoke-virtual {p0, v3, v4, v0}, Le9/b;->g(JLjava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    :goto_0
    sget-wide v5, Lb9/a;->b:J

    mul-long/2addr v3, v5

    add-long/2addr v3, v1

    return-wide v3

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static p(Landroid/content/Context;II)I
    .locals 1

    invoke-static {p0, p1}, Lp9/d;->h0(Landroid/content/Context;I)Landroid/util/TypedValue;

    move-result-object p1

    if-eqz p1, :cond_1

    iget v0, p1, Landroid/util/TypedValue;->resourceId:I

    if-eqz v0, :cond_0

    sget-object p1, Lt/h;->a:Ljava/lang/Object;

    invoke-static {p0, v0}, Lu/d;->a(Landroid/content/Context;I)I

    move-result p0

    goto :goto_0

    :cond_0
    iget p0, p1, Landroid/util/TypedValue;->data:I

    :goto_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p2

    :cond_2
    return p2
.end method

.method public static q(Landroid/view/View;I)I
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, v1, p0}, Lp9/d;->j0(ILandroid/content/Context;Ljava/lang/String;)Landroid/util/TypedValue;

    move-result-object p0

    iget p1, p0, Landroid/util/TypedValue;->resourceId:I

    if-eqz p1, :cond_0

    sget-object p0, Lt/h;->a:Ljava/lang/Object;

    invoke-static {v0, p1}, Lu/d;->a(Landroid/content/Context;I)I

    move-result p0

    goto :goto_0

    :cond_0
    iget p0, p0, Landroid/util/TypedValue;->data:I

    :goto_0
    return p0
.end method

.method public static r(Landroid/widget/EdgeEffect;)F
    .locals 1

    invoke-static {}, Lfc/c;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Le0/e;->b(Landroid/widget/EdgeEffect;)F

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static s()I
    .locals 4

    const-string v0, "hidden_SEM_TYPE_STYLUS_DEFAULT"

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    const-string v3, "android.view.PointerIcon"

    invoke-static {v3, v0, v2}, Lh3/a;->q(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v1}, Lh3/a;->x(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    :cond_0
    instance-of v0, v2, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public static t()I
    .locals 4

    const-string v0, "hidden_SEM_TYPE_STYLUS_PEN_SELECT"

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    const-string v3, "android.view.PointerIcon"

    invoke-static {v3, v0, v2}, Lh3/a;->q(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v1}, Lh3/a;->x(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    :cond_0
    instance-of v0, v2, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_1
    const/16 v0, 0x15

    return v0
.end method

.method public static u()I
    .locals 4

    const-string v0, "hidden_SEM_TYPE_STYLUS_SCROLL_DOWN"

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    const-string v3, "android.view.PointerIcon"

    invoke-static {v3, v0, v2}, Lh3/a;->q(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v1}, Lh3/a;->x(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    :cond_0
    instance-of v0, v2, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_1
    const/16 v0, 0xf

    return v0
.end method

.method public static v()I
    .locals 4

    const-string v0, "hidden_SEM_TYPE_STYLUS_SCROLL_UP"

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    const-string v3, "android.view.PointerIcon"

    invoke-static {v3, v0, v2}, Lh3/a;->q(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v1}, Lh3/a;->x(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    :cond_0
    instance-of v0, v2, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_1
    const/16 v0, 0xb

    return v0
.end method

.method public static w(Landroid/content/Context;)I
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "pinned_edge_width"

    invoke-static {p0, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed get EdgeWidth "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SeslDisplayUtils"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public static x(I)Z
    .locals 20

    if-eqz p0, :cond_5

    sget-object v1, Lw/a;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [D

    const/4 v3, 0x3

    if-nez v2, :cond_0

    new-array v2, v3, [D

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    invoke-static/range {p0 .. p0}, Landroid/graphics/Color;->red(I)I

    move-result v1

    invoke-static/range {p0 .. p0}, Landroid/graphics/Color;->green(I)I

    move-result v4

    invoke-static/range {p0 .. p0}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    array-length v6, v2

    if-ne v6, v3, :cond_4

    int-to-double v6, v1

    const-wide v8, 0x406fe00000000000L    # 255.0

    div-double/2addr v6, v8

    const-wide v10, 0x3fa4b5dcc63f1412L    # 0.04045

    cmpg-double v1, v6, v10

    const-wide v12, 0x4003333333333333L    # 2.4

    const-wide v14, 0x3ff0e147ae147ae1L    # 1.055

    const-wide v16, 0x4029d70a3d70a3d7L    # 12.92

    const-wide v18, 0x3fac28f5c28f5c29L    # 0.055

    if-gez v1, :cond_1

    div-double v6, v6, v16

    goto :goto_0

    :cond_1
    add-double v6, v6, v18

    div-double/2addr v6, v14

    invoke-static {v6, v7, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    :goto_0
    int-to-double v3, v4

    div-double/2addr v3, v8

    cmpg-double v1, v3, v10

    if-gez v1, :cond_2

    div-double v3, v3, v16

    goto :goto_1

    :cond_2
    add-double v3, v3, v18

    div-double/2addr v3, v14

    invoke-static {v3, v4, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    :goto_1
    int-to-double v0, v5

    div-double/2addr v0, v8

    cmpg-double v5, v0, v10

    if-gez v5, :cond_3

    div-double v0, v0, v16

    goto :goto_2

    :cond_3
    add-double v0, v0, v18

    div-double/2addr v0, v14

    invoke-static {v0, v1, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    :goto_2
    const-wide v8, 0x3fda64c2f837b4a2L    # 0.4124

    mul-double/2addr v8, v6

    const-wide v10, 0x3fd6e2eb1c432ca5L    # 0.3576

    mul-double/2addr v10, v3

    add-double/2addr v10, v8

    const-wide v8, 0x3fc71a9fbe76c8b4L    # 0.1805

    mul-double/2addr v8, v0

    add-double/2addr v8, v10

    const-wide/high16 v10, 0x4059000000000000L    # 100.0

    mul-double/2addr v8, v10

    const/4 v5, 0x0

    aput-wide v8, v2, v5

    const-wide v8, 0x3fcb367a0f9096bcL    # 0.2126

    mul-double/2addr v8, v6

    const-wide v12, 0x3fe6e2eb1c432ca5L    # 0.7152

    mul-double/2addr v12, v3

    add-double/2addr v12, v8

    const-wide v8, 0x3fb27bb2fec56d5dL    # 0.0722

    mul-double/2addr v8, v0

    add-double/2addr v8, v12

    mul-double/2addr v8, v10

    const/4 v12, 0x1

    aput-wide v8, v2, v12

    const-wide v13, 0x3f93c36113404ea5L    # 0.0193

    mul-double/2addr v6, v13

    const-wide v13, 0x3fbe83e425aee632L    # 0.1192

    mul-double/2addr v3, v13

    add-double/2addr v3, v6

    const-wide v6, 0x3fee6a7ef9db22d1L    # 0.9505

    mul-double/2addr v0, v6

    add-double/2addr v0, v3

    mul-double/2addr v0, v10

    const/4 v3, 0x2

    aput-wide v0, v2, v3

    div-double/2addr v8, v10

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    cmpl-double v0, v8, v0

    if-lez v0, :cond_6

    move v0, v12

    goto :goto_3

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "outXyz must have a length of 3."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    const/4 v5, 0x0

    :cond_6
    move v0, v5

    :goto_3
    return v0
.end method

.method public static y(Landroid/content/Context;)Z
    .locals 5

    invoke-static {p0}, Lf9/c;->G(Landroid/content/Context;)Lf9/c;

    move-result-object v0

    invoke-virtual {v0}, Lf9/c;->K()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gtz v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {p0}, Lfc/e;->F(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    monitor-enter v0

    :try_start_0
    const-string p0, "random_smpid_generated"

    invoke-virtual {v0, p0}, Le9/b;->a(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static z(Landroid/content/Context;)Z
    .locals 3

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    const v1, 0x7f030256

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget p0, v0, Landroid/util/TypedValue;->data:I

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method
