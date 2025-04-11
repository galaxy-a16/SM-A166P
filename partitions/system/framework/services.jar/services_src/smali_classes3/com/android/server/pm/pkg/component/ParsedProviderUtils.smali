.class public abstract Lcom/android/server/pm/pkg/component/ParsedProviderUtils;
.super Ljava/lang/Object;
.source "ParsedProviderUtils.java"


# direct methods
.method public static parseGrantUriPermission(Lcom/android/server/pm/pkg/component/ParsedProviderImpl;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
    .locals 7

    .line 219
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestGrantUriPermission:[I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 222
    :try_start_0
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    .line 225
    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    const/4 v5, 0x1

    if-eqz v3, :cond_0

    .line 228
    new-instance v1, Landroid/os/PatternMatcher;

    invoke-direct {v1, v3, v4}, Landroid/os/PatternMatcher;-><init>(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    .line 230
    invoke-virtual {p2, v3, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 233
    new-instance v1, Landroid/os/PatternMatcher;

    invoke-direct {v1, v6, v3}, Landroid/os/PatternMatcher;-><init>(Ljava/lang/String;I)V

    goto :goto_0

    .line 235
    :cond_1
    invoke-virtual {p2, v5, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 238
    new-instance v1, Landroid/os/PatternMatcher;

    invoke-direct {v1, v3, v5}, Landroid/os/PatternMatcher;-><init>(Ljava/lang/String;I)V

    goto :goto_0

    .line 240
    :cond_2
    invoke-virtual {p2, v4, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 243
    new-instance v2, Landroid/os/PatternMatcher;

    invoke-direct {v2, v3, v1}, Landroid/os/PatternMatcher;-><init>(Ljava/lang/String;I)V

    move-object v1, v2

    goto :goto_0

    .line 245
    :cond_3
    invoke-virtual {p2, v2, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 248
    new-instance v3, Landroid/os/PatternMatcher;

    invoke-direct {v3, v1, v2}, Landroid/os/PatternMatcher;-><init>(Ljava/lang/String;I)V

    move-object v1, v3

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_5

    .line 256
    invoke-virtual {p0, v1}, Lcom/android/server/pm/pkg/component/ParsedProviderImpl;->addUriPermissionPattern(Landroid/os/PatternMatcher;)Lcom/android/server/pm/pkg/component/ParsedProviderImpl;

    .line 257
    invoke-virtual {p0, v5}, Lcom/android/server/pm/pkg/component/ParsedProviderImpl;->setGrantUriPermissions(Z)Lcom/android/server/pm/pkg/component/ParsedProviderImpl;

    goto :goto_1

    :cond_5
    const-string v1, "PackageParsing"

    .line 263
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown element under <path-permission>: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " at "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->getBaseApkPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 263
    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    :goto_1
    invoke-interface {p4, p0}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 269
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 270
    throw p0
.end method

.method public static parsePathPermission(Lcom/android/server/pm/pkg/component/ParsedProviderImpl;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
    .locals 11

    .line 276
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestPathPermission:[I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 279
    :try_start_0
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 281
    invoke-virtual {p2, v1, v1}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    .line 283
    invoke-virtual {p2, v3, v1}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    move-object v4, v2

    :cond_0
    const/4 v5, 0x2

    .line 288
    invoke-virtual {p2, v5, v1}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_1

    goto :goto_0

    :cond_1
    move-object v2, v6

    :goto_0
    if-eqz v4, :cond_2

    .line 296
    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    move v6, v3

    goto :goto_1

    :cond_2
    move v6, v1

    :goto_1
    if-eqz v2, :cond_3

    .line 300
    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v6, v3

    :cond_3
    const-string v7, " "

    const-string v8, " at "

    const-string v9, "PackageParsing"

    if-nez v6, :cond_4

    .line 309
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No readPermission or writePermission for <path-permission>: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->getBaseApkPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 309
    invoke-static {v9, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    invoke-interface {p4, p0}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 366
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-object p0

    :cond_4
    const/4 v6, 0x7

    .line 317
    :try_start_2
    invoke-virtual {p2, v6, v1}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v6

    const/4 v10, 0x3

    if-eqz v6, :cond_5

    .line 319
    new-instance v1, Landroid/content/pm/PathPermission;

    invoke-direct {v1, v6, v10, v4, v2}, Landroid/content/pm/PathPermission;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    const/4 v6, 0x5

    .line 322
    invoke-virtual {p2, v6, v1}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 324
    new-instance v1, Landroid/content/pm/PathPermission;

    invoke-direct {v1, v6, v5, v4, v2}, Landroid/content/pm/PathPermission;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    const/4 v5, 0x4

    .line 327
    invoke-virtual {p2, v5, v1}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_7

    .line 330
    new-instance v1, Landroid/content/pm/PathPermission;

    invoke-direct {v1, v6, v3, v4, v2}, Landroid/content/pm/PathPermission;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    const/4 v3, 0x6

    .line 333
    invoke-virtual {p2, v3, v1}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 336
    new-instance v1, Landroid/content/pm/PathPermission;

    invoke-direct {v1, v3, v5, v4, v2}, Landroid/content/pm/PathPermission;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 339
    :cond_8
    invoke-virtual {p2, v10, v1}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 342
    new-instance v5, Landroid/content/pm/PathPermission;

    invoke-direct {v5, v3, v1, v4, v2}, Landroid/content/pm/PathPermission;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    move-object v1, v5

    goto :goto_2

    :cond_9
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_a

    .line 351
    invoke-virtual {p0, v1}, Lcom/android/server/pm/pkg/component/ParsedProviderImpl;->addPathPermission(Landroid/content/pm/PathPermission;)Lcom/android/server/pm/pkg/component/ParsedProviderImpl;

    goto :goto_3

    .line 358
    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No path, pathPrefix, or pathPattern for <path-permission>: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->getBaseApkPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 358
    invoke-static {v9, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    :goto_3
    invoke-interface {p4, p0}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 366
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 367
    throw p0
.end method

.method public static parseProvider([Ljava/lang/String;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;IZLjava/lang/String;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
    .locals 26

    move-object/from16 v0, p7

    .line 59
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->getTargetSdkVersion()I

    move-result v9

    .line 60
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 61
    new-instance v7, Lcom/android/server/pm/pkg/component/ParsedProviderImpl;

    invoke-direct {v7}, Lcom/android/server/pm/pkg/component/ParsedProviderImpl;-><init>()V

    .line 62
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v22

    .line 64
    sget-object v1, Lcom/android/internal/R$styleable;->AndroidManifestProvider:[I

    move-object/from16 v6, p2

    move-object/from16 v5, p3

    invoke-virtual {v6, v5, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    const/16 v10, 0x11

    const/16 v11, 0xe

    const/16 v12, 0x12

    const/4 v13, 0x6

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0xf

    const/16 v17, 0x2

    const/16 v18, 0x8

    const/16 v19, 0x13

    const/16 v20, 0x15

    const/16 v21, 0x17

    move-object v1, v7

    move-object/from16 v2, v22

    move-object/from16 v3, p0

    move-object/from16 p0, v4

    move-object/from16 v4, p1

    move-object/from16 v5, p0

    move/from16 v6, p4

    move-object/from16 v23, v7

    move/from16 v7, p5

    move-object/from16 v24, v8

    move-object/from16 v8, p6

    move/from16 v25, v9

    move-object/from16 v9, p7

    .line 67
    :try_start_0
    invoke-static/range {v1 .. v21}, Lcom/android/server/pm/pkg/component/ParsedMainComponentUtils;->parseMainComponent(Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;Ljava/lang/String;[Ljava/lang/String;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/TypedArray;IZLjava/lang/String;Landroid/content/pm/parsing/result/ParseInput;IIIIIIIIIIII)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    .line 81
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 82
    invoke-interface {v0, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 136
    invoke-virtual/range {p0 .. p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0

    :cond_0
    const/16 v1, 0xa

    const/4 v2, 0x0

    move-object/from16 v3, p0

    .line 85
    :try_start_1
    invoke-virtual {v3, v1, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0xb

    .line 90
    invoke-virtual {v3, v4, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    move-object/from16 v6, v23

    invoke-virtual {v6, v4}, Lcom/android/server/pm/pkg/component/ParsedProviderImpl;->setSyncable(Z)Lcom/android/server/pm/pkg/component/ParsedProviderImpl;

    move-result-object v4

    const/16 v5, 0x11

    const/4 v7, 0x1

    move/from16 v8, v25

    if-ge v8, v5, :cond_1

    move v5, v7

    goto :goto_0

    :cond_1
    move v5, v2

    :goto_0
    const/4 v8, 0x7

    .line 92
    invoke-virtual {v3, v8, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;->setExported(Z)Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;

    const/4 v4, 0x3

    .line 95
    invoke-virtual {v3, v4, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x4

    .line 97
    invoke-virtual {v3, v5, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_2

    move-object v5, v4

    :cond_2
    if-nez v5, :cond_3

    .line 103
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->getPermission()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/android/server/pm/pkg/component/ParsedProviderImpl;->setReadPermission(Ljava/lang/String;)Lcom/android/server/pm/pkg/component/ParsedProviderImpl;

    goto :goto_1

    .line 105
    :cond_3
    invoke-virtual {v6, v5}, Lcom/android/server/pm/pkg/component/ParsedProviderImpl;->setReadPermission(Ljava/lang/String;)Lcom/android/server/pm/pkg/component/ParsedProviderImpl;

    :goto_1
    const/4 v5, 0x5

    .line 107
    invoke-virtual {v3, v5, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_4

    goto :goto_2

    :cond_4
    move-object v4, v5

    :goto_2
    if-nez v4, :cond_5

    .line 113
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->getPermission()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Lcom/android/server/pm/pkg/component/ParsedProviderImpl;->setWritePermission(Ljava/lang/String;)Lcom/android/server/pm/pkg/component/ParsedProviderImpl;

    goto :goto_3

    .line 115
    :cond_5
    invoke-virtual {v6, v4}, Lcom/android/server/pm/pkg/component/ParsedProviderImpl;->setWritePermission(Ljava/lang/String;)Lcom/android/server/pm/pkg/component/ParsedProviderImpl;

    :goto_3
    const/16 v4, 0xd

    .line 119
    invoke-virtual {v3, v4, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    .line 118
    invoke-virtual {v6, v4}, Lcom/android/server/pm/pkg/component/ParsedProviderImpl;->setGrantUriPermissions(Z)Lcom/android/server/pm/pkg/component/ParsedProviderImpl;

    move-result-object v4

    const/16 v5, 0x16

    .line 121
    invoke-virtual {v3, v5, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    .line 120
    invoke-virtual {v4, v5}, Lcom/android/server/pm/pkg/component/ParsedProviderImpl;->setForceUriPermissions(Z)Lcom/android/server/pm/pkg/component/ParsedProviderImpl;

    move-result-object v4

    const/16 v5, 0x9

    .line 124
    invoke-virtual {v3, v5, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    .line 123
    invoke-virtual {v4, v5}, Lcom/android/server/pm/pkg/component/ParsedProviderImpl;->setMultiProcess(Z)Lcom/android/server/pm/pkg/component/ParsedProviderImpl;

    move-result-object v4

    const/16 v5, 0xc

    .line 125
    invoke-virtual {v3, v5, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/server/pm/pkg/component/ParsedProviderImpl;->setInitOrder(I)Lcom/android/server/pm/pkg/component/ParsedProviderImpl;

    move-result-object v4

    .line 126
    invoke-virtual {v6}, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->getFlags()I

    move-result v5

    const/high16 v8, 0x40000000    # 2.0f

    const/16 v9, 0x10

    invoke-static {v8, v9, v3}, Lcom/android/server/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v8

    or-int/2addr v5, v8

    invoke-virtual {v4, v5}, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->setFlags(I)Lcom/android/server/pm/pkg/component/ParsedComponentImpl;

    const/16 v4, 0x14

    .line 129
    invoke-virtual {v3, v4, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 132
    invoke-virtual {v6}, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->getFlags()I

    move-result v2

    const/high16 v4, 0x100000

    or-int/2addr v2, v4

    invoke-virtual {v6, v2}, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->setFlags(I)Lcom/android/server/pm/pkg/component/ParsedComponentImpl;

    move-object/from16 v2, p1

    .line 133
    invoke-interface {v2, v7}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setVisibleToInstantApps(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :cond_6
    move-object/from16 v2, p1

    .line 136
    :goto_4
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 139
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->isSaveStateDisallowed()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 141
    invoke-virtual {v6}, Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;->getProcessName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v4, v24

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v1, "Heavy-weight applications can not have providers in main process"

    .line 142
    invoke-interface {v0, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    :cond_7
    if-nez v1, :cond_8

    const-string v1, "<provider> does not include authorities attribute"

    .line 148
    invoke-interface {v0, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 150
    :cond_8
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_9

    const-string v1, "<provider> has empty authorities attribute"

    .line 151
    invoke-interface {v0, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 153
    :cond_9
    invoke-virtual {v6, v1}, Lcom/android/server/pm/pkg/component/ParsedProviderImpl;->setAuthority(Ljava/lang/String;)Lcom/android/server/pm/pkg/component/ParsedProviderImpl;

    move-object/from16 v1, p1

    move-object/from16 v2, v22

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v7, p7

    .line 155
    invoke-static/range {v1 .. v7}, Lcom/android/server/pm/pkg/component/ParsedProviderUtils;->parseProviderTags(Lcom/android/server/pm/pkg/parsing/ParsingPackage;Ljava/lang/String;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZLcom/android/server/pm/pkg/component/ParsedProviderImpl;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object/from16 v3, p0

    .line 136
    :goto_5
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 137
    throw v0
.end method

.method public static parseProviderTags(Lcom/android/server/pm/pkg/parsing/ParsingPackage;Ljava/lang/String;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZLcom/android/server/pm/pkg/component/ParsedProviderImpl;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
    .locals 16

    move-object/from16 v10, p0

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v13, p5

    move-object/from16 v14, p6

    .line 163
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v15

    .line 165
    :cond_0
    :goto_0
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_9

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    .line 167
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v3

    if-le v3, v15, :cond_9

    :cond_1
    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    goto :goto_0

    .line 172
    :cond_2
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 174
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, -0x1

    sparse-switch v4, :sswitch_data_0

    :goto_1
    move v1, v5

    goto :goto_2

    :sswitch_0
    const-string/jumbo v1, "path-permission"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x4

    goto :goto_2

    :sswitch_1
    const-string/jumbo v1, "property"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    move v1, v2

    goto :goto_2

    :sswitch_2
    const-string v1, "intent-filter"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_1

    :cond_5
    move v1, v3

    goto :goto_2

    :sswitch_3
    const-string/jumbo v2, "meta-data"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_1

    :sswitch_4
    const-string v1, "grant-uri-permission"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_1

    :cond_6
    const/4 v1, 0x0

    :cond_7
    :goto_2
    packed-switch v1, :pswitch_data_0

    move-object/from16 v9, p1

    .line 204
    invoke-static {v9, v10, v12, v14}, Lcom/android/server/pm/pkg/parsing/ParsingUtils;->unknownTag(Ljava/lang/String;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    goto :goto_3

    :pswitch_0
    move-object/from16 v9, p1

    .line 200
    invoke-static {v13, v10, v11, v12, v14}, Lcom/android/server/pm/pkg/component/ParsedProviderUtils;->parsePathPermission(Lcom/android/server/pm/pkg/component/ParsedProviderImpl;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    goto :goto_3

    :pswitch_1
    move-object/from16 v9, p1

    .line 193
    invoke-static {v13, v10, v11, v12, v14}, Lcom/android/server/pm/pkg/component/ParsedComponentUtils;->addProperty(Lcom/android/server/pm/pkg/component/ParsedComponentImpl;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    goto :goto_3

    :pswitch_2
    move-object/from16 v9, p1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p5

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v9, p6

    .line 177
    invoke-static/range {v0 .. v9}, Lcom/android/server/pm/pkg/component/ParsedMainComponentUtils;->parseIntentFilter(Lcom/android/server/pm/pkg/component/ParsedMainComponent;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZZZZZLandroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    .line 182
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 183
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/pkg/component/ParsedIntentInfoImpl;

    .line 184
    invoke-virtual {v1}, Lcom/android/server/pm/pkg/component/ParsedIntentInfoImpl;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v2

    .line 185
    invoke-virtual {v2}, Landroid/content/IntentFilter;->getOrder()I

    move-result v2

    invoke-virtual/range {p5 .. p5}, Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;->getOrder()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v13, v2}, Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;->setOrder(I)Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;

    .line 186
    invoke-virtual {v13, v1}, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->addIntent(Lcom/android/server/pm/pkg/component/ParsedIntentInfoImpl;)V

    goto :goto_3

    .line 190
    :pswitch_3
    invoke-static {v13, v10, v11, v12, v14}, Lcom/android/server/pm/pkg/component/ParsedComponentUtils;->addMetaData(Lcom/android/server/pm/pkg/component/ParsedComponentImpl;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    goto :goto_3

    .line 196
    :pswitch_4
    invoke-static {v13, v10, v11, v12, v14}, Lcom/android/server/pm/pkg/component/ParsedProviderUtils;->parseGrantUriPermission(Lcom/android/server/pm/pkg/component/ParsedProviderImpl;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    .line 208
    :cond_8
    :goto_3
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 209
    invoke-interface {v14, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 213
    :cond_9
    invoke-interface {v14, v13}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x6c28de5f -> :sswitch_4
        -0x4284098e -> :sswitch_3
        -0x3d616837 -> :sswitch_2
        -0x3b32222b -> :sswitch_1
        0x25eb3477 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
