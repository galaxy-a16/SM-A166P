.class public abstract Lcom/android/server/pm/pkg/component/ParsedPermissionUtils;
.super Ljava/lang/Object;
.source "ParsedPermissionUtils.java"


# direct methods
.method public static declareDuplicatePermission(Lcom/android/server/pm/pkg/parsing/ParsingPackage;)Z
    .locals 7

    .line 309
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->getPermissions()Ljava/util/List;

    move-result-object p0

    .line 310
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_1

    .line 312
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2, v0}, Landroid/util/ArrayMap;-><init>(I)V

    move v3, v1

    :goto_0
    if-ge v3, v0, :cond_1

    .line 314
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/pkg/component/ParsedPermission;

    .line 315
    invoke-interface {v4}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getName()Ljava/lang/String;

    move-result-object v5

    .line 316
    invoke-virtual {v2, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/pkg/component/ParsedPermission;

    .line 317
    invoke-static {v4, v6}, Lcom/android/server/pm/pkg/component/ParsedPermissionUtils;->isMalformedDuplicate(Lcom/android/server/pm/pkg/component/ParsedPermission;Lcom/android/server/pm/pkg/component/ParsedPermission;)Z

    move-result v6

    if-eqz v6, :cond_0

    const p0, 0x534e4554

    const-string v0, "213323615"

    .line 319
    invoke-static {p0, v0}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    const/4 p0, 0x1

    return p0

    .line 322
    :cond_0
    invoke-virtual {v2, v5, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static getProtection(Lcom/android/server/pm/pkg/component/ParsedPermission;)I
    .locals 0

    .line 268
    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedPermission;->getProtectionLevel()I

    move-result p0

    and-int/lit8 p0, p0, 0xf

    return p0
.end method

.method public static getProtectionFlags(Lcom/android/server/pm/pkg/component/ParsedPermission;)I
    .locals 0

    .line 272
    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedPermission;->getProtectionLevel()I

    move-result p0

    and-int/lit8 p0, p0, -0x10

    return p0
.end method

.method public static isAppOp(Lcom/android/server/pm/pkg/component/ParsedPermission;)Z
    .locals 0

    .line 263
    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedPermission;->getProtectionLevel()I

    move-result p0

    and-int/lit8 p0, p0, 0x40

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isMalformedDuplicate(Lcom/android/server/pm/pkg/component/ParsedPermission;Lcom/android/server/pm/pkg/component/ParsedPermission;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    .line 291
    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedPermission;->isTree()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedPermission;->isTree()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 295
    :cond_0
    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedPermission;->getProtectionLevel()I

    move-result v1

    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedPermission;->getProtectionLevel()I

    move-result v2

    const/4 v3, 0x1

    if-eq v1, v2, :cond_1

    return v3

    .line 298
    :cond_1
    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedPermission;->getGroup()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedPermission;->getGroup()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    return v3

    :cond_2
    :goto_0
    return v0
.end method

.method public static isRuntime(Lcom/android/server/pm/pkg/component/ParsedPermission;)Z
    .locals 1

    .line 259
    invoke-static {p0}, Lcom/android/server/pm/pkg/component/ParsedPermissionUtils;->getProtection(Lcom/android/server/pm/pkg/component/ParsedPermission;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static parsePermission(Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZLandroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
    .locals 21

    move-object/from16 v0, p1

    move-object/from16 v14, p4

    .line 54
    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->getPackageName()Ljava/lang/String;

    move-result-object v15

    .line 55
    new-instance v13, Lcom/android/server/pm/pkg/component/ParsedPermissionImpl;

    invoke-direct {v13}, Lcom/android/server/pm/pkg/component/ParsedPermissionImpl;-><init>()V

    .line 56
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

    move-result-object v16

    .line 59
    sget-object v1, Lcom/android/internal/R$styleable;->AndroidManifestPermission:[I

    move-object/from16 v12, p2

    invoke-virtual {v0, v12, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v11

    const/16 v7, 0x9

    const/4 v8, 0x5

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/16 v17, 0x7

    const/16 v18, 0x2

    const/16 v19, 0xa

    move-object v1, v13

    move-object/from16 v2, v16

    move-object/from16 v3, p0

    move-object v4, v11

    move/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v20, v11

    move/from16 v11, v17

    move/from16 v12, v18

    move-object v0, v13

    move/from16 v13, v19

    .line 60
    :try_start_0
    invoke-static/range {v1 .. v13}, Lcom/android/server/pm/pkg/component/ParsedComponentUtils;->parseComponent(Lcom/android/server/pm/pkg/component/ParsedComponentImpl;Ljava/lang/String;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/TypedArray;ZLandroid/content/pm/parsing/result/ParseInput;IIIIIII)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    .line 69
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 70
    invoke-interface {v14, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v1, v20

    if-eqz v1, :cond_0

    .line 145
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->close()V

    :cond_0
    return-object v0

    :cond_1
    move-object/from16 v1, v20

    const/4 v2, 0x6

    const/4 v3, -0x1

    .line 73
    :try_start_1
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    if-eq v2, v3, :cond_2

    .line 74
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v2, v3, :cond_2

    const/4 v0, 0x0

    .line 75
    invoke-interface {v14, v0}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 145
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->close()V

    return-object v0

    :cond_2
    const/16 v2, 0xc

    .line 78
    :try_start_2
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v4, "PackageParsing"

    const-string v5, "android"

    if-eqz v3, :cond_4

    .line 80
    :try_start_3
    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 81
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/pm/pkg/component/ParsedPermissionImpl;->setBackgroundPermission(Ljava/lang/String;)Lcom/android/server/pm/pkg/component/ParsedPermissionImpl;

    goto :goto_0

    .line 84
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " defines a background permission. Only the \'android\' package can do that."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_0
    const/4 v2, 0x4

    .line 91
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/server/pm/pkg/component/ParsedPermissionImpl;->setGroup(Ljava/lang/String;)Lcom/android/server/pm/pkg/component/ParsedPermissionImpl;

    move-result-object v3

    const/16 v6, 0xd

    const/4 v7, 0x0

    .line 93
    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    invoke-virtual {v3, v6}, Lcom/android/server/pm/pkg/component/ParsedPermissionImpl;->setRequestRes(I)Lcom/android/server/pm/pkg/component/ParsedPermissionImpl;

    move-result-object v3

    const/4 v6, 0x3

    .line 95
    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    invoke-virtual {v3, v6}, Lcom/android/server/pm/pkg/component/ParsedPermissionImpl;->setProtectionLevel(I)Lcom/android/server/pm/pkg/component/ParsedPermissionImpl;

    move-result-object v3

    const/16 v6, 0x8

    .line 98
    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    invoke-virtual {v3, v8}, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->setFlags(I)Lcom/android/server/pm/pkg/component/ParsedComponentImpl;

    const/16 v3, 0xb

    .line 101
    invoke-virtual {v1, v3, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    if-eqz v7, :cond_7

    move-object v8, v0

    move-object/from16 v0, p1

    .line 107
    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v3

    const-string v9, "array"

    .line 108
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 109
    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 111
    invoke-virtual {v8, v3}, Lcom/android/server/pm/pkg/component/ParsedPermissionImpl;->setKnownCerts([Ljava/lang/String;)V

    goto :goto_1

    .line 114
    :cond_5
    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 116
    invoke-virtual {v8, v3}, Lcom/android/server/pm/pkg/component/ParsedPermissionImpl;->setKnownCert(Ljava/lang/String;)V

    .line 119
    :cond_6
    :goto_1
    invoke-virtual {v8}, Lcom/android/server/pm/pkg/component/ParsedPermissionImpl;->getKnownCerts()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 120
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " defines a knownSigner permission but the provided knownCerts resource is null"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_7
    move-object v8, v0

    move-object/from16 v0, p1

    .line 126
    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 129
    invoke-virtual {v8, v3}, Lcom/android/server/pm/pkg/component/ParsedPermissionImpl;->setKnownCert(Ljava/lang/String;)V

    .line 134
    :cond_8
    :goto_2
    invoke-static {v8}, Lcom/android/server/pm/pkg/component/ParsedPermissionUtils;->isRuntime(Lcom/android/server/pm/pkg/component/ParsedPermission;)Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-virtual {v8}, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    goto :goto_3

    .line 139
    :cond_9
    invoke-virtual {v8}, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->getFlags()I

    move-result v3

    and-int/2addr v3, v2

    if-eqz v3, :cond_c

    .line 140
    invoke-virtual {v8}, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->getFlags()I

    move-result v3

    and-int/2addr v3, v6

    if-nez v3, :cond_a

    goto :goto_4

    .line 141
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Permission cannot be both soft and hard restricted: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    invoke-virtual {v8}, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :cond_b
    :goto_3
    invoke-virtual {v8}, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->getFlags()I

    move-result v3

    and-int/lit8 v3, v3, -0x5

    invoke-virtual {v8, v3}, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->setFlags(I)Lcom/android/server/pm/pkg/component/ParsedComponentImpl;

    .line 136
    invoke-virtual {v8}, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->getFlags()I

    move-result v3

    and-int/lit8 v3, v3, -0x9

    invoke-virtual {v8, v3}, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->setFlags(I)Lcom/android/server/pm/pkg/component/ParsedComponentImpl;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 145
    :cond_c
    :goto_4
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->close()V

    .line 148
    invoke-virtual {v8}, Lcom/android/server/pm/pkg/component/ParsedPermissionImpl;->getProtectionLevel()I

    move-result v1

    invoke-static {v1}, Landroid/content/pm/PermissionInfo;->fixProtectionLevel(I)I

    move-result v1

    .line 147
    invoke-virtual {v8, v1}, Lcom/android/server/pm/pkg/component/ParsedPermissionImpl;->setProtectionLevel(I)Lcom/android/server/pm/pkg/component/ParsedPermissionImpl;

    .line 150
    invoke-static {v8}, Lcom/android/server/pm/pkg/component/ParsedPermissionUtils;->getProtectionFlags(Lcom/android/server/pm/pkg/component/ParsedPermission;)I

    move-result v1

    and-int/lit16 v1, v1, -0x3041

    if-eqz v1, :cond_d

    .line 154
    invoke-static {v8}, Lcom/android/server/pm/pkg/component/ParsedPermissionUtils;->getProtection(Lcom/android/server/pm/pkg/component/ParsedPermission;)I

    move-result v1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_d

    .line 155
    invoke-static {v8}, Lcom/android/server/pm/pkg/component/ParsedPermissionUtils;->getProtection(Lcom/android/server/pm/pkg/component/ParsedPermission;)I

    move-result v1

    if-eq v1, v2, :cond_d

    const-string v0, "<permission> protectionLevel specifies a non-instant, non-appop, non-runtimeOnly flag but is not based on signature or internal type"

    .line 156
    invoke-interface {v14, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    :cond_d
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, v16

    move-object v5, v8

    move-object/from16 v6, p4

    .line 160
    invoke-static/range {v1 .. v6}, Lcom/android/server/pm/pkg/component/ComponentParseUtils;->parseAllMetaData(Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Ljava/lang/String;Lcom/android/server/pm/pkg/component/ParsedComponentImpl;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    .line 161
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 162
    invoke-interface {v14, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 165
    :cond_e
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/pkg/component/ParsedPermission;

    invoke-interface {v14, v0}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object/from16 v1, v20

    :goto_5
    move-object v2, v0

    if-eqz v1, :cond_f

    .line 59
    :try_start_4
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_6

    :catchall_2
    move-exception v0

    move-object v1, v0

    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_f
    :goto_6
    throw v2
.end method

.method public static parsePermissionGroup(Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZLandroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
    .locals 19

    move-object/from16 v0, p4

    .line 219
    new-instance v14, Lcom/android/server/pm/pkg/component/ParsedPermissionGroupImpl;

    invoke-direct {v14}, Lcom/android/server/pm/pkg/component/ParsedPermissionGroupImpl;-><init>()V

    .line 220
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

    move-result-object v15

    .line 222
    sget-object v1, Lcom/android/internal/R$styleable;->AndroidManifestPermissionGroup:[I

    move-object/from16 v13, p1

    move-object/from16 v12, p2

    invoke-virtual {v13, v12, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v11

    const/4 v7, 0x7

    const/4 v8, 0x4

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/16 v16, 0x5

    const/16 v17, 0x2

    const/16 v18, 0x8

    move-object v1, v14

    move-object v2, v15

    move-object/from16 v3, p0

    move-object v4, v11

    move/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 p3, v11

    move/from16 v11, v16

    move/from16 v12, v17

    move/from16 v13, v18

    .line 224
    :try_start_0
    invoke-static/range {v1 .. v13}, Lcom/android/server/pm/pkg/component/ParsedComponentUtils;->parseComponent(Lcom/android/server/pm/pkg/component/ParsedComponentImpl;Ljava/lang/String;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/TypedArray;ZLandroid/content/pm/parsing/result/ParseInput;IIIIIII)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    .line 233
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 234
    invoke-interface {v0, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 246
    invoke-virtual/range {p3 .. p3}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0

    :cond_0
    const/16 v1, 0xc

    const/4 v2, 0x0

    move-object/from16 v3, p3

    .line 238
    :try_start_1
    invoke-virtual {v3, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-virtual {v14, v1}, Lcom/android/server/pm/pkg/component/ParsedPermissionGroupImpl;->setRequestDetailRes(I)Lcom/android/server/pm/pkg/component/ParsedPermissionGroupImpl;

    move-result-object v1

    const/16 v4, 0x9

    .line 239
    invoke-virtual {v3, v4, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/android/server/pm/pkg/component/ParsedPermissionGroupImpl;->setBackgroundRequestRes(I)Lcom/android/server/pm/pkg/component/ParsedPermissionGroupImpl;

    move-result-object v1

    const/16 v4, 0xa

    .line 240
    invoke-virtual {v3, v4, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/android/server/pm/pkg/component/ParsedPermissionGroupImpl;->setBackgroundRequestDetailRes(I)Lcom/android/server/pm/pkg/component/ParsedPermissionGroupImpl;

    move-result-object v1

    const/16 v4, 0xb

    .line 241
    invoke-virtual {v3, v4, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/android/server/pm/pkg/component/ParsedPermissionGroupImpl;->setRequestRes(I)Lcom/android/server/pm/pkg/component/ParsedPermissionGroupImpl;

    move-result-object v1

    const/4 v4, 0x3

    .line 242
    invoke-virtual {v3, v4, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/android/server/pm/pkg/component/ParsedPermissionGroupImpl;->setPriority(I)Lcom/android/server/pm/pkg/component/ParsedPermissionGroupImpl;

    move-result-object v1

    const/4 v4, 0x6

    .line 243
    invoke-virtual {v3, v4, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->setFlags(I)Lcom/android/server/pm/pkg/component/ParsedComponentImpl;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 246
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object v4, v15

    move-object v5, v14

    move-object/from16 v6, p4

    .line 249
    invoke-static/range {v1 .. v6}, Lcom/android/server/pm/pkg/component/ComponentParseUtils;->parseAllMetaData(Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Ljava/lang/String;Lcom/android/server/pm/pkg/component/ParsedComponentImpl;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    .line 251
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 252
    invoke-interface {v0, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 255
    :cond_1
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/pkg/component/ParsedPermissionGroup;

    invoke-interface {v0, v1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object/from16 v3, p3

    .line 246
    :goto_0
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 247
    throw v0
.end method

.method public static parsePermissionTree(Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZLandroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
    .locals 19

    move-object/from16 v0, p4

    .line 172
    new-instance v14, Lcom/android/server/pm/pkg/component/ParsedPermissionImpl;

    invoke-direct {v14}, Lcom/android/server/pm/pkg/component/ParsedPermissionImpl;-><init>()V

    .line 173
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

    move-result-object v15

    .line 176
    sget-object v1, Lcom/android/internal/R$styleable;->AndroidManifestPermissionTree:[I

    move-object/from16 v13, p1

    move-object/from16 v12, p2

    invoke-virtual {v13, v12, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v16

    const/4 v7, 0x4

    const/4 v8, -0x1

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x3

    const/16 v17, 0x2

    const/16 v18, 0x5

    move-object v1, v14

    move-object v2, v15

    move-object/from16 v3, p0

    move-object/from16 v4, v16

    move/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v12, v17

    move/from16 v13, v18

    .line 178
    :try_start_0
    invoke-static/range {v1 .. v13}, Lcom/android/server/pm/pkg/component/ParsedComponentUtils;->parseComponent(Lcom/android/server/pm/pkg/component/ParsedComponentImpl;Ljava/lang/String;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/TypedArray;ZLandroid/content/pm/parsing/result/ParseInput;IIIIIII)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    .line 187
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 188
    invoke-interface {v0, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    invoke-virtual/range {v16 .. v16}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0

    :cond_0
    invoke-virtual/range {v16 .. v16}, Landroid/content/res/TypedArray;->recycle()V

    .line 194
    invoke-virtual {v14}, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-lez v1, :cond_1

    .line 196
    invoke-virtual {v14}, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->getName()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v3, v2, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    :cond_1
    if-gez v1, :cond_2

    .line 199
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<permission-tree> name has less than three segments: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    invoke-virtual {v14}, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 199
    invoke-interface {v0, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    :cond_2
    const/4 v1, 0x0

    .line 203
    invoke-virtual {v14, v1}, Lcom/android/server/pm/pkg/component/ParsedPermissionImpl;->setProtectionLevel(I)Lcom/android/server/pm/pkg/component/ParsedPermissionImpl;

    move-result-object v1

    const/4 v2, 0x1

    .line 204
    invoke-virtual {v1, v2}, Lcom/android/server/pm/pkg/component/ParsedPermissionImpl;->setTree(Z)Lcom/android/server/pm/pkg/component/ParsedPermissionImpl;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object v4, v15

    move-object v5, v14

    move-object/from16 v6, p4

    .line 206
    invoke-static/range {v1 .. v6}, Lcom/android/server/pm/pkg/component/ComponentParseUtils;->parseAllMetaData(Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Ljava/lang/String;Lcom/android/server/pm/pkg/component/ParsedComponentImpl;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    .line 207
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 208
    invoke-interface {v0, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 211
    :cond_3
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/pkg/component/ParsedPermission;

    invoke-interface {v0, v1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v0

    .line 191
    invoke-virtual/range {v16 .. v16}, Landroid/content/res/TypedArray;->recycle()V

    .line 192
    throw v0
.end method
