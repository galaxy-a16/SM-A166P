.class public abstract Lcom/android/server/pm/pkg/component/ParsedIntentInfoUtils;
.super Ljava/lang/Object;
.source "ParsedIntentInfoUtils.java"


# static fields
.field public static final sRRFilter:Lcom/samsung/android/server/pm/allowlist/RestrictedReceiverFilter;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 61
    invoke-static {}, Lcom/samsung/android/server/pm/allowlist/RestrictedReceiverFilter;->getInstance()Lcom/samsung/android/server/pm/allowlist/RestrictedReceiverFilter;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/pkg/component/ParsedIntentInfoUtils;->sRRFilter:Lcom/samsung/android/server/pm/allowlist/RestrictedReceiverFilter;

    return-void
.end method

.method public static parseData(Lcom/android/server/pm/pkg/component/ParsedIntentInfo;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZLandroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
    .locals 6

    .line 207
    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedIntentInfo;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object p0

    .line 208
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestData:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    .line 210
    :try_start_0
    invoke-virtual {p1, p2, p2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 214
    :try_start_1
    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 216
    :try_start_2
    invoke-virtual {p0}, Landroid/content/IntentFilter$MalformedMimeTypeException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p4, p0}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 325
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-object p0

    :cond_0
    :goto_0
    const/16 v0, 0xa

    .line 220
    :try_start_3
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 223
    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addMimeGroup(Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x1

    .line 226
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 229
    invoke-virtual {p0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    :cond_2
    const/4 v1, 0x7

    .line 232
    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 235
    invoke-virtual {p0, v1, p2}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    :cond_3
    const/16 v1, 0x8

    .line 239
    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 242
    invoke-virtual {p0, v1, v0}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    :cond_4
    const/16 v1, 0x9

    .line 246
    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    if-eqz v1, :cond_6

    if-nez p3, :cond_5

    const-string/jumbo p0, "sspPattern not allowed here; ssp must be literal"

    .line 250
    invoke-interface {p4, p0}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 325
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-object p0

    .line 253
    :cond_5
    :try_start_4
    invoke-virtual {p0, v1, v2}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    :cond_6
    const/16 v1, 0xe

    .line 257
    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x3

    if-eqz v1, :cond_8

    if-nez p3, :cond_7

    const-string/jumbo p0, "sspAdvancedPattern not allowed here; ssp must be literal"

    .line 261
    invoke-interface {p4, p0}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 325
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-object p0

    .line 264
    :cond_7
    :try_start_5
    invoke-virtual {p0, v1, v3}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    :cond_8
    const/16 v1, 0xc

    .line 268
    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x4

    if-eqz v1, :cond_9

    .line 271
    invoke-virtual {p0, v1, v4}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 276
    :cond_9
    invoke-virtual {p1, v2, p2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v1

    .line 278
    invoke-virtual {p1, v3, p2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v5

    if-eqz v1, :cond_a

    .line 281
    invoke-virtual {p0, v1, v5}, Landroid/content/IntentFilter;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    :cond_a
    invoke-virtual {p1, v4, p2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 287
    invoke-virtual {p0, v1, p2}, Landroid/content/IntentFilter;->addDataPath(Ljava/lang/String;I)V

    :cond_b
    const/4 v1, 0x5

    .line 290
    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 293
    invoke-virtual {p0, v1, v0}, Landroid/content/IntentFilter;->addDataPath(Ljava/lang/String;I)V

    :cond_c
    const/4 v0, 0x6

    .line 296
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e

    if-nez p3, :cond_d

    const-string/jumbo p0, "pathPattern not allowed here; path must be literal"

    .line 300
    invoke-interface {p4, p0}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 325
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-object p0

    .line 303
    :cond_d
    :try_start_6
    invoke-virtual {p0, v0, v2}, Landroid/content/IntentFilter;->addDataPath(Ljava/lang/String;I)V

    :cond_e
    const/16 v0, 0xd

    .line 306
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_10

    if-nez p3, :cond_f

    const-string/jumbo p0, "pathAdvancedPattern not allowed here; path must be literal"

    .line 310
    invoke-interface {p4, p0}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 325
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-object p0

    .line 313
    :cond_f
    :try_start_7
    invoke-virtual {p0, v0, v3}, Landroid/content/IntentFilter;->addDataPath(Ljava/lang/String;I)V

    :cond_10
    const/16 p3, 0xb

    .line 316
    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_11

    .line 319
    invoke-virtual {p0, p2, v4}, Landroid/content/IntentFilter;->addDataPath(Ljava/lang/String;I)V

    :cond_11
    const/4 p0, 0x0

    .line 323
    invoke-interface {p4, p0}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 325
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 326
    throw p0
.end method

.method public static parseIntentInfo(Ljava/lang/String;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZZLandroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
    .locals 16

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p6

    .line 69
    new-instance v3, Lcom/android/server/pm/pkg/component/ParsedIntentInfoImpl;

    invoke-direct {v3}, Lcom/android/server/pm/pkg/component/ParsedIntentInfoImpl;-><init>()V

    .line 70
    invoke-virtual {v3}, Lcom/android/server/pm/pkg/component/ParsedIntentInfoImpl;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v4

    .line 71
    sget-object v5, Lcom/android/internal/R$styleable;->AndroidManifestIntentFilter:[I

    invoke-virtual {v0, v1, v5}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    const/4 v6, 0x2

    const/4 v7, 0x0

    .line 74
    :try_start_0
    invoke-virtual {v5, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    .line 73
    invoke-virtual {v4, v8}, Landroid/content/IntentFilter;->setPriority(I)V

    const/4 v8, 0x3

    .line 75
    invoke-virtual {v5, v8, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    invoke-virtual {v4, v9}, Landroid/content/IntentFilter;->setOrder(I)V

    .line 77
    invoke-virtual {v5, v7}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 79
    iget v10, v9, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v3, v10}, Lcom/android/server/pm/pkg/component/ParsedIntentInfoImpl;->setLabelRes(I)Lcom/android/server/pm/pkg/component/ParsedIntentInfoImpl;

    .line 80
    iget v10, v9, Landroid/util/TypedValue;->resourceId:I

    if-nez v10, :cond_0

    .line 81
    invoke-virtual {v9}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v3, v9}, Lcom/android/server/pm/pkg/component/ParsedIntentInfoImpl;->setNonLocalizedLabel(Ljava/lang/CharSequence;)Lcom/android/server/pm/pkg/component/ParsedIntentInfoImpl;

    .line 85
    :cond_0
    sget-boolean v9, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->sUseRoundIcon:Z

    if-eqz v9, :cond_1

    const/4 v9, 0x7

    .line 86
    invoke-virtual {v5, v9, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    invoke-virtual {v3, v9}, Lcom/android/server/pm/pkg/component/ParsedIntentInfoImpl;->setIcon(I)Lcom/android/server/pm/pkg/component/ParsedIntentInfoImpl;

    .line 90
    :cond_1
    invoke-virtual {v3}, Lcom/android/server/pm/pkg/component/ParsedIntentInfoImpl;->getIcon()I

    move-result v9

    const/4 v10, 0x1

    if-nez v9, :cond_2

    .line 92
    invoke-virtual {v5, v10, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    .line 91
    invoke-virtual {v3, v9}, Lcom/android/server/pm/pkg/component/ParsedIntentInfoImpl;->setIcon(I)Lcom/android/server/pm/pkg/component/ParsedIntentInfoImpl;

    :cond_2
    if-eqz p5, :cond_3

    const/4 v9, 0x6

    .line 96
    invoke-virtual {v5, v9, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    invoke-virtual {v4, v9}, Landroid/content/IntentFilter;->setAutoVerify(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    :cond_3
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 103
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 104
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v9

    .line 106
    :goto_0
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v11

    if-eq v11, v10, :cond_f

    if-ne v11, v8, :cond_4

    .line 108
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v12

    if-le v12, v9, :cond_f

    :cond_4
    if-eq v11, v6, :cond_5

    goto :goto_0

    .line 114
    :cond_5
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v11

    .line 115
    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    move-result v12

    const/4 v13, -0x1

    sparse-switch v12, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v12, "category"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_6

    goto :goto_1

    :cond_6
    move v13, v6

    goto :goto_1

    :sswitch_1
    const-string v12, "data"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_7

    goto :goto_1

    :cond_7
    move v13, v10

    goto :goto_1

    :sswitch_2
    const-string v12, "action"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_8

    goto :goto_1

    :cond_8
    move v13, v7

    :goto_1
    const/4 v11, 0x0

    const-wide/32 v14, 0x9029125

    const-string/jumbo v12, "name"

    const-string v6, "http://schemas.android.com/apk/res/android"

    const-string v7, "No value supplied for <android:name>"

    packed-switch v13, :pswitch_data_0

    const-string v6, "<intent-filter>"

    move-object/from16 v13, p1

    .line 158
    invoke-static {v6, v13, v1, v2}, Lcom/android/server/pm/pkg/parsing/ParsingUtils;->unknownTag(Ljava/lang/String;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v6

    goto/16 :goto_2

    :pswitch_0
    move-object/from16 v13, p1

    .line 140
    invoke-interface {v1, v6, v12}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_9

    .line 142
    invoke-interface {v2, v7}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v6

    goto :goto_2

    .line 143
    :cond_9
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_a

    .line 144
    invoke-virtual {v4, v6}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 146
    invoke-interface {v2, v7, v14, v15}, Landroid/content/pm/parsing/result/ParseInput;->deferError(Ljava/lang/String;J)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v6

    goto :goto_2

    .line 149
    :cond_a
    invoke-virtual {v4, v6}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 150
    invoke-interface {v2, v11}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v6

    goto :goto_2

    :pswitch_1
    move-object/from16 v13, p1

    move/from16 v6, p4

    .line 155
    invoke-static {v3, v0, v1, v6, v2}, Lcom/android/server/pm/pkg/component/ParsedIntentInfoUtils;->parseData(Lcom/android/server/pm/pkg/component/ParsedIntentInfo;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZLandroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v7

    move-object v6, v7

    goto :goto_2

    :pswitch_2
    move-object/from16 v13, p1

    .line 117
    invoke-interface {v1, v6, v12}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_b

    .line 119
    invoke-interface {v2, v7}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v6

    goto :goto_2

    .line 120
    :cond_b
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_c

    .line 121
    invoke-virtual {v4, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 123
    invoke-interface {v2, v7, v14, v15}, Landroid/content/pm/parsing/result/ParseInput;->deferError(Ljava/lang/String;J)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v6

    goto :goto_2

    .line 126
    :cond_c
    sget-object v7, Lcom/android/server/pm/pkg/component/ParsedIntentInfoUtils;->sRRFilter:Lcom/samsung/android/server/pm/allowlist/RestrictedReceiverFilter;

    if-eqz v7, :cond_d

    .line 127
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->getPackageName()Ljava/lang/String;

    move-result-object v12

    .line 128
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->getBaseApkPath()Ljava/lang/String;

    move-result-object v14

    .line 129
    invoke-virtual {v7, v12, v14, v6}, Lcom/samsung/android/server/pm/allowlist/RestrictedReceiverFilter;->filterReceiver(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 130
    new-instance v7, Lcom/samsung/android/server/pm/allowlist/RestrictedReceiverFilter$RestrictedAction;

    invoke-direct {v7, v6, v12, v14}, Lcom/samsung/android/server/pm/allowlist/RestrictedReceiverFilter$RestrictedAction;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    :cond_d
    invoke-virtual {v4, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 135
    invoke-interface {v2, v11}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v6

    .line 162
    :goto_2
    invoke-interface {v6}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v7

    if-eqz v7, :cond_e

    .line 163
    invoke-interface {v2, v6}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    :cond_e
    const/4 v6, 0x2

    const/4 v7, 0x0

    goto/16 :goto_0

    :cond_f
    const-string v0, "android.intent.category.DEFAULT"

    .line 167
    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->hasCategory(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v3, v0}, Lcom/android/server/pm/pkg/component/ParsedIntentInfoImpl;->setHasDefault(Z)Lcom/android/server/pm/pkg/component/ParsedIntentInfoImpl;

    .line 170
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_10
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/server/pm/allowlist/RestrictedReceiverFilter$RestrictedAction;

    .line 172
    iget-object v5, v1, Lcom/samsung/android/server/pm/allowlist/RestrictedReceiverFilter$RestrictedAction;->mAction:Ljava/lang/String;

    invoke-static {v5}, Lcom/samsung/android/server/pm/allowlist/BroadcastReceiverListParser;->isPackageXXXIntent(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 173
    invoke-static {v4}, Lcom/samsung/android/server/pm/allowlist/BroadcastReceiverListParser;->hasPackageSSP(Landroid/content/IntentFilter;)Z

    move-result v5

    if-eqz v5, :cond_11

    const/4 v5, 0x0

    goto :goto_4

    :cond_11
    move v5, v10

    :goto_4
    if-eqz v5, :cond_10

    .line 179
    iget-object v5, v1, Lcom/samsung/android/server/pm/allowlist/RestrictedReceiverFilter$RestrictedAction;->mAction:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->removeAction(Ljava/lang/String;)V

    .line 181
    sget-object v5, Lcom/android/server/pm/pkg/component/ParsedIntentInfoUtils;->sRRFilter:Lcom/samsung/android/server/pm/allowlist/RestrictedReceiverFilter;

    iget-object v6, v1, Lcom/samsung/android/server/pm/allowlist/RestrictedReceiverFilter$RestrictedAction;->mPackageName:Ljava/lang/String;

    iget-object v7, v1, Lcom/samsung/android/server/pm/allowlist/RestrictedReceiverFilter$RestrictedAction;->mCodePath:Ljava/lang/String;

    iget-object v1, v1, Lcom/samsung/android/server/pm/allowlist/RestrictedReceiverFilter$RestrictedAction;->mAction:Ljava/lang/String;

    invoke-virtual {v5, v6, v7, v1}, Lcom/samsung/android/server/pm/allowlist/RestrictedReceiverFilter;->addViolationLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 201
    :cond_12
    invoke-interface {v2, v3}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v0

    .line 101
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 102
    throw v0

    :sswitch_data_0
    .sparse-switch
        -0x54d081ca -> :sswitch_2
        0x2eefaa -> :sswitch_1
        0x302bcfe -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
