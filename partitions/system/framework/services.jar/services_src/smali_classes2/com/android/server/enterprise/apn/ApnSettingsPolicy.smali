.class public Lcom/android/server/enterprise/apn/ApnSettingsPolicy;
.super Lcom/samsung/android/knox/net/apn/IApnSettingsPolicy$Stub;
.source "ApnSettingsPolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# static fields
.field public static AUTH_TYPE_NOTSET:I = -0x1


# instance fields
.field public dunRequired:Z

.field public mContext:Landroid/content/Context;

.field public mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field public mMDMConfigVersion:I

.field public mPendingGetApnList:Ljava/util/HashMap;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 137
    invoke-direct {p0}, Lcom/samsung/android/knox/net/apn/IApnSettingsPolicy$Stub;-><init>()V

    const/4 v0, 0x0

    .line 90
    iput-boolean v0, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->dunRequired:Z

    const/4 v0, 0x0

    .line 104
    iput-object v0, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 106
    sget v0, Lcom/samsung/android/knox/KnoxInternalFeature;->KNOX_CONFIG_MDM_VERSION:I

    iput v0, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mMDMConfigVersion:I

    .line 484
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mPendingGetApnList:Ljava/util/HashMap;

    .line 138
    iput-object p1, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public declared-synchronized addUpdateApn(Lcom/samsung/android/knox/ContextInfo;ZLcom/samsung/android/knox/net/apn/ApnSettings;)J
    .locals 28

    move-object/from16 v1, p0

    move/from16 v2, p2

    move-object/from16 v0, p3

    monitor-enter p0

    :try_start_0
    const-string v3, "ApnSettingsPolicyService"

    .line 213
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isNewAp - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->enforceOwnerOnlyAndApnPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-wide/16 v3, -0x1

    if-nez v0, :cond_0

    .line 220
    monitor-exit p0

    return-wide v3

    .line 223
    :cond_0
    :try_start_1
    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->getId()J

    move-result-wide v5

    .line 224
    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->getUser()Ljava/lang/String;

    move-result-object v7

    .line 225
    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->getServer()Ljava/lang/String;

    move-result-object v8

    .line 226
    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->getPassword()Ljava/lang/String;

    move-result-object v9

    .line 227
    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->getProxy()Ljava/lang/String;

    move-result-object v10

    .line 228
    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->getPort()I

    move-result v11

    .line 229
    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->getMmsProxy()Ljava/lang/String;

    move-result-object v12

    .line 230
    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->getMmsc()Ljava/lang/String;

    move-result-object v13

    .line 231
    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->getType()Ljava/lang/String;

    move-result-object v14

    .line 232
    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->getAuthType()I

    move-result v15

    .line 233
    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 234
    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->getApn()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v3, :cond_25

    if-nez v4, :cond_1

    goto/16 :goto_18

    :cond_1
    move-object/from16 p1, v14

    .line 241
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v14

    move-object/from16 v16, v13

    const/16 v13, 0x41

    if-le v14, v13, :cond_2

    const-string v0, "ApnSettingsPolicyService"

    const-string v2, "APN name maximum length (65)"

    .line 242
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 243
    monitor-exit p0

    :goto_0
    const-wide/16 v1, -0x1

    return-wide v1

    .line 245
    :cond_2
    :try_start_2
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v13

    const/16 v14, 0x78

    if-le v13, v14, :cond_3

    const-string v0, "ApnSettingsPolicyService"

    const-string v2, "APN excedes maximum length (120)"

    .line 246
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 247
    monitor-exit p0

    goto :goto_0

    .line 249
    :cond_3
    :try_start_3
    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->getMcc()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 250
    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->getMnc()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v14}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v17, v12

    .line 251
    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->getMmsPort()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v18, v10

    .line 253
    iget-object v10, v0, Lcom/samsung/android/knox/net/apn/ApnSettings;->protocol:Ljava/lang/String;

    .line 254
    invoke-virtual {v1, v10}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->validateProtocol(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_4

    const-string v0, "ApnSettingsPolicyService"

    const-string v2, "Invalid protocol!"

    .line 255
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 256
    monitor-exit p0

    goto :goto_0

    :cond_4
    move-object/from16 v19, v10

    .line 259
    :try_start_4
    iget-object v10, v0, Lcom/samsung/android/knox/net/apn/ApnSettings;->roamingProtocol:Ljava/lang/String;

    .line 260
    invoke-virtual {v1, v10}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->validateProtocol(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_5

    const-string v0, "ApnSettingsPolicyService"

    const-string v2, "Invalid Roaming Protocol!"

    .line 261
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 262
    monitor-exit p0

    goto :goto_0

    :cond_5
    move-object/from16 v20, v10

    .line 265
    :try_start_5
    iget-object v10, v0, Lcom/samsung/android/knox/net/apn/ApnSettings;->mvno_type:Ljava/lang/String;

    .line 266
    invoke-virtual {v1, v10}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->validateMVNOType(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_6

    const-string v0, "ApnSettingsPolicyService"

    const-string v2, "Invalid mvno type!"

    .line 267
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 268
    monitor-exit p0

    goto :goto_0

    .line 271
    :cond_6
    :try_start_6
    iget-object v0, v0, Lcom/samsung/android/knox/net/apn/ApnSettings;->mvno_value:Ljava/lang/String;

    move-object/from16 v21, v10

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-object/from16 p3, v10

    .line 276
    :try_start_7
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 277
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 280
    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v10, -0x1

    if-nez v0, :cond_7

    const-string v0, "*"

    invoke-virtual {v12, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_7

    .line 281
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    :cond_7
    move v0, v10

    :goto_1
    const-wide/16 v23, 0x1

    if-nez v2, :cond_8

    cmp-long v25, v23, v5

    if-gtz v25, :cond_a

    :cond_8
    if-eqz v13, :cond_a

    .line 285
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v25

    if-eqz v25, :cond_a

    if-eqz v14, :cond_a

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v25

    if-eqz v25, :cond_a

    .line 286
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v25

    if-eqz v25, :cond_a

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v25

    if-eqz v25, :cond_a

    if-gt v10, v11, :cond_a

    if-gt v10, v0, :cond_a

    const/4 v10, -0x2

    if-gt v10, v15, :cond_a

    const/4 v10, 0x3

    if-ge v10, v15, :cond_9

    goto :goto_2

    :cond_9
    move-object/from16 v23, v12

    const/4 v0, 0x1

    goto/16 :goto_a

    :cond_a
    :goto_2
    if-nez v2, :cond_b

    cmp-long v10, v23, v5

    if-lez v10, :cond_b

    const-string v10, "ApnSettingsPolicyService"
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-object/from16 v23, v12

    .line 290
    :try_start_8
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addUpdateAp() : invalid ap Id "

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_b
    move-object/from16 v23, v12

    .line 292
    :goto_3
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_c

    const-string v2, "ApnSettingsPolicyService"

    const-string v10, "addUpdateAp() : invalid ap name"

    .line 293
    invoke-static {v2, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_8

    .line 295
    :cond_c
    :goto_4
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_d

    const-string v2, "ApnSettingsPolicyService"

    const-string v10, "addUpdateAp() : invalid ap apn"

    .line 296
    invoke-static {v2, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    if-eqz v13, :cond_e

    .line 298
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_f

    :cond_e
    const-string v2, "ApnSettingsPolicyService"

    const-string v10, "addUpdateAp() : invalid ap mcc"

    .line 299
    invoke-static {v2, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    if-eqz v14, :cond_11

    .line 301
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_10

    goto :goto_6

    :cond_10
    :goto_5
    const/4 v2, -0x1

    goto :goto_7

    :cond_11
    :goto_6
    const-string v2, "ApnSettingsPolicyService"

    const-string v10, "addUpdateAp() : invalid ap mnc"

    .line 302
    invoke-static {v2, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :goto_7
    if-le v2, v11, :cond_12

    const-string v2, "ApnSettingsPolicyService"

    const-string v10, "addUpdateAp() : invalid ap port"

    .line 305
    invoke-static {v2, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    :cond_12
    if-le v2, v0, :cond_13

    const-string v0, "ApnSettingsPolicyService"

    const-string v2, "addUpdateAp() : invalid ap iMmsPort"

    .line 308
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    const/4 v2, -0x2

    if-gt v2, v15, :cond_14

    const/4 v2, 0x3

    if-ge v2, v15, :cond_15

    :cond_14
    const-string v0, "ApnSettingsPolicyService"

    const-string v2, "addUpdateAp() : invalid ap authType"

    .line 311
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_9

    :catch_1
    move-exception v0

    move-object/from16 v23, v12

    .line 316
    :goto_8
    :try_start_9
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_15
    :goto_9
    const/4 v0, 0x0

    :goto_a
    if-eqz v0, :cond_24

    .line 320
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v24
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 322
    :try_start_a
    iget-object v0, v1, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "phone"

    .line 323
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 324
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x4

    if-eqz v0, :cond_16

    .line 326
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v12

    if-ge v2, v12, :cond_16

    const/4 v10, 0x0

    const/4 v12, 0x3

    .line 328
    invoke-virtual {v0, v10, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v22

    .line 330
    invoke-virtual {v0, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v10, v22

    goto :goto_b

    :cond_16
    const/4 v10, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    .line 335
    :goto_b
    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;

    .line 336
    invoke-virtual {v1, v7}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 337
    invoke-virtual {v1, v8}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 338
    invoke-virtual {v1, v9}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v9, v18

    .line 339
    invoke-virtual {v1, v9}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v2, v17

    .line 340
    invoke-virtual {v1, v2}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-wide/from16 v26, v5

    move-object/from16 v5, v16

    .line 341
    invoke-virtual {v1, v5}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v6, p1

    .line 342
    invoke-virtual {v1, v6}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 p1, v10

    .line 344
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    move-object/from16 v16, v12

    const-string/jumbo v12, "name"

    move-object/from16 v17, v6

    move/from16 v6, p2

    .line 346
    invoke-virtual {v1, v6, v10, v12, v3}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "numeric"

    if-eqz v13, :cond_18

    if-nez v14, :cond_17

    goto :goto_c

    .line 349
    :cond_17
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_d

    :cond_18
    :goto_c
    const/4 v12, 0x0

    .line 348
    :goto_d
    invoke-virtual {v1, v6, v10, v3, v12}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "mcc"

    .line 350
    invoke-virtual {v1, v6, v10, v3, v13}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "mnc"

    .line 351
    invoke-virtual {v1, v6, v10, v3, v14}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "apn"

    .line 352
    invoke-virtual {v1, v6, v10, v3, v4}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "user"

    .line 353
    invoke-virtual {v1, v6, v10, v3, v0}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "server"

    .line 354
    invoke-virtual {v1, v6, v10, v0, v7}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "password"

    .line 355
    invoke-virtual {v1, v6, v10, v0, v8}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "proxy"

    .line 356
    invoke-virtual {v1, v6, v10, v0, v9}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "port"

    if-ltz v11, :cond_19

    .line 357
    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_e

    :cond_19
    const-string v3, ""

    :goto_e
    invoke-virtual {v1, v6, v10, v0, v3}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "mmsproxy"

    .line 359
    invoke-virtual {v1, v6, v10, v0, v2}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "mmsport"

    move-object/from16 v2, v23

    .line 360
    invoke-virtual {v1, v6, v10, v0, v2}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "mmsc"

    .line 361
    invoke-virtual {v1, v6, v10, v0, v5}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v6, :cond_1b

    const-string v0, "authtype"

    const/4 v2, -0x2

    if-ge v2, v15, :cond_1a

    const/4 v2, 0x4

    if-le v2, v15, :cond_1a

    goto :goto_f

    .line 365
    :cond_1a
    sget v15, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->AUTH_TYPE_NOTSET:I

    .line 364
    :goto_f
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v10, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_10

    :cond_1b
    if-nez v6, :cond_1c

    const/4 v2, -0x2

    if-ge v2, v15, :cond_1c

    const/4 v0, 0x4

    if-le v0, v15, :cond_1c

    const-string v0, "authtype"

    .line 367
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v10, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_1c
    :goto_10
    const-string/jumbo v0, "type"

    move-object/from16 v2, v17

    .line 370
    invoke-virtual {v1, v6, v10, v0, v2}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v16, :cond_1d

    if-eqz p1, :cond_1d

    move-object/from16 v12, v16

    .line 373
    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    const-string v0, "current"

    const/4 v2, 0x1

    .line 374
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v10, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 375
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getDeviceSimSlotCnt()I

    move-result v0

    if-le v0, v2, :cond_1d

    const-string v0, "ApnSettingsPolicyService"

    const-string v3, "IS DUAL SIM"

    .line 376
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "current1"

    .line 377
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v10, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_1d
    const-string v0, "edited"

    const/4 v2, 0x1

    .line 382
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v10, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 384
    iget v0, v1, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mMDMConfigVersion:I

    const/16 v3, 0x11

    if-lt v0, v3, :cond_1e

    const-string/jumbo v0, "protocol"

    move-object/from16 v3, v19

    .line 387
    invoke-virtual {v1, v6, v10, v0, v3}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "roaming_protocol"

    move-object/from16 v3, v20

    .line 388
    invoke-virtual {v1, v6, v10, v0, v3}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1e
    const-string/jumbo v0, "mvno_type"

    move-object/from16 v3, v21

    .line 391
    invoke-virtual {v1, v6, v10, v0, v3}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "mvno_match_data"

    move-object/from16 v3, p3

    .line 392
    invoke-virtual {v1, v6, v10, v0, v3}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    invoke-virtual {v10}, Landroid/content/ContentValues;->size()I

    move-result v0

    if-lez v0, :cond_22

    if-eqz v6, :cond_20

    .line 397
    iget-object v0, v1, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v3, Lcom/android/server/enterprise/apn/ApnSettingsPolicy$Carriers;->CONTENT_URI:Landroid/net/Uri;

    .line 398
    invoke-virtual {v0, v3, v10}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1f

    move v10, v2

    goto :goto_11

    :cond_1f
    const/4 v10, 0x0

    :goto_11
    if-eqz v10, :cond_23

    const-string v2, "ApnSettingsPolicyService"

    const-string v3, "addUpdateAp Created rowUri : "

    .line 401
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    :goto_12
    move-wide v3, v2

    goto :goto_14

    .line 406
    :cond_20
    sget-object v0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy$Carriers;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v3, v26

    invoke-static {v0, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 407
    iget-object v3, v1, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    .line 408
    invoke-virtual {v3, v0, v10, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_21

    move v10, v2

    goto :goto_13

    :cond_21
    const/4 v10, 0x0

    :goto_13
    if-eqz v10, :cond_23

    const-string v2, "ApnSettingsPolicyService"

    const-string v3, "addUpdateAp Updated rowUri : "

    .line 411
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    goto :goto_12

    :cond_22
    const-string v0, "ApnSettingsPolicyService"

    const-string v2, "addUpdateAp Error: Empty dataset."

    .line 416
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :cond_23
    const-wide/16 v3, -0x1

    .line 421
    :goto_14
    :try_start_b
    invoke-static/range {v24 .. v25}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto :goto_17

    :catchall_0
    move-exception v0

    goto :goto_15

    :catch_2
    move-exception v0

    .line 419
    :try_start_c
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 421
    :try_start_d
    invoke-static/range {v24 .. v25}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_16

    :goto_15
    invoke-static/range {v24 .. v25}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 422
    throw v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    :cond_24
    :goto_16
    const-wide/16 v3, -0x1

    .line 424
    :goto_17
    monitor-exit p0

    return-wide v3

    :cond_25
    :goto_18
    :try_start_e
    const-string v0, "ApnSettingsPolicyService"

    const-string v2, "Invalid value"

    .line 237
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 238
    monitor-exit p0

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized deleteApn(Lcom/samsung/android/knox/ContextInfo;J)Z
    .locals 4

    monitor-enter p0

    .line 182
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->enforceOwnerOnlyAndApnPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 184
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long p1, v2, p2

    const/4 v2, 0x0

    if-lez p1, :cond_0

    const-string p1, "ApnSettingsPolicyService"

    const-string p2, "deleteAp : apId is invalid"

    .line 186
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 187
    monitor-exit p0

    return v2

    :cond_0
    const/4 p1, -0x1

    .line 190
    :try_start_1
    sget-object v3, Lcom/android/server/enterprise/apn/ApnSettingsPolicy$Carriers;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p2

    .line 191
    iget-object p3, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    const/4 v3, 0x0

    invoke-virtual {p3, p2, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    const-string p2, "ApnSettingsPolicyService"

    .line 192
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteAp : deleted rowCount from ApTable : "

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 196
    :goto_0
    :try_start_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p2

    .line 194
    :try_start_3
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :goto_1
    if-lez p1, :cond_1

    const/4 v2, 0x1

    .line 198
    :cond_1
    monitor-exit p0

    return v2

    .line 196
    :goto_2
    :try_start_4
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 197
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final enforceOwnerOnlyAndApnPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .locals 2

    .line 133
    invoke-virtual {p0}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.samsung.android.knox.permission.KNOX_APN"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 134
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 133
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p0

    return-object p0
.end method

.method public getApnList(Lcom/samsung/android/knox/ContextInfo;I)Ljava/util/List;
    .locals 3

    .line 488
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->enforceOwnerOnlyAndApnPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 490
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 493
    iget-object v0, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mPendingGetApnList:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 494
    iget-object v0, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mPendingGetApnList:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 496
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->retrieveApnListFromDatabase()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 499
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    sget v1, Lcom/samsung/android/knox/net/apn/ApnSettingsPolicy;->MAXIMUM_APNS_OVER_IPC:I

    const/4 v2, 0x0

    if-lt v0, v1, :cond_1

    .line 500
    iget-object p0, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mPendingGetApnList:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    sget v0, Lcom/samsung/android/knox/net/apn/ApnSettingsPolicy;->MAXIMUM_APNS_OVER_IPC:I

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p1, v0, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    sget p0, Lcom/samsung/android/knox/net/apn/ApnSettingsPolicy;->MAXIMUM_APNS_OVER_IPC:I

    invoke-interface {p1, v2, p0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    goto :goto_1

    .line 505
    :cond_1
    iget-object p0, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mPendingGetApnList:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 506
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    invoke-interface {p1, v2, p0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public final getApnListUri(I)Landroid/net/Uri;
    .locals 3

    const-string v0, "getApnListUri"

    const-string v1, "ApnSettingsPolicyService"

    .line 594
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 598
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    if-eqz v2, :cond_3

    .line 599
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    .line 605
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v1

    if-eqz v1, :cond_1

    .line 606
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object p1

    const/4 v1, 0x0

    aget p1, p1, v1

    goto :goto_0

    :cond_1
    move p1, v0

    .line 612
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 615
    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    .line 617
    :cond_2
    sget-object p0, Landroid/provider/Telephony$Carriers;->SIM_APN_URI:Landroid/net/Uri;

    .line 618
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 617
    invoke-static {p0, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    goto :goto_2

    :cond_3
    :goto_1
    const-string p0, "No SIM "

    .line 600
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    sget-object p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy$Carriers;->CONTENT_URI:Landroid/net/Uri;

    :goto_2
    return-object p0
.end method

.method public getApnSettings(Lcom/samsung/android/knox/ContextInfo;J)Lcom/samsung/android/knox/net/apn/ApnSettings;
    .locals 9

    .line 713
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->enforceOwnerOnlyAndApnPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    const-wide/16 v0, 0x1

    cmp-long p1, v0, p2

    const/4 v0, 0x0

    if-lez p1, :cond_0

    const-string p0, "ApnSettingsPolicyService"

    const-string p1, "getApnSettings : apId is invalid"

    .line 720
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 723
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 725
    :try_start_0
    sget-object p1, Lcom/android/server/enterprise/apn/ApnSettingsPolicy$Carriers;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p1, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 726
    iget-object p1, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_6

    .line 727
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 728
    new-instance p2, Lcom/samsung/android/knox/net/apn/ApnSettings;

    invoke-direct {p2}, Lcom/samsung/android/knox/net/apn/ApnSettings;-><init>()V

    const-string p3, "_id"

    .line 729
    invoke-virtual {p0, p3, p1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 730
    invoke-virtual {p2, v3, v4}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setId(J)V

    const-string/jumbo p3, "name"

    .line 731
    invoke-virtual {p0, p3, p1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setName(Ljava/lang/String;)V

    const-string/jumbo p3, "mcc"

    .line 732
    invoke-virtual {p0, p3, p1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setMcc(Ljava/lang/String;)V

    const-string/jumbo p3, "mnc"

    .line 733
    invoke-virtual {p0, p3, p1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setMnc(Ljava/lang/String;)V

    const-string p3, "apn"

    .line 734
    invoke-virtual {p0, p3, p1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setApn(Ljava/lang/String;)V

    const-string/jumbo p3, "user"

    .line 735
    invoke-virtual {p0, p3, p1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setUser(Ljava/lang/String;)V

    const-string/jumbo p3, "server"

    .line 736
    invoke-virtual {p0, p3, p1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setServer(Ljava/lang/String;)V

    const-string/jumbo p3, "password"

    .line 737
    invoke-virtual {p0, p3, p1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setPassword(Ljava/lang/String;)V

    const-string/jumbo p3, "proxy"

    .line 738
    invoke-virtual {p0, p3, p1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setProxy(Ljava/lang/String;)V

    const-string/jumbo p3, "port"

    .line 739
    invoke-virtual {p0, p3, p1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object p3

    .line 740
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 741
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    .line 742
    invoke-virtual {p2, p3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setPort(I)V

    :cond_1
    const-string/jumbo p3, "mmsproxy"

    .line 744
    invoke-virtual {p0, p3, p1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setMmsProxy(Ljava/lang/String;)V

    const-string/jumbo p3, "mmsport"

    .line 745
    invoke-virtual {p0, p3, p1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setMmsPort(Ljava/lang/String;)V

    const-string/jumbo p3, "mmsc"

    .line 746
    invoke-virtual {p0, p3, p1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setMmsc(Ljava/lang/String;)V

    const-string p3, "authtype"

    .line 747
    invoke-virtual {p0, p3, p1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object p3

    .line 748
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 749
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    .line 750
    invoke-virtual {p2, p3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setAuthType(I)V

    :cond_2
    const-string/jumbo p3, "type"

    .line 752
    invoke-virtual {p0, p3, p1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setType(Ljava/lang/String;)V

    .line 753
    iget p3, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mMDMConfigVersion:I

    const/16 v3, 0x11

    if-lt p3, v3, :cond_3

    const-string/jumbo p3, "protocol"

    .line 756
    invoke-virtual {p0, p3, p1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p2, Lcom/samsung/android/knox/net/apn/ApnSettings;->protocol:Ljava/lang/String;

    const-string/jumbo p3, "roaming_protocol"

    .line 757
    invoke-virtual {p0, p3, p1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p2, Lcom/samsung/android/knox/net/apn/ApnSettings;->roamingProtocol:Ljava/lang/String;

    :cond_3
    const-string/jumbo p3, "mvno_type"

    .line 759
    invoke-virtual {p0, p3, p1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object p3

    .line 760
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    .line 761
    iput-object p3, p2, Lcom/samsung/android/knox/net/apn/ApnSettings;->mvno_type:Ljava/lang/String;

    :cond_4
    const-string/jumbo p3, "mvno_match_data"

    .line 763
    invoke-virtual {p0, p3, p1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object p0

    .line 764
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_5

    .line 765
    iput-object p0, p2, Lcom/samsung/android/knox/net/apn/ApnSettings;->mvno_value:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 773
    :cond_5
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 775
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p2

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_6
    if-eqz p1, :cond_7

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p0

    move-object p1, v0

    .line 770
    :goto_0
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz p1, :cond_7

    .line 773
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 775
    :cond_7
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v0

    :catchall_1
    move-exception p0

    move-object v0, p1

    :goto_2
    if-eqz v0, :cond_8

    .line 773
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 775
    :cond_8
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 776
    throw p0
.end method

.method public final getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;
    .locals 0

    const-string p0, ""

    .line 818
    :try_start_0
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p2, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p0, p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 823
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-object p0
.end method

.method public final getDeviceSimSlotCnt()I
    .locals 2

    .line 668
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result p0

    .line 669
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "simSlotCnt : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ApnSettingsPolicyService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public final getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 118
    :cond_0
    iget-object p0, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    return-object p0
.end method

.method public final getFirstSlotIndex()I
    .locals 7

    const-string/jumbo v0, "ril.ICC_TYPE0"

    const/4 v1, 0x0

    const-string v2, "0"

    .line 675
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "ril.ICC_TYPE1"

    const/4 v4, 0x1

    .line 676
    invoke-virtual {p0, v3, v4, v2}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 678
    iget-object v5, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "phone1_on"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v4, :cond_0

    move v5, v4

    goto :goto_0

    :cond_0
    move v5, v1

    .line 680
    :goto_0
    iget-object p0, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v6, "phone2_on"

    invoke-static {p0, v6, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v4, :cond_1

    move p0, v4

    goto :goto_1

    :cond_1
    move p0, v1

    :goto_1
    if-eqz v5, :cond_2

    .line 684
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    if-eqz p0, :cond_3

    .line 686
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    move v1, v4

    goto :goto_2

    :cond_3
    const/4 v1, -0x1

    .line 690
    :goto_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getFirstSlotIndex : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ApnSettingsPolicyService"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public declared-synchronized getPreferredApn(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/net/apn/ApnSettings;
    .locals 10

    monitor-enter p0

    .line 783
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->enforceOwnerOnlyAndApnPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    const-string v0, "ApnSettingsPolicyService"

    const-string v1, "getPreferredApn():"

    .line 787
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v2, 0x0

    .line 791
    :try_start_1
    iget-object v3, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/android/server/enterprise/apn/ApnSettingsPolicy$Carriers;->PREFERAPN_URI:Landroid/net/Uri;

    const/4 v3, 0x3

    new-array v6, v3, [Ljava/lang/String;

    const-string v3, "_id"

    const/4 v7, 0x0

    aput-object v3, v6, v7

    const-string/jumbo v3, "name"

    const/4 v7, 0x1

    aput-object v3, v6, v7

    const-string v3, "apn"

    const/4 v7, 0x2

    aput-object v3, v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string/jumbo v9, "name ASC"

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_0

    .line 795
    :try_start_2
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "_id"

    .line 796
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const-string v6, "ApnSettingsPolicyService"

    .line 797
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getPreferredApn():"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-lez v6, :cond_0

    .line 799
    invoke-virtual {p0, p1, v4, v5}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getApnSettings(Lcom/samsung/android/knox/ContextInfo;J)Lcom/samsung/android/knox/net/apn/ApnSettings;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v2, p1

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    if-eqz v3, :cond_1

    .line 807
    :try_start_3
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 809
    :cond_1
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_1
    move-exception p1

    move-object v3, v2

    :goto_2
    :try_start_4
    const-string v4, "ApnSettingsPolicyService"

    .line 804
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getPreferredApn Ex: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v3, :cond_1

    .line 807
    :try_start_5
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_1

    .line 812
    :goto_3
    monitor-exit p0

    return-object v2

    :catchall_1
    move-exception p1

    move-object v2, v3

    :goto_4
    if-eqz v2, :cond_2

    .line 807
    :try_start_6
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 809
    :cond_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 810
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final getSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;
    .locals 0

    .line 664
    iget-object p0, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object p0

    return-object p0
.end method

.method public final getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string/jumbo p0, "ril.ICC_TYPE0"

    .line 695
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "ril.ICC_TYPE1"

    .line 696
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 698
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    if-eqz v0, :cond_0

    .line 699
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_0

    goto :goto_1

    :cond_0
    move-object v0, p3

    goto :goto_1

    .line 700
    :cond_1
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    if-eqz v2, :cond_2

    .line 701
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_2

    goto :goto_0

    :cond_2
    move-object v2, p3

    :goto_0
    move-object v0, v2

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    .line 704
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 705
    invoke-static {p2, p1, p3}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 707
    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "getTelephonyProperty : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ApnSettingsPolicyService"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public final getWhereClause(I)Ljava/lang/String;
    .locals 7

    const-string p1, "ApnSettingsPolicyService"

    const-string v0, "getWhereClause"

    .line 625
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "NOT (type=\'ia\' AND (apn=\"\" OR apn IS NULL))"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 630
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    .line 631
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSlotIndex(I)I

    move-result v0

    const-string/jumbo v1, "ril.ICC_TYPE0"

    const/4 v2, 0x0

    const-string v3, "0"

    .line 632
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 633
    iget-object v4, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "phone1_on"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v6, :cond_0

    move v4, v6

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    if-eqz v4, :cond_1

    .line 638
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v6

    goto :goto_1

    :cond_1
    move v1, v2

    .line 641
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getDeviceSimSlotCnt()I

    move-result v4

    if-le v4, v6, :cond_5

    const-string/jumbo v4, "ril.ICC_TYPE1"

    .line 642
    invoke-virtual {p0, v4, v6, v3}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 643
    iget-object p0, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v5, "phone2_on"

    invoke-static {p0, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v6, :cond_2

    move p0, v6

    goto :goto_2

    :cond_2
    move p0, v2

    :goto_2
    if-eqz p0, :cond_3

    .line 646
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    move v2, v6

    :cond_3
    if-eqz v1, :cond_4

    if-nez v0, :cond_4

    const-string p0, " AND current = 1 "

    .line 650
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_4
    if-eqz v2, :cond_6

    if-ne v0, v6, :cond_6

    const-string p0, " AND current1 = 1 "

    .line 652
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_5
    if-eqz v1, :cond_6

    if-nez v0, :cond_6

    const-string p0, " AND current = 1"

    .line 656
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 660
    :cond_6
    :goto_3
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final isValidApnId(J)Z
    .locals 11

    const-wide/16 v0, 0x0

    cmp-long v0, v0, p1

    const-string v1, "ApnSettingsPolicyService"

    const/4 v2, 0x0

    if-gez v0, :cond_6

    const-string/jumbo v0, "numeric"

    const-string/jumbo v3, "type"

    const-string v4, "_id"

    .line 432
    filled-new-array {v4, v0, v3}, [Ljava/lang/String;

    move-result-object v7

    const/4 v0, 0x0

    .line 437
    :try_start_0
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v3

    .line 438
    iget-object v4, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "phone"

    .line 439
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 440
    invoke-virtual {v4, v3}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v4

    .line 443
    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v3

    const-string/jumbo v5, "ril.simoperator"

    const-string v6, "ETC"

    .line 444
    invoke-static {v3, v5, v6}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 446
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isValidApnId: simOp = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", numeric = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "CTC"

    .line 447
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v4, "gsm.sim.cdmaoperator.numeric"

    const-string v5, ""

    .line 448
    invoke-static {v3, v4, v5}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 450
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "46003"

    goto :goto_0

    :cond_0
    move-object v4, v3

    .line 451
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isValidApnId: CTC card! numeric = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", cdmaOperator = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    :cond_1
    sget-object v3, Lcom/android/server/enterprise/apn/ApnSettingsPolicy$Carriers;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .line 455
    iget-object p0, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 457
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isValidApnId() row count : "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " for apId : "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_2
    move p0, v2

    :goto_1
    if-eqz p0, :cond_3

    const/4 p1, 0x1

    .line 462
    :try_start_1
    invoke-interface {v0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x2

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 463
    invoke-interface {v0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string v1, "dun"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "mms"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_3

    goto :goto_2

    :catch_0
    move-exception p1

    move v2, p0

    move-object p0, p1

    goto :goto_4

    :cond_3
    move v2, p0

    :cond_4
    :goto_2
    if-eqz v0, :cond_7

    .line 475
    :goto_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_6

    :catchall_0
    move-exception p0

    goto :goto_5

    :catch_1
    move-exception p0

    .line 472
    :goto_4
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_7

    goto :goto_3

    :goto_5
    if-eqz v0, :cond_5

    .line 475
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 477
    :cond_5
    throw p0

    .line 479
    :cond_6
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isValidApnId() : invalid apId : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_6
    return v2
.end method

.method public notifyToAddSystemService(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onAdminAdded(I)V
    .locals 0

    .line 0
    return-void
.end method

.method public onAdminRemoved(I)V
    .locals 0

    .line 0
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .locals 0

    .line 0
    return-void
.end method

.method public final retrieveApnListFromDatabase()Ljava/util/List;
    .locals 33

    move-object/from16 v0, p0

    const-string/jumbo v1, "mvno_match_data"

    const-string/jumbo v2, "mvno_type"

    const-string/jumbo v3, "roaming_protocol"

    const-string/jumbo v4, "protocol"

    const-string/jumbo v5, "type"

    const-string v6, "authtype"

    const-string/jumbo v7, "mmsc"

    const-string/jumbo v8, "mmsport"

    const-string/jumbo v9, "mmsproxy"

    const-string/jumbo v10, "port"

    const-string/jumbo v11, "proxy"

    const-string/jumbo v12, "password"

    const-string/jumbo v13, "server"

    const-string/jumbo v14, "user"

    const-string v15, "apn"

    const-string/jumbo v0, "mnc"

    move-object/from16 v16, v1

    const-string/jumbo v1, "mcc"

    move-object/from16 v17, v2

    const-string/jumbo v2, "name"

    move-object/from16 v18, v3

    const-string v3, "_id"

    move-object/from16 v19, v4

    const-string v4, "ApnSettingsPolicyService"

    move-object/from16 v20, v5

    const-string/jumbo v5, "retrieveApnListFromDatabase"

    .line 513
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 517
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v21

    const/16 v5, 0x13

    const/16 v23, 0x0

    :try_start_0
    new-array v5, v5, [Ljava/lang/String;

    const/16 v24, 0x0

    aput-object v3, v5, v24

    const/16 v24, 0x1

    aput-object v2, v5, v24

    const/16 v24, 0x2

    aput-object v1, v5, v24

    const/16 v24, 0x3

    aput-object v0, v5, v24

    const/16 v24, 0x4

    aput-object v15, v5, v24

    const/16 v24, 0x5

    aput-object v14, v5, v24

    const/16 v24, 0x6

    aput-object v13, v5, v24

    const/16 v24, 0x7

    aput-object v12, v5, v24

    const/16 v24, 0x8

    aput-object v11, v5, v24

    const/16 v24, 0x9

    aput-object v10, v5, v24

    const/16 v24, 0xa

    aput-object v9, v5, v24

    const/16 v24, 0xb

    aput-object v8, v5, v24

    const/16 v24, 0xc

    aput-object v7, v5, v24

    const/16 v24, 0xd

    aput-object v6, v5, v24

    const/16 v24, 0xe

    aput-object v20, v5, v24

    const/16 v24, 0xf

    aput-object v19, v5, v24

    const/16 v24, 0x10

    aput-object v18, v5, v24

    move-object/from16 v30, v4

    const/16 v4, 0x11

    aput-object v17, v5, v4

    const/16 v24, 0x12

    aput-object v16, v5, v24

    .line 529
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getFirstSlotIndex()I

    move-result v4

    move-object/from16 v31, v6

    move-object/from16 v6, p0

    .line 530
    invoke-virtual {v6, v4}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getApnListUri(I)Landroid/net/Uri;

    move-result-object v25

    move-object/from16 v32, v7

    .line 532
    iget-object v7, v6, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v24

    .line 533
    invoke-virtual {v6, v4}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getWhereClause(I)Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v26, v5

    .line 532
    invoke-virtual/range {v24 .. v29}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v4, :cond_6

    .line 536
    :try_start_1
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 538
    :goto_0
    new-instance v5, Lcom/samsung/android/knox/net/apn/ApnSettings;

    invoke-direct {v5}, Lcom/samsung/android/knox/net/apn/ApnSettings;-><init>()V

    .line 539
    invoke-virtual {v6, v3, v4}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v24, v8

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 540
    invoke-virtual {v5, v7, v8}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setId(J)V

    .line 541
    invoke-virtual {v6, v2, v4}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setName(Ljava/lang/String;)V

    .line 542
    invoke-virtual {v6, v1, v4}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setMcc(Ljava/lang/String;)V

    .line 543
    invoke-virtual {v6, v0, v4}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setMnc(Ljava/lang/String;)V

    .line 544
    invoke-virtual {v6, v15, v4}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setApn(Ljava/lang/String;)V

    .line 545
    invoke-virtual {v6, v14, v4}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setUser(Ljava/lang/String;)V

    .line 546
    invoke-virtual {v6, v13, v4}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setServer(Ljava/lang/String;)V

    .line 547
    invoke-virtual {v6, v12, v4}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setPassword(Ljava/lang/String;)V

    .line 548
    invoke-virtual {v6, v11, v4}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setProxy(Ljava/lang/String;)V

    .line 549
    invoke-virtual {v6, v10, v4}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v7

    .line 550
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    .line 551
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 552
    invoke-virtual {v5, v7}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setPort(I)V

    .line 554
    :cond_0
    invoke-virtual {v6, v9, v4}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setMmsProxy(Ljava/lang/String;)V

    move-object/from16 v7, v24

    .line 555
    invoke-virtual {v6, v7, v4}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setMmsPort(Ljava/lang/String;)V

    move-object/from16 v24, v0

    move-object/from16 v8, v32

    .line 556
    invoke-virtual {v6, v8, v4}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setMmsc(Ljava/lang/String;)V

    move-object/from16 v0, v31

    .line 557
    invoke-virtual {v6, v0, v4}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v23

    .line 558
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->isEmpty()Z

    move-result v25

    if-nez v25, :cond_1

    move-object/from16 v31, v0

    .line 559
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 560
    invoke-virtual {v5, v0}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setAuthType(I)V

    goto :goto_1

    :cond_1
    move-object/from16 v31, v0

    :goto_1
    move-object/from16 v0, v20

    move-object/from16 v20, v1

    .line 562
    invoke-virtual {v6, v0, v4}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setType(Ljava/lang/String;)V

    .line 563
    iget v1, v6, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mMDMConfigVersion:I

    move-object/from16 v23, v0

    const/16 v0, 0x11

    if-lt v1, v0, :cond_2

    move-object/from16 v1, v19

    .line 566
    invoke-virtual {v6, v1, v4}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/samsung/android/knox/net/apn/ApnSettings;->protocol:Ljava/lang/String;

    move-object/from16 v19, v1

    move-object/from16 v0, v18

    .line 567
    invoke-virtual {v6, v0, v4}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v5, Lcom/samsung/android/knox/net/apn/ApnSettings;->roamingProtocol:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object/from16 v0, v18

    :goto_2
    move-object/from16 v18, v0

    move-object/from16 v1, v17

    .line 570
    invoke-virtual {v6, v1, v4}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    .line 571
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_3

    .line 572
    iput-object v0, v5, Lcom/samsung/android/knox/net/apn/ApnSettings;->mvno_type:Ljava/lang/String;

    :cond_3
    move-object/from16 v17, v1

    move-object/from16 v0, v16

    .line 574
    invoke-virtual {v6, v0, v4}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    .line 575
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v16

    if-nez v16, :cond_4

    .line 576
    iput-object v1, v5, Lcom/samsung/android/knox/net/apn/ApnSettings;->mvno_value:Ljava/lang/String;

    :cond_4
    move-object/from16 v1, v30

    .line 578
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 580
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v5, :cond_5

    goto :goto_3

    :cond_5
    move-object/from16 v16, v0

    move-object/from16 v30, v1

    move-object/from16 v32, v8

    move-object/from16 v1, v20

    move-object/from16 v20, v23

    move-object/from16 v0, v24

    move-object v8, v7

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    move-object/from16 v23, v4

    goto :goto_4

    :cond_6
    move-object/from16 v1, v30

    :goto_3
    if-eqz v4, :cond_7

    .line 585
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 587
    :cond_7
    invoke-static/range {v21 .. v22}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v1

    :catchall_1
    move-exception v0

    :goto_4
    if-eqz v23, :cond_8

    .line 585
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V

    .line 587
    :cond_8
    invoke-static/range {v21 .. v22}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 588
    throw v0
.end method

.method public final setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_1

    if-nez p4, :cond_0

    const-string p0, ""

    goto :goto_0

    .line 838
    :cond_0
    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-virtual {p2, p3, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    if-eqz p4, :cond_2

    .line 842
    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p3, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 845
    :cond_2
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "setColumnValue: key="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " value="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ApnSettingsPolicyService"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public declared-synchronized setPreferredApn(Lcom/samsung/android/knox/ContextInfo;J)Z
    .locals 5

    monitor-enter p0

    .line 149
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->enforceOwnerOnlyAndApnPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 151
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-wide/16 v2, 0x0

    cmp-long p1, v2, p2

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    if-lez p1, :cond_0

    :try_start_1
    const-string p1, "ApnSettingsPolicyService"

    .line 154
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setPreferedAp() : invalid ap Id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 156
    :cond_0
    invoke-virtual {p0, p2, p3}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->isValidApnId(J)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 157
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "apn_id"

    if-nez p1, :cond_1

    const-wide/16 p2, -0x1

    .line 158
    :cond_1
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v3, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 159
    iget-object p1, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object p2, Lcom/android/server/enterprise/apn/ApnSettingsPolicy$Carriers;->PREFERAPN_URI:Landroid/net/Uri;

    const/4 p3, 0x0

    invoke-virtual {p1, p2, v3, p3, p3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_2

    const/4 p2, 0x1

    move v2, p2

    :cond_2
    const-string p2, "ApnSettingsPolicyService"

    .line 162
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setPreferedAp() row count : "

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 168
    :cond_3
    :goto_0
    :try_start_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 166
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 170
    :goto_1
    monitor-exit p0

    return v2

    .line 168
    :goto_2
    :try_start_4
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 169
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public systemReady()V
    .locals 0

    .line 0
    return-void
.end method

.method public final validateMVNOType(Ljava/lang/String;)Z
    .locals 3

    const/4 p0, 0x0

    if-eqz p1, :cond_4

    .line 927
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "imsi"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_1
    const-string/jumbo v0, "spn"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_2
    const-string v0, "gid"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    move v2, v1

    goto :goto_0

    :sswitch_3
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    move v2, p0

    :goto_0
    packed-switch v2, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return v1

    :cond_4
    :goto_1
    return p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_3
        0x18fc2 -> :sswitch_2
        0x1bdb1 -> :sswitch_1
        0x31627a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final validateProtocol(Ljava/lang/String;)Z
    .locals 3

    .line 913
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    return v0

    .line 916
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p0

    const/4 v1, 0x1

    const/4 v2, -0x1

    sparse-switch p0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string p0, "IPV6"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_1
    const-string p0, "IP"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    move v2, v1

    goto :goto_0

    :sswitch_2
    const-string p0, "IPV4V6"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    move v2, v0

    :goto_0
    packed-switch v2, :pswitch_data_0

    return v0

    :pswitch_0
    return v1

    :sswitch_data_0
    .sparse-switch
        -0x7edefc9b -> :sswitch_2
        0x927 -> :sswitch_1
        0x226607 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final validateString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    goto :goto_0

    .line 850
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method
