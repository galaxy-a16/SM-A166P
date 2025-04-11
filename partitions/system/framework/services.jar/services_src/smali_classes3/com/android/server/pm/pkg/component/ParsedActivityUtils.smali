.class public abstract Lcom/android/server/pm/pkg/component/ParsedActivityUtils;
.super Ljava/lang/Object;
.source "ParsedActivityUtils.java"


# static fields
.field public static final SAFE_BROADCASTS:Ljava/util/Set;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 74
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/pkg/component/ParsedActivityUtils;->SAFE_BROADCASTS:Ljava/util/Set;

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    .line 76
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static getActivityConfigChanges(II)I
    .locals 0

    .line 0
    not-int p1, p1

    and-int/lit8 p1, p1, 0x3

    or-int/2addr p0, p1

    return p0
.end method

.method public static getActivityResizeMode(Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/TypedArray;I)I
    .locals 4

    .line 534
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->getResizeableActivity()Ljava/lang/Boolean;

    move-result-object v0

    const/16 v1, 0x28

    .line 536
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_5

    if-eqz v0, :cond_0

    goto :goto_0

    .line 547
    :cond_0
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->isResizeableActivityViaSdkVersion()Z

    move-result p0

    if-eqz p0, :cond_1

    return v3

    .line 555
    :cond_1
    invoke-static {p2}, Landroid/content/pm/ActivityInfo;->isFixedOrientationPortrait(I)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x6

    return p0

    .line 557
    :cond_2
    invoke-static {p2}, Landroid/content/pm/ActivityInfo;->isFixedOrientationLandscape(I)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x5

    return p0

    :cond_3
    const/16 p0, 0xe

    if-ne p2, p0, :cond_4

    const/4 p0, 0x7

    return p0

    :cond_4
    const/4 p0, 0x4

    return p0

    :cond_5
    :goto_0
    const/4 p0, 0x0

    if-eqz v0, :cond_6

    .line 540
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_6

    goto :goto_1

    :cond_6
    move v3, p0

    .line 539
    :goto_1
    invoke-virtual {p1, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    if-eqz p1, :cond_7

    const/4 p0, 0x2

    :cond_7
    return p0
.end method

.method public static parseActivityAlias(Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZLjava/lang/String;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
    .locals 26

    move-object/from16 v0, p5

    .line 259
    sget-object v1, Lcom/android/internal/R$styleable;->AndroidManifestActivityAlias:[I

    move-object/from16 v9, p1

    move-object/from16 v8, p2

    invoke-virtual {v9, v8, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v7

    const/4 v1, 0x7

    const/16 v2, 0x400

    .line 261
    :try_start_0
    invoke-virtual {v7, v1, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "<activity-alias> does not specify android:targetActivity"

    .line 265
    invoke-interface {v0, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 324
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0

    .line 268
    :cond_0
    :try_start_1
    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 269
    invoke-static {v2, v1}, Lcom/android/server/pm/pkg/parsing/ParsingUtils;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 271
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Empty class name in package "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 324
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0

    .line 276
    :cond_1
    :try_start_2
    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->getActivities()Ljava/util/List;

    move-result-object v2

    .line 277
    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v3

    const/16 v22, 0x0

    move/from16 v4, v22

    :goto_0
    if-ge v4, v3, :cond_3

    .line 279
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/pkg/component/ParsedActivity;

    .line 280
    invoke-interface {v5}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    const/4 v5, 0x0

    :goto_1
    if-nez v5, :cond_4

    .line 287
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<activity-alias> target activity "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " not found in manifest with activities = "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->getActivities()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", parsedActivities = "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 287
    invoke-interface {v0, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 324
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0

    .line 293
    :cond_4
    :try_start_3
    invoke-static {v1, v5}, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->makeAlias(Ljava/lang/String;Lcom/android/server/pm/pkg/component/ParsedActivity;)Lcom/android/server/pm/pkg/component/ParsedActivityImpl;

    move-result-object v23

    .line 294
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/16 v10, 0xa

    const/4 v11, 0x6

    const/4 v12, -0x1

    const/4 v13, 0x4

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x8

    const/16 v17, 0x2

    const/16 v18, -0x1

    const/16 v19, 0xb

    const/16 v20, -0x1

    const/16 v21, 0xc

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move-object/from16 v4, p0

    move-object v5, v7

    move-object/from16 v25, v7

    move/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    .line 296
    :try_start_4
    invoke-static/range {v1 .. v21}, Lcom/android/server/pm/pkg/component/ParsedMainComponentUtils;->parseMainComponent(Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;Ljava/lang/String;[Ljava/lang/String;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/TypedArray;IZLjava/lang/String;Landroid/content/pm/parsing/result/ParseInput;IIIIIIIIIIII)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    .line 310
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 311
    invoke-interface {v0, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 324
    invoke-virtual/range {v25 .. v25}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0

    .line 316
    :cond_5
    :try_start_5
    invoke-virtual/range {v23 .. v23}, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->getFlags()I

    move-result v1

    const/high16 v2, 0x100000

    and-int/2addr v1, v2

    if-eqz v1, :cond_6

    const/4 v1, 0x1

    move v9, v1

    goto :goto_2

    :cond_6
    move/from16 v9, v22

    :goto_2
    const/4 v7, 0x0

    const/4 v8, 0x1

    const/16 v11, 0x9

    const/4 v12, 0x3

    const/4 v13, 0x5

    move-object/from16 v1, v23

    move-object/from16 v2, p0

    move-object/from16 v3, v24

    move-object/from16 v4, p2

    move-object/from16 v5, p1

    move-object/from16 v6, v25

    move-object/from16 v10, p5

    .line 318
    invoke-static/range {v1 .. v13}, Lcom/android/server/pm/pkg/component/ParsedActivityUtils;->parseActivityOrAlias(Lcom/android/server/pm/pkg/component/ParsedActivityImpl;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Ljava/lang/String;Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;Landroid/content/res/TypedArray;ZZZLandroid/content/pm/parsing/result/ParseInput;III)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 324
    invoke-virtual/range {v25 .. v25}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object/from16 v25, v7

    :goto_3
    invoke-virtual/range {v25 .. v25}, Landroid/content/res/TypedArray;->recycle()V

    .line 325
    throw v0
.end method

.method public static parseActivityOrAlias(Lcom/android/server/pm/pkg/component/ParsedActivityImpl;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Ljava/lang/String;Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;Landroid/content/res/TypedArray;ZZZLandroid/content/pm/parsing/result/ParseInput;III)Landroid/content/pm/parsing/result/ParseResult;
    .locals 16

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move-object/from16 v12, p9

    move/from16 v0, p12

    const/16 v1, 0x400

    move/from16 v2, p10

    .line 343
    invoke-virtual {v11, v2, v1}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 345
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 346
    invoke-static {v2, v1}, Lcom/android/server/pm/pkg/parsing/ParsingUtils;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 348
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Activity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " specified invalid parentActivityName "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PackageParsing"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 351
    :cond_0
    invoke-virtual {v7, v2}, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->setParentActivityName(Ljava/lang/String;)Lcom/android/server/pm/pkg/component/ParsedActivityImpl;

    :cond_1
    :goto_0
    const/4 v13, 0x0

    move/from16 v1, p11

    .line 355
    invoke-virtual {v11, v1, v13}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v1

    if-eqz p7, :cond_2

    .line 360
    invoke-virtual {v7, v1}, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->setPermission(Ljava/lang/String;)Lcom/android/server/pm/pkg/component/ParsedActivityImpl;

    goto :goto_2

    :cond_2
    if-eqz v1, :cond_3

    goto :goto_1

    .line 362
    :cond_3
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->getPermission()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v7, v1}, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->setPermission(Ljava/lang/String;)Lcom/android/server/pm/pkg/component/ParsedActivityImpl;

    :goto_2
    if-eqz p7, :cond_4

    const/16 v1, 0xe

    goto :goto_3

    :cond_4
    const/16 v1, 0x3d

    .line 366
    :goto_3
    invoke-static {v11, v10, v1, v12}, Lcom/android/server/pm/pkg/parsing/ParsingUtils;->parseKnownActivityEmbeddingCerts(Landroid/content/res/TypedArray;Landroid/content/res/Resources;ILandroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    .line 369
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 370
    invoke-interface {v12, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 373
    :cond_5
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    if-eqz v1, :cond_6

    .line 375
    invoke-virtual {v7, v1}, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->setKnownActivityEmbeddingCerts(Ljava/util/Set;)V

    .line 379
    :cond_6
    invoke-virtual {v11, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 381
    invoke-virtual {v11, v0, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-virtual {v7, v0}, Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;->setExported(Z)Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;

    .line 384
    :cond_7
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v15

    .line 386
    :cond_8
    :goto_4
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_11

    const/4 v2, 0x3

    if-ne v0, v2, :cond_9

    .line 388
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v2

    if-le v2, v15, :cond_11

    :cond_9
    const/4 v1, 0x2

    if-eq v0, v1, :cond_a

    goto :goto_4

    .line 394
    :cond_a
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "intent-filter"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    xor-int/lit8 v2, p6, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    move/from16 v3, p8

    move-object/from16 v4, p4

    move-object/from16 v5, p3

    move-object/from16 v6, p9

    .line 395
    invoke-static/range {v0 .. v6}, Lcom/android/server/pm/pkg/component/ParsedActivityUtils;->parseIntentFilter(Lcom/android/server/pm/pkg/parsing/ParsingPackage;Lcom/android/server/pm/pkg/component/ParsedActivityImpl;ZZLandroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    .line 397
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 398
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/pkg/component/ParsedIntentInfoImpl;

    if-eqz v1, :cond_c

    .line 400
    invoke-virtual {v1}, Lcom/android/server/pm/pkg/component/ParsedIntentInfoImpl;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v2

    .line 401
    invoke-virtual {v2}, Landroid/content/IntentFilter;->getOrder()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;->getOrder()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v7, v2}, Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;->setOrder(I)Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;

    .line 402
    invoke-virtual {v7, v1}, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->addIntent(Lcom/android/server/pm/pkg/component/ParsedIntentInfoImpl;)V

    goto :goto_5

    .line 423
    :cond_b
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "meta-data"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 424
    invoke-static {v7, v8, v10, v9, v12}, Lcom/android/server/pm/pkg/component/ParsedComponentUtils;->addMetaData(Lcom/android/server/pm/pkg/component/ParsedComponentImpl;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    :cond_c
    :goto_5
    move-object v1, v0

    move-object/from16 v0, p2

    goto/16 :goto_6

    .line 425
    :cond_d
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "property"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 426
    invoke-static {v7, v8, v10, v9, v12}, Lcom/android/server/pm/pkg/component/ParsedComponentUtils;->addProperty(Lcom/android/server/pm/pkg/component/ParsedComponentImpl;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    goto :goto_5

    :cond_e
    if-nez p6, :cond_f

    if-nez p7, :cond_f

    .line 427
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "preferred"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v2, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    move/from16 v3, p8

    move-object/from16 v4, p4

    move-object/from16 v5, p3

    move-object/from16 v6, p9

    .line 428
    invoke-static/range {v0 .. v6}, Lcom/android/server/pm/pkg/component/ParsedActivityUtils;->parseIntentFilter(Lcom/android/server/pm/pkg/parsing/ParsingPackage;Lcom/android/server/pm/pkg/component/ParsedActivityImpl;ZZLandroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    .line 431
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 432
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/pkg/component/ParsedIntentInfoImpl;

    if-eqz v1, :cond_c

    .line 434
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v8, v2, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->addPreferredActivityFilter(Ljava/lang/String;Lcom/android/server/pm/pkg/component/ParsedIntentInfo;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    goto :goto_5

    :cond_f
    if-nez p6, :cond_10

    if-nez p7, :cond_10

    .line 438
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "layout"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 440
    invoke-static {v10, v9, v12}, Lcom/android/server/pm/pkg/component/ParsedActivityUtils;->parseActivityWindowLayout(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    .line 441
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 442
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ActivityInfo$WindowLayout;

    invoke-virtual {v7, v1}, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->setWindowLayout(Landroid/content/pm/ActivityInfo$WindowLayout;)Lcom/android/server/pm/pkg/component/ParsedActivityImpl;

    goto :goto_5

    :cond_10
    move-object/from16 v0, p2

    .line 446
    invoke-static {v0, v8, v9, v12}, Lcom/android/server/pm/pkg/parsing/ParsingUtils;->unknownTag(Ljava/lang/String;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    .line 449
    :goto_6
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 450
    invoke-interface {v12, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    :cond_11
    if-nez p7, :cond_12

    .line 454
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->getLaunchMode()I

    move-result v0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_12

    .line 455
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "android.activity.launch_mode"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 457
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_12

    const-string/jumbo v3, "singleInstancePerTask"

    .line 459
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 460
    invoke-virtual {v7, v2}, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->setLaunchMode(I)Lcom/android/server/pm/pkg/component/ParsedActivityImpl;

    :cond_12
    if-nez p7, :cond_14

    const/16 v0, 0x3b

    .line 467
    invoke-virtual {v11, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 469
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->getMetaData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "android.can_display_on_remote_devices"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_13

    move v0, v13

    :cond_13
    if-eqz v0, :cond_14

    .line 474
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->getFlags()I

    move-result v0

    const/high16 v2, 0x10000

    or-int/2addr v0, v2

    invoke-virtual {v7, v0}, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->setFlags(I)Lcom/android/server/pm/pkg/component/ParsedComponentImpl;

    .line 480
    :cond_14
    invoke-static {v7, v12}, Lcom/android/server/pm/pkg/component/ParsedActivityUtils;->resolveActivityWindowLayout(Lcom/android/server/pm/pkg/component/ParsedActivity;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    .line 481
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 482
    invoke-interface {v12, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 484
    :cond_15
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ActivityInfo$WindowLayout;

    invoke-virtual {v7, v0}, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->setWindowLayout(Landroid/content/pm/ActivityInfo$WindowLayout;)Lcom/android/server/pm/pkg/component/ParsedActivityImpl;

    if-nez v14, :cond_18

    .line 487
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->getIntents()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_16

    move v13, v1

    :cond_16
    if-eqz v13, :cond_17

    .line 489
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 490
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": Targeting S+ (version "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x1f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " and above) requires that an explicit value for android:exported be defined when intent filters are present"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/32 v1, 0x8f45e27

    .line 489
    invoke-interface {v12, v0, v1, v2}, Landroid/content/pm/parsing/result/ParseInput;->deferError(Ljava/lang/String;J)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    .line 494
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 495
    invoke-interface {v12, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 498
    :cond_17
    invoke-virtual {v7, v13}, Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;->setExported(Z)Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;

    .line 501
    :cond_18
    invoke-interface {v12, v7}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0
.end method

.method public static parseActivityOrReceiver([Ljava/lang/String;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;IZLjava/lang/String;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
    .locals 25

    move-object/from16 v0, p1

    move-object/from16 v9, p7

    .line 91
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 92
    new-instance v7, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;

    invoke-direct {v7}, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;-><init>()V

    .line 94
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "receiver"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    .line 95
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 96
    sget-object v1, Lcom/android/internal/R$styleable;->AndroidManifestActivity:[I

    move-object/from16 v6, p2

    move-object/from16 v5, p3

    invoke-virtual {v6, v5, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    const/16 v10, 0x1e

    const/16 v11, 0x11

    const/16 v12, 0x2a

    const/4 v13, 0x5

    const/4 v14, 0x2

    const/4 v15, 0x1

    const/16 v16, 0x17

    const/16 v17, 0x3

    const/16 v18, 0x7

    const/16 v19, 0x2c

    const/16 v20, 0x30

    const/16 v21, 0x39

    move-object v1, v7

    move-object/from16 v2, v23

    move-object/from16 v3, p0

    move-object/from16 p0, v4

    move-object/from16 v4, p1

    move-object/from16 v5, p0

    move/from16 v6, p4

    move-object/from16 p4, v7

    move/from16 v7, p5

    move-object/from16 v24, v8

    move-object/from16 v8, p6

    move-object v0, v9

    move-object/from16 v9, p7

    .line 99
    :try_start_0
    invoke-static/range {v1 .. v21}, Lcom/android/server/pm/pkg/component/ParsedMainComponentUtils;->parseMainComponent(Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;Ljava/lang/String;[Ljava/lang/String;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/TypedArray;IZLjava/lang/String;Landroid/content/pm/parsing/result/ParseInput;IIIIIIIIIIII)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    .line 113
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 114
    invoke-interface {v0, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 251
    invoke-virtual/range {p0 .. p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0

    :cond_0
    if-eqz v22, :cond_1

    .line 117
    :try_start_1
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->isSaveStateDisallowed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 119
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;->getProcessName()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v24

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "Heavy-weight applications can not have receivers in main process"

    .line 120
    invoke-interface {v0, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 251
    invoke-virtual/range {p0 .. p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0

    :cond_1
    move-object/from16 v2, v24

    :cond_2
    const/4 v1, 0x0

    move-object/from16 v14, p0

    .line 129
    :try_start_2
    invoke-virtual {v14, v1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    move-object/from16 v4, p4

    invoke-virtual {v4, v3}, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->setTheme(I)Lcom/android/server/pm/pkg/component/ParsedActivityImpl;

    move-result-object v3

    .line 130
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->getUiOptions()I

    move-result v5

    const/16 v6, 0x1a

    invoke-virtual {v14, v6, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->setUiOptions(I)Lcom/android/server/pm/pkg/component/ParsedActivityImpl;

    .line 132
    invoke-virtual {v4}, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->getFlags()I

    move-result v3

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->isTaskReparentingAllowed()Z

    move-result v5

    const/16 v6, 0x40

    const/16 v7, 0x13

    invoke-static {v6, v7, v5, v14}, Lcom/android/server/pm/pkg/component/ComponentParseUtils;->flag(IIZLandroid/content/res/TypedArray;)I

    move-result v5

    const/16 v7, 0x12

    const/16 v8, 0x8

    .line 133
    invoke-static {v8, v7, v14}, Lcom/android/server/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v7

    or-int/2addr v5, v7

    const/16 v7, 0xb

    const/4 v9, 0x4

    .line 134
    invoke-static {v9, v7, v14}, Lcom/android/server/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v7

    or-int/2addr v5, v7

    const/16 v7, 0xd

    const/16 v10, 0x20

    .line 135
    invoke-static {v10, v7, v14}, Lcom/android/server/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v7

    or-int/2addr v5, v7

    const/16 v7, 0x100

    const/16 v11, 0x16

    .line 136
    invoke-static {v7, v11, v14}, Lcom/android/server/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v7

    or-int/2addr v5, v7

    const/16 v7, 0xa

    const/4 v11, 0x2

    .line 137
    invoke-static {v11, v7, v14}, Lcom/android/server/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v7

    or-int/2addr v5, v7

    const/16 v7, 0x800

    const/16 v12, 0x18

    .line 138
    invoke-static {v7, v12, v14}, Lcom/android/server/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v7

    or-int/2addr v5, v7

    const/16 v7, 0x9

    const/4 v12, 0x1

    .line 139
    invoke-static {v12, v7, v14}, Lcom/android/server/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v7

    or-int/2addr v5, v7

    const/16 v7, 0x80

    const/16 v13, 0x15

    .line 140
    invoke-static {v7, v13, v14}, Lcom/android/server/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v7

    or-int/2addr v5, v7

    const/16 v7, 0x27

    const/16 v13, 0x400

    .line 141
    invoke-static {v13, v7, v14}, Lcom/android/server/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v7

    or-int/2addr v5, v7

    const/16 v7, 0x1d

    .line 142
    invoke-static {v13, v7, v14}, Lcom/android/server/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v7

    or-int/2addr v5, v7

    const/16 v7, 0xc

    const/16 v15, 0x10

    .line 143
    invoke-static {v15, v7, v14}, Lcom/android/server/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v7

    or-int/2addr v5, v7

    const/high16 v7, 0x20000000

    const/16 v8, 0x41

    .line 144
    invoke-static {v7, v8, v14}, Lcom/android/server/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v7

    or-int/2addr v5, v7

    or-int/2addr v3, v5

    .line 132
    invoke-virtual {v4, v3}, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->setFlags(I)Lcom/android/server/pm/pkg/component/ParsedComponentImpl;

    if-nez v22, :cond_6

    .line 147
    invoke-virtual {v4}, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->getFlags()I

    move-result v3

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->isHardwareAccelerated()Z

    move-result v5

    const/16 v7, 0x200

    const/16 v8, 0x19

    invoke-static {v7, v8, v5, v14}, Lcom/android/server/pm/pkg/component/ComponentParseUtils;->flag(IIZLandroid/content/res/TypedArray;)I

    move-result v5

    const/high16 v7, -0x80000000

    const/16 v8, 0x1f

    .line 148
    invoke-static {v7, v8, v14}, Lcom/android/server/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v7

    or-int/2addr v5, v7

    const/high16 v7, 0x40000

    .line 149
    invoke-static {v7, v6, v14}, Lcom/android/server/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v6

    or-int/2addr v5, v6

    const/16 v6, 0x2000

    const/16 v7, 0x23

    .line 150
    invoke-static {v6, v7, v14}, Lcom/android/server/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v6

    or-int/2addr v5, v6

    const/16 v6, 0x1000

    const/16 v7, 0x24

    .line 151
    invoke-static {v6, v7, v14}, Lcom/android/server/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v6

    or-int/2addr v5, v6

    const/16 v6, 0x4000

    const/16 v7, 0x25

    .line 152
    invoke-static {v6, v7, v14}, Lcom/android/server/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v6

    or-int/2addr v5, v6

    const/high16 v6, 0x800000

    const/16 v7, 0x33

    .line 153
    invoke-static {v6, v7, v14}, Lcom/android/server/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v6

    or-int/2addr v5, v6

    const/high16 v6, 0x400000

    const/16 v7, 0x29

    .line 154
    invoke-static {v6, v7, v14}, Lcom/android/server/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v6

    or-int/2addr v5, v6

    const/high16 v6, 0x1000000

    const/16 v7, 0x34

    .line 155
    invoke-static {v6, v7, v14}, Lcom/android/server/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v6

    or-int/2addr v5, v6

    const/high16 v6, 0x2000000

    const/16 v7, 0x38

    .line 156
    invoke-static {v6, v7, v14}, Lcom/android/server/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v6

    or-int/2addr v5, v6

    or-int/2addr v3, v5

    const/high16 v5, 0x10000000

    const/16 v6, 0x3c

    .line 157
    invoke-static {v5, v6, v14}, Lcom/android/server/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v5

    or-int/2addr v3, v5

    .line 147
    invoke-virtual {v4, v3}, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->setFlags(I)Lcom/android/server/pm/pkg/component/ParsedComponentImpl;

    .line 159
    invoke-virtual {v4}, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->getPrivateFlags()I

    move-result v3

    const/16 v5, 0x36

    invoke-static {v12, v5, v14}, Lcom/android/server/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v5

    const/16 v6, 0x3a

    .line 161
    invoke-static {v11, v6, v12, v14}, Lcom/android/server/pm/pkg/component/ComponentParseUtils;->flag(IIZLandroid/content/res/TypedArray;)I

    move-result v6

    or-int/2addr v5, v6

    or-int/2addr v3, v5

    .line 159
    invoke-virtual {v4, v3}, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->setPrivateFlags(I)Lcom/android/server/pm/pkg/component/ParsedActivityImpl;

    const/16 v3, 0x31

    .line 164
    invoke-virtual {v14, v3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-virtual {v4, v3}, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->setColorMode(I)Lcom/android/server/pm/pkg/component/ParsedActivityImpl;

    move-result-object v3

    const/16 v5, 0x21

    .line 165
    invoke-virtual {v14, v5, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->setDocumentLaunchMode(I)Lcom/android/server/pm/pkg/component/ParsedActivityImpl;

    move-result-object v3

    const/16 v5, 0xe

    .line 166
    invoke-virtual {v14, v5, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->setLaunchMode(I)Lcom/android/server/pm/pkg/component/ParsedActivityImpl;

    move-result-object v3

    const/16 v5, 0x26

    .line 167
    invoke-virtual {v14, v5, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->setLockTaskLaunchMode(I)Lcom/android/server/pm/pkg/component/ParsedActivityImpl;

    move-result-object v3

    .line 168
    invoke-static {}, Landroid/app/ActivityTaskManager;->getDefaultAppRecentsLimitStatic()I

    move-result v5

    const/16 v6, 0x22

    invoke-virtual {v14, v6, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->setMaxRecents(I)Lcom/android/server/pm/pkg/component/ParsedActivityImpl;

    move-result-object v3

    .line 169
    invoke-virtual {v14, v10, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->setPersistableMode(I)Lcom/android/server/pm/pkg/component/ParsedActivityImpl;

    move-result-object v3

    const/16 v5, 0x2b

    .line 170
    invoke-virtual {v14, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->setRequestedVrComponent(Ljava/lang/String;)Lcom/android/server/pm/pkg/component/ParsedActivityImpl;

    move-result-object v3

    const/16 v5, 0x2e

    const/4 v6, -0x1

    .line 171
    invoke-virtual {v14, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->setRotationAnimation(I)Lcom/android/server/pm/pkg/component/ParsedActivityImpl;

    move-result-object v3

    const/16 v5, 0x14

    .line 172
    invoke-virtual {v14, v5, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->setSoftInputMode(I)Lcom/android/server/pm/pkg/component/ParsedActivityImpl;

    move-result-object v3

    .line 174
    invoke-virtual {v14, v15, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    const/16 v7, 0x2f

    .line 175
    invoke-virtual {v14, v7, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    .line 173
    invoke-static {v5, v7}, Lcom/android/server/pm/pkg/component/ParsedActivityUtils;->getActivityConfigChanges(II)I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->setConfigChanges(I)Lcom/android/server/pm/pkg/component/ParsedActivityImpl;

    const/16 v3, 0xf

    .line 178
    invoke-virtual {v14, v3, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    move-object v10, v0

    move-object/from16 v0, p1

    .line 179
    invoke-static {v0, v14, v3}, Lcom/android/server/pm/pkg/component/ParsedActivityUtils;->getActivityResizeMode(Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/TypedArray;I)I

    move-result v5

    .line 180
    invoke-virtual {v4, v3}, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->setScreenOrientation(I)Lcom/android/server/pm/pkg/component/ParsedActivityImpl;

    move-result-object v3

    .line 181
    invoke-virtual {v3, v5}, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->setResizeMode(I)Lcom/android/server/pm/pkg/component/ParsedActivityImpl;

    const/16 v3, 0x32

    .line 183
    invoke-virtual {v14, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_3

    .line 184
    invoke-virtual {v14, v3}, Landroid/content/res/TypedArray;->getType(I)I

    move-result v6

    if-ne v6, v9, :cond_3

    .line 187
    invoke-virtual {v14, v3, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    .line 186
    invoke-virtual {v4, v5, v3}, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->setMaxAspectRatio(IF)Lcom/android/server/pm/pkg/component/ParsedActivityImpl;

    :cond_3
    const/16 v3, 0x35

    .line 191
    invoke-virtual {v14, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 192
    invoke-virtual {v14, v3}, Landroid/content/res/TypedArray;->getType(I)I

    move-result v6

    if-ne v6, v9, :cond_4

    .line 195
    invoke-virtual {v14, v3, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    .line 194
    invoke-virtual {v4, v5, v3}, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->setMinAspectRatio(IF)Lcom/android/server/pm/pkg/component/ParsedActivityImpl;

    :cond_4
    const/16 v3, 0x3e

    .line 199
    invoke-virtual {v14, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 200
    invoke-virtual {v14, v3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    .line 203
    invoke-virtual {v4}, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->getPrivateFlags()I

    move-result v5

    if-eqz v3, :cond_5

    goto :goto_0

    :cond_5
    const/16 v9, 0x8

    :goto_0
    or-int v3, v5, v9

    invoke-virtual {v4, v3}, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->setPrivateFlags(I)Lcom/android/server/pm/pkg/component/ParsedActivityImpl;

    goto :goto_1

    :cond_6
    move-object v10, v0

    move-object/from16 v0, p1

    .line 208
    invoke-virtual {v4, v1}, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->setLaunchMode(I)Lcom/android/server/pm/pkg/component/ParsedActivityImpl;

    move-result-object v3

    .line 209
    invoke-virtual {v3, v1}, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->setConfigChanges(I)Lcom/android/server/pm/pkg/component/ParsedActivityImpl;

    move-result-object v3

    .line 210
    invoke-virtual {v4}, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->getFlags()I

    move-result v5

    const/high16 v6, 0x40000000    # 2.0f

    const/16 v7, 0x1c

    invoke-static {v6, v7, v14}, Lcom/android/server/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v6

    or-int/2addr v5, v6

    invoke-virtual {v3, v5}, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->setFlags(I)Lcom/android/server/pm/pkg/component/ParsedComponentImpl;

    :cond_7
    :goto_1
    const/16 v3, 0x8

    .line 214
    invoke-virtual {v14, v3, v13}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v3

    .line 219
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->getTaskAffinity()Ljava/lang/String;

    move-result-object v5

    .line 218
    invoke-static {v2, v5, v3, v10}, Lcom/android/server/pm/pkg/component/ComponentParseUtils;->buildTaskAffinityName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    .line 220
    invoke-interface {v2}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 221
    invoke-interface {v10, v2}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 251
    invoke-virtual {v14}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0

    .line 224
    :cond_8
    :try_start_3
    invoke-interface {v2}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->setTaskAffinity(Ljava/lang/String;)Lcom/android/server/pm/pkg/component/ParsedActivityImpl;

    const/16 v2, 0x2d

    .line 226
    invoke-virtual {v14, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 228
    invoke-virtual {v4}, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->getFlags()I

    move-result v2

    const/high16 v3, 0x100000

    or-int/2addr v2, v3

    invoke-virtual {v4, v2}, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->setFlags(I)Lcom/android/server/pm/pkg/component/ParsedComponentImpl;

    .line 229
    invoke-interface {v0, v12}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setVisibleToInstantApps(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    :cond_9
    const/16 v2, 0x3f

    .line 232
    invoke-virtual {v14, v2, v1}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 236
    invoke-static {v2, v1, v1}, Landroid/content/pm/parsing/FrameworkParsingPackageUtils;->validateName(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a

    const-string/jumbo v0, "requiredDisplayCategory attribute can only consist of alphanumeric characters, \'_\', and \'.\'"

    .line 238
    invoke-interface {v10, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 251
    invoke-virtual {v14}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0

    .line 242
    :cond_a
    :try_start_4
    invoke-virtual {v4, v2}, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->setRequiredDisplayCategory(Ljava/lang/String;)Lcom/android/server/pm/pkg/component/ParsedActivityImpl;

    const/4 v8, 0x0

    const/16 v11, 0x1b

    const/4 v12, 0x4

    const/4 v13, 0x6

    move-object v1, v4

    move-object/from16 v2, p1

    move-object/from16 v3, v23

    move-object/from16 v4, p3

    move-object/from16 v5, p2

    move-object v6, v14

    move/from16 v7, v22

    move-object/from16 v10, p7

    .line 244
    invoke-static/range {v1 .. v13}, Lcom/android/server/pm/pkg/component/ParsedActivityUtils;->parseActivityOrAlias(Lcom/android/server/pm/pkg/component/ParsedActivityImpl;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Ljava/lang/String;Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;Landroid/content/res/TypedArray;ZZZLandroid/content/pm/parsing/result/ParseInput;III)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 251
    invoke-virtual {v14}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object/from16 v14, p0

    :goto_2
    invoke-virtual {v14}, Landroid/content/res/TypedArray;->recycle()V

    .line 252
    throw v0
.end method

.method public static parseActivityWindowLayout(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
    .locals 13

    .line 569
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestLayout:[I

    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p0

    const/4 p1, 0x3

    .line 575
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->getType(I)I

    move-result v0

    const/4 v1, 0x6

    const/4 v2, 0x5

    const/high16 v3, -0x40800000    # -1.0f

    const/4 v4, 0x1

    const/4 v5, -0x1

    if-ne v0, v1, :cond_0

    .line 577
    invoke-virtual {p0, p1, v4, v4, v3}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    move-result p1

    move v6, p1

    goto :goto_0

    :cond_0
    if-ne v0, v2, :cond_1

    .line 580
    invoke-virtual {p0, p1, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    move v6, v3

    goto :goto_1

    :cond_1
    move v6, v3

    :goto_0
    move p1, v5

    :goto_1
    const/4 v0, 0x4

    .line 583
    invoke-virtual {p0, v0}, Landroid/content/res/TypedArray;->getType(I)I

    move-result v7

    if-ne v7, v1, :cond_2

    .line 585
    invoke-virtual {p0, v0, v4, v4, v3}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    move-result v3

    goto :goto_2

    :cond_2
    if-ne v7, v2, :cond_3

    .line 588
    invoke-virtual {p0, v0, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    move v7, v3

    move v3, v0

    goto :goto_3

    :cond_3
    :goto_2
    move v7, v3

    move v3, v5

    :goto_3
    const/16 v0, 0x11

    const/4 v1, 0x0

    .line 591
    invoke-virtual {p0, v1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    .line 592
    invoke-virtual {p0, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v9

    const/4 v0, 0x2

    .line 593
    invoke-virtual {p0, v0, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v10

    .line 596
    invoke-virtual {p0, v2, v1}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v11

    .line 598
    new-instance v12, Landroid/content/pm/ActivityInfo$WindowLayout;

    move-object v0, v12

    move v1, p1

    move v2, v6

    move v4, v7

    move v5, v8

    move v6, v9

    move v7, v10

    move-object v8, v11

    invoke-direct/range {v0 .. v8}, Landroid/content/pm/ActivityInfo$WindowLayout;-><init>(IFIFIIILjava/lang/String;)V

    .line 601
    invoke-interface {p2, v12}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 603
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 604
    throw p1
.end method

.method public static parseIntentFilter(Lcom/android/server/pm/pkg/parsing/ParsingPackage;Lcom/android/server/pm/pkg/component/ParsedActivityImpl;ZZLandroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
    .locals 12

    move-object v10, p1

    move-object/from16 v11, p6

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v8, 0x1

    move-object v0, p1

    move-object v1, p0

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move v4, p3

    move v7, p2

    move-object/from16 v9, p6

    .line 509
    invoke-static/range {v0 .. v9}, Lcom/android/server/pm/pkg/component/ParsedMainComponentUtils;->parseIntentFilter(Lcom/android/server/pm/pkg/component/ParsedMainComponent;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZZZZZLandroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    .line 513
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 514
    invoke-interface {v11, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 517
    :cond_0
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/pkg/component/ParsedIntentInfoImpl;

    if-eqz v0, :cond_2

    .line 519
    invoke-virtual {v0}, Lcom/android/server/pm/pkg/component/ParsedIntentInfoImpl;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v1

    .line 520
    invoke-virtual {v1}, Landroid/content/IntentFilter;->isVisibleToInstantApp()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 521
    invoke-virtual {p1}, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->getFlags()I

    move-result v2

    const/high16 v3, 0x100000

    or-int/2addr v2, v3

    invoke-virtual {p1, v2}, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->setFlags(I)Lcom/android/server/pm/pkg/component/ParsedComponentImpl;

    .line 523
    :cond_1
    invoke-virtual {v1}, Landroid/content/IntentFilter;->isImplicitlyVisibleToInstantApp()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 525
    invoke-virtual {p1}, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->getFlags()I

    move-result v1

    const/high16 v2, 0x200000

    or-int/2addr v1, v2

    .line 524
    invoke-virtual {p1, v1}, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->setFlags(I)Lcom/android/server/pm/pkg/component/ParsedComponentImpl;

    .line 529
    :cond_2
    invoke-interface {v11, v0}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0
.end method

.method public static resolveActivityWindowLayout(Lcom/android/server/pm/pkg/component/ParsedActivity;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
    .locals 11

    .line 616
    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "android.activity_window_layout_affinity"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 618
    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getWindowLayout()Landroid/content/pm/ActivityInfo$WindowLayout;

    move-result-object p0

    invoke-interface {p1, p0}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    .line 622
    :cond_0
    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getWindowLayout()Landroid/content/pm/ActivityInfo$WindowLayout;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getWindowLayout()Landroid/content/pm/ActivityInfo$WindowLayout;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ActivityInfo$WindowLayout;->windowLayoutAffinity:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 623
    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getWindowLayout()Landroid/content/pm/ActivityInfo$WindowLayout;

    move-result-object p0

    invoke-interface {p1, p0}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    .line 626
    :cond_1
    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 628
    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getWindowLayout()Landroid/content/pm/ActivityInfo$WindowLayout;

    move-result-object p0

    if-nez p0, :cond_2

    .line 630
    new-instance p0, Landroid/content/pm/ActivityInfo$WindowLayout;

    const/4 v3, -0x1

    const/high16 v4, -0x40800000    # -1.0f

    const/4 v5, -0x1

    const/high16 v6, -0x40800000    # -1.0f

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, -0x1

    move-object v2, p0

    invoke-direct/range {v2 .. v10}, Landroid/content/pm/ActivityInfo$WindowLayout;-><init>(IFIFIIILjava/lang/String;)V

    goto :goto_0

    .line 634
    :cond_2
    iput-object v10, p0, Landroid/content/pm/ActivityInfo$WindowLayout;->windowLayoutAffinity:Ljava/lang/String;

    .line 636
    :goto_0
    invoke-interface {p1, p0}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0
.end method
