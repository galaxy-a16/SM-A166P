.class public Lcom/android/server/enterprise/security/DeviceAccountPolicy;
.super Lcom/samsung/android/knox/accounts/IDeviceAccountPolicy$Stub;
.source "DeviceAccountPolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# static fields
.field public static mSupportedAccountTypes:[Ljava/lang/String;


# instance fields
.field public mAuditLogService:Lcom/android/server/enterprise/auditlog/AuditLogService;

.field public mContext:Landroid/content/Context;

.field public mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field public mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    const-string v0, "com.samsung.android.email"

    const-string v1, "com.samsung.android.exchange"

    const-string v2, "com.samsung.android.ldap"

    const-string v3, "com.osp.app.signin"

    const-string v4, "com.google"

    const-string v5, "com.google.android.gm.legacyimap"

    const-string v6, "com.google.android.gm.pop3"

    const-string v7, "com.google.android.gm.exchange"

    const-string v8, "com.google.work"

    const-string v9, "com.facebook.auth.login"

    .line 94
    filled-new-array/range {v0 .. v9}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->mSupportedAccountTypes:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 118
    invoke-direct {p0}, Lcom/samsung/android/knox/accounts/IDeviceAccountPolicy$Stub;-><init>()V

    const/4 v0, 0x0

    .line 101
    iput-object v0, p0, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 102
    iput-object v0, p0, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->mAuditLogService:Lcom/android/server/enterprise/auditlog/AuditLogService;

    .line 119
    iput-object p1, p0, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->mContext:Landroid/content/Context;

    .line 120
    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-direct {v0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    return-void
.end method


# virtual methods
.method public addAccountsToAdditionBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/util/List;)Z
    .locals 1

    const-string v0, "ADDITION_BLACKLIST"

    .line 519
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->addAccountsToBWLInternal(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public addAccountsToAdditionWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/util/List;)Z
    .locals 1

    const-string v0, "ADDITION_WHITELIST"

    .line 537
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->addAccountsToBWLInternal(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final addAccountsToBWLInternal(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Z
    .locals 21

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    .line 149
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v11

    .line 151
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->getSupportedAccountTypes()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    const-string v12, "DeviceAccountPolicy"

    const/4 v13, 0x0

    if-eqz v2, :cond_7

    if-nez p3, :cond_0

    goto/16 :goto_5

    .line 157
    :cond_0
    invoke-static {v11}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v14

    .line 158
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v15

    .line 161
    :try_start_0
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    const/16 v18, 0x1

    move/from16 v2, v18

    :goto_0
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 164
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "adminUid"

    .line 165
    iget v6, v11, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v5, "type"

    .line 166
    invoke-virtual {v4, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "name"

    .line 167
    invoke-virtual {v4, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "listType"

    .line 168
    invoke-virtual {v4, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v10, p0

    .line 169
    iget-object v5, v10, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "AccountBlackWhiteList"

    invoke-virtual {v5, v6, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v4

    if-eqz v2, :cond_1

    if-eqz v4, :cond_1

    move/from16 v19, v18

    goto :goto_1

    :cond_1
    move/from16 v19, v13

    :goto_1
    if-eqz v4, :cond_5

    const-string v2, "ADDITION_BLACKLIST"

    .line 175
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x2

    if-eqz v2, :cond_2

    .line 176
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->getAuditLogService()Lcom/android/server/enterprise/auditlog/AuditLogService;

    move-result-object v2

    const/4 v5, 0x5

    .line 177
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v8

    const-string v9, "DeviceAccountPolicy"

    const-string v7, "Admin %d has added account %s to the addition blacklist."

    new-array v4, v4, [Ljava/lang/Object;

    iget v6, v11, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 179
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v13

    aput-object v3, v4, v18

    .line 178
    invoke-static {v7, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object v3, v11

    move v4, v5

    const/4 v5, 0x1

    const/4 v6, 0x1

    move v7, v8

    move-object v8, v9

    move-object/from16 v9, v20

    move v10, v14

    .line 176
    invoke-virtual/range {v2 .. v10}, Lcom/android/server/enterprise/auditlog/AuditLogService;->AuditLoggerAsUser(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_2

    :cond_2
    const-string v2, "ADDITION_WHITELIST"

    .line 181
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 182
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->getAuditLogService()Lcom/android/server/enterprise/auditlog/AuditLogService;

    move-result-object v2

    const/4 v5, 0x5

    const/4 v6, 0x1

    .line 183
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v8

    const-string v9, "DeviceAccountPolicy"

    const-string v10, "Admin %d has added account %s to the addition whitelist."

    new-array v4, v4, [Ljava/lang/Object;

    iget v7, v11, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 185
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v13

    aput-object v3, v4, v18

    .line 184
    invoke-static {v10, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    move-object v3, v11

    move v4, v5

    move v5, v6

    const/4 v6, 0x1

    move v7, v8

    move-object v8, v9

    move-object v9, v10

    move v10, v14

    .line 182
    invoke-virtual/range {v2 .. v10}, Lcom/android/server/enterprise/auditlog/AuditLogService;->AuditLoggerAsUser(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_2

    :cond_3
    const-string v2, "REMOVAL_BLACKLIST"

    .line 187
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 188
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->getAuditLogService()Lcom/android/server/enterprise/auditlog/AuditLogService;

    move-result-object v2

    const/4 v5, 0x5

    const/4 v6, 0x1

    .line 189
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v8

    const-string v9, "DeviceAccountPolicy"

    const-string v10, "Admin %d has added account %s to the removal blacklist."

    new-array v4, v4, [Ljava/lang/Object;

    iget v7, v11, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 191
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v13

    aput-object v3, v4, v18

    .line 190
    invoke-static {v10, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    move-object v3, v11

    move v4, v5

    move v5, v6

    const/4 v6, 0x1

    move v7, v8

    move-object v8, v9

    move-object v9, v10

    move v10, v14

    .line 188
    invoke-virtual/range {v2 .. v10}, Lcom/android/server/enterprise/auditlog/AuditLogService;->AuditLoggerAsUser(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_2

    :cond_4
    const-string v2, "REMOVAL_WHITELIST"

    .line 193
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 194
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->getAuditLogService()Lcom/android/server/enterprise/auditlog/AuditLogService;

    move-result-object v2

    const/4 v5, 0x5

    const/4 v6, 0x1

    .line 195
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v8

    const-string v9, "DeviceAccountPolicy"

    const-string v10, "Admin %d has added account %s to the removal whitelist."

    new-array v4, v4, [Ljava/lang/Object;

    iget v7, v11, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 197
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v13

    aput-object v3, v4, v18

    .line 196
    invoke-static {v10, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    move-object v3, v11

    move v4, v5

    move v5, v6

    const/4 v6, 0x1

    move v7, v8

    move-object v8, v9

    move-object v9, v10

    move v10, v14

    .line 194
    invoke-virtual/range {v2 .. v10}, Lcom/android/server/enterprise/auditlog/AuditLogService;->AuditLoggerAsUser(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    :goto_2
    move/from16 v2, v19

    goto/16 :goto_0

    .line 206
    :cond_6
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v13, v2

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "Handled Exception in addAccountsToBWLInternal()"

    .line 203
    invoke-static {v12, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 206
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_3
    return v13

    :goto_4
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 207
    throw v0

    :cond_7
    :goto_5
    const-string v0, "addAccountsToBWLInternal() : invalid parameter."

    .line 152
    invoke-static {v12, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v13
.end method

.method public addAccountsToRemovalBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/util/List;)Z
    .locals 1

    const-string v0, "REMOVAL_BLACKLIST"

    .line 444
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->addAccountsToBWLInternal(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public addAccountsToRemovalWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/util/List;)Z
    .locals 1

    const-string v0, "REMOVAL_WHITELIST"

    .line 461
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->addAccountsToBWLInternal(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final checkAccountMatch(Ljava/util/Iterator;Ljava/lang/String;)Z
    .locals 4

    const-string p0, " ,target ="

    const-string v0, "DeviceAccountPolicy"

    .line 130
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 131
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 133
    :try_start_0
    invoke-virtual {p2, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 134
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkAccountMatch() : matched. match = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    .line 138
    :catch_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkAccountMatch() : invalid matched. match = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public clearAccountsFromAdditionBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .locals 1

    const-string v0, "ADDITION_BLACKLIST"

    .line 532
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->clearAccountsFromBWLInternal(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public clearAccountsFromAdditionWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .locals 1

    const-string v0, "ADDITION_WHITELIST"

    .line 550
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->clearAccountsFromBWLInternal(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final clearAccountsFromBWLInternal(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    const-string v3, "AccountBlackWhiteList"

    const-string v4, "DeviceAccountPolicy"

    .line 312
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v6

    .line 313
    iget v5, v6, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v7, "adminUid"

    const-string/jumbo v8, "type"

    const-string v9, "listType"

    .line 316
    filled-new-array {v7, v8, v9}, [Ljava/lang/String;

    move-result-object v10

    .line 322
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    filled-new-array {v11, v1, v2}, [Ljava/lang/String;

    move-result-object v11

    .line 325
    invoke-static {v6}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v13

    .line 326
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    const/16 v16, 0x0

    .line 328
    :try_start_0
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 329
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v12, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 330
    invoke-virtual {v12, v8, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    invoke-virtual {v12, v9, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    iget-object v1, v0, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v1, v3, v10, v12}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v1

    const/4 v5, 0x1

    if-eqz v1, :cond_5

    .line 336
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_1

    .line 341
    :cond_0
    iget-object v1, v0, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v1, v3, v10, v11}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v3, "ADDITION_BLACKLIST"

    .line 345
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 346
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->getAuditLogService()Lcom/android/server/enterprise/auditlog/AuditLogService;

    move-result-object v0

    const/4 v7, 0x5

    const/4 v8, 0x1

    const/4 v9, 0x1

    .line 347
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v10

    const-string v11, "DeviceAccountPolicy"

    const-string v2, "Admin %d has removed all accounts from addition blacklist."

    new-array v3, v5, [Ljava/lang/Object;

    iget v5, v6, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 349
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v16

    .line 348
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    move-object v5, v0

    .line 346
    invoke-virtual/range {v5 .. v13}, Lcom/android/server/enterprise/auditlog/AuditLogService;->AuditLoggerAsUser(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_1
    const-string v3, "ADDITION_WHITELIST"

    .line 351
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 352
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->getAuditLogService()Lcom/android/server/enterprise/auditlog/AuditLogService;

    move-result-object v0

    const/4 v7, 0x5

    const/4 v8, 0x1

    const/4 v9, 0x1

    .line 353
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v10

    const-string v11, "DeviceAccountPolicy"

    const-string v2, "Admin %d has removed all accounts from addition whitelist."

    new-array v3, v5, [Ljava/lang/Object;

    iget v5, v6, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 355
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v16

    .line 354
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    move-object v5, v0

    .line 352
    invoke-virtual/range {v5 .. v13}, Lcom/android/server/enterprise/auditlog/AuditLogService;->AuditLoggerAsUser(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    const-string v3, "REMOVAL_BLACKLIST"

    .line 357
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 358
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->getAuditLogService()Lcom/android/server/enterprise/auditlog/AuditLogService;

    move-result-object v0

    const/4 v7, 0x5

    const/4 v8, 0x1

    const/4 v9, 0x1

    .line 359
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v10

    const-string v11, "DeviceAccountPolicy"

    const-string v2, "Admin %d has removed all accounts from removal blacklist."

    new-array v3, v5, [Ljava/lang/Object;

    iget v5, v6, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 361
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v16

    .line 360
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    move-object v5, v0

    .line 358
    invoke-virtual/range {v5 .. v13}, Lcom/android/server/enterprise/auditlog/AuditLogService;->AuditLoggerAsUser(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :cond_3
    const-string v3, "REMOVAL_WHITELIST"

    .line 363
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 364
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->getAuditLogService()Lcom/android/server/enterprise/auditlog/AuditLogService;

    move-result-object v0

    const/4 v7, 0x5

    const/4 v8, 0x1

    const/4 v9, 0x1

    .line 365
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v10

    const-string v11, "DeviceAccountPolicy"

    const-string v2, "Admin %d has removed all accounts from removal whitelist."

    new-array v3, v5, [Ljava/lang/Object;

    iget v5, v6, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 367
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v16

    .line 366
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    move-object v5, v0

    .line 364
    invoke-virtual/range {v5 .. v13}, Lcom/android/server/enterprise/auditlog/AuditLogService;->AuditLoggerAsUser(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 375
    :cond_4
    :goto_0
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move/from16 v16, v1

    goto :goto_2

    :cond_5
    :goto_1
    :try_start_1
    const-string v0, "clearAccountsFromBWLInternal() : no accounts."

    .line 337
    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 375
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v5

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "Handled Exception in clearAccountsFromBWLInternal()"

    .line 372
    invoke-static {v4, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 375
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_2
    return v16

    :goto_3
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 376
    throw v0
.end method

.method public clearAccountsFromRemovalBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .locals 1

    const-string v0, "REMOVAL_BLACKLIST"

    .line 457
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->clearAccountsFromBWLInternal(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public clearAccountsFromRemovalWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .locals 1

    const-string v0, "REMOVAL_WHITELIST"

    .line 474
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->clearAccountsFromBWLInternal(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .locals 2

    .line 124
    invoke-virtual {p0}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.samsung.android.knox.permission.KNOX_SECURITY"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 125
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 124
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p0

    return-object p0
.end method

.method public getAccountsFromAdditionBlackLists(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/util/List;
    .locals 1

    const-string v0, "ADDITION_BLACKLIST"

    .line 528
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->getAccountsFromBWLInternal(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getAccountsFromAdditionWhiteLists(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/util/List;
    .locals 1

    const-string v0, "ADDITION_WHITELIST"

    .line 546
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->getAccountsFromBWLInternal(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getAccountsFromBWLInternal(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 3

    .line 281
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 283
    invoke-virtual {p0}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->getSupportedAccountTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "DeviceAccountPolicy"

    if-nez v0, :cond_0

    const-string p0, "getAccountsFromBWLInternal() : no support type."

    .line 284
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 289
    :cond_0
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result p1

    .line 290
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->loadAccounts(ILjava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    if-nez p1, :cond_1

    .line 293
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "getAccountsFromBWLInternal() : Account list for "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is null."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 297
    :cond_1
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    .line 298
    new-instance p3, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v0

    invoke-direct {p3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 300
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 301
    new-instance v1, Lcom/samsung/android/knox/accounts/AccountControlInfo;

    invoke-direct {v1}, Lcom/samsung/android/knox/accounts/AccountControlInfo;-><init>()V

    .line 302
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/samsung/android/knox/accounts/AccountControlInfo;->adminPackageName:Ljava/lang/String;

    .line 303
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, v1, Lcom/samsung/android/knox/accounts/AccountControlInfo;->entries:Ljava/util/List;

    .line 304
    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object p3
.end method

.method public getAccountsFromRemovalBlackLists(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/util/List;
    .locals 1

    const-string v0, "REMOVAL_BLACKLIST"

    .line 453
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->getAccountsFromBWLInternal(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getAccountsFromRemovalWhiteLists(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/util/List;
    .locals 1

    const-string v0, "REMOVAL_WHITELIST"

    .line 470
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->getAccountsFromBWLInternal(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getAuditLogService()Lcom/android/server/enterprise/auditlog/AuditLogService;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->mAuditLogService:Lcom/android/server/enterprise/auditlog/AuditLogService;

    if-nez v0, :cond_0

    const-string v0, "auditlog"

    .line 113
    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/auditlog/AuditLogService;

    iput-object v0, p0, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->mAuditLogService:Lcom/android/server/enterprise/auditlog/AuditLogService;

    .line 115
    :cond_0
    iget-object p0, p0, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->mAuditLogService:Lcom/android/server/enterprise/auditlog/AuditLogService;

    return-object p0
.end method

.method public final getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 108
    :cond_0
    iget-object p0, p0, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    return-object p0
.end method

.method public final getPackageNameForUid(I)Ljava/lang/String;
    .locals 0

    .line 589
    iget-object p0, p0, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSupportedAccountTypes()Ljava/util/List;
    .locals 0

    .line 440
    sget-object p0, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->mSupportedAccountTypes:[Ljava/lang/String;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public isAccountAdditionAllowed(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 6

    .line 554
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 555
    invoke-static {v0}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    const-string v1, "ADDITION_BLACKLIST"

    .line 556
    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->loadAccounts(ILjava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "ADDITION_WHITELIST"

    .line 558
    invoke-virtual {p0, v0, p1, v2}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->loadAccounts(ILjava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    const/4 v0, 0x1

    const-string v2, "DeviceAccountPolicy"

    if-nez v1, :cond_0

    const-string p0, "isAccountAdditionAllowed() : no BlackList."

    .line 562
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 566
    :cond_0
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 567
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-eqz p1, :cond_2

    .line 570
    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    invoke-virtual {p0, v5, p2}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->checkAccountMatch(Ljava/util/Iterator;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_0

    .line 575
    :cond_2
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    invoke-virtual {p0, v5, p2}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->checkAccountMatch(Ljava/util/Iterator;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    if-eqz p3, :cond_3

    const p0, 0x104017c

    .line 577
    invoke-static {p0}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 580
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "isAccountAdditionAllowed() : account has blocked. userId = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_4
    return v0
.end method

.method public isAccountRemovalAllowed(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 2

    .line 478
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 479
    invoke-static {v0}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    .line 480
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->isAccountRemovalAllowedAsUser(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result p0

    return p0
.end method

.method public isAccountRemovalAllowedAsUser(Ljava/lang/String;Ljava/lang/String;ZI)Z
    .locals 5

    const-string v0, "REMOVAL_BLACKLIST"

    .line 484
    invoke-virtual {p0, p4, p1, v0}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->loadAccounts(ILjava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "REMOVAL_WHITELIST"

    .line 486
    invoke-virtual {p0, p4, p1, v1}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->loadAccounts(ILjava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    const/4 p4, 0x1

    const-string v1, "DeviceAccountPolicy"

    if-nez v0, :cond_0

    const-string p0, "isAccountRemovalAllowedAsUser() : no BlackList."

    .line 490
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p4

    .line 494
    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 495
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-eqz p1, :cond_2

    .line 498
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    invoke-virtual {p0, v4, p2}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->checkAccountMatch(Ljava/util/Iterator;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v3, "isAccountRemovalAllowedAsUser() : no WhiteList."

    .line 499
    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 504
    :cond_2
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    invoke-virtual {p0, v4, p2}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->checkAccountMatch(Ljava/util/Iterator;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz p3, :cond_3

    const p0, 0x104017d

    .line 506
    invoke-static {p0}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 509
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "isAccountRemovalAllowedAsUser() : account has blocked. userId = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_4
    return p4
.end method

.method public final declared-synchronized loadAccounts(ILjava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 5

    monitor-enter p0

    :try_start_0
    const-string v0, "DeviceAccountPolicy"

    .line 385
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadAccounts() : userId  = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    iget-object v0, p0, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "AccountBlackWhiteList"

    const-string v2, "adminUid"

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getLongListAsUser(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v0

    .line 388
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    const-string p1, "DeviceAccountPolicy"

    const-string p2, "loadAccounts() : admin is null "

    .line 389
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 390
    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    .line 393
    :cond_0
    :try_start_1
    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1, v0}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 396
    new-instance v0, Ljava/util/HashMap;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 398
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 399
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getAdminUidFromLUID(J)I

    move-result v2

    .line 400
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "adminUid"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string/jumbo v2, "name"

    const/4 v4, 0x1

    aput-object v2, v1, v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 410
    :try_start_2
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "containerID"

    .line 411
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v3, "userID"

    .line 412
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo p1, "type"

    .line 413
    invoke-virtual {v2, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "listType"

    .line 414
    invoke-virtual {v2, p1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    iget-object p1, p0, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string p2, "AccountBlackWhiteList"

    invoke-virtual {p1, p2, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object p1

    .line 418
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p2, "DeviceAccountPolicy"

    const-string p3, "loadAccounts() : list empty "

    .line 419
    invoke-static {p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/ContentValues;

    const-string p3, "adminUid"

    .line 423
    invoke-virtual {p2, p3}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p3

    if-eqz p3, :cond_3

    .line 425
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getAdminUidFromLUID(J)I

    move-result p3

    .line 426
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Set;

    const-string/jumbo v1, "name"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    const-string p2, "DeviceAccountPolicy"

    const-string p3, "loadAccounts() : can not get admin. "

    .line 428
    invoke-static {p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_3
    const-string p2, "DeviceAccountPolicy"

    const-string p3, "Handled Exception in loadAccounts()"

    .line 433
    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 436
    :cond_4
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
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

.method public removeAccountsFromAdditionBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/util/List;)Z
    .locals 1

    const-string v0, "ADDITION_BLACKLIST"

    .line 524
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->removeAccountsFromBWLInternal(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public removeAccountsFromAdditionWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/util/List;)Z
    .locals 1

    const-string v0, "ADDITION_WHITELIST"

    .line 542
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->removeAccountsFromBWLInternal(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final removeAccountsFromBWLInternal(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Z
    .locals 22

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    .line 213
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v11

    .line 214
    iget v12, v11, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 216
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->getSupportedAccountTypes()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    const-string v13, "DeviceAccountPolicy"

    const/4 v14, 0x0

    if-eqz v2, :cond_7

    if-nez p3, :cond_0

    goto/16 :goto_5

    .line 222
    :cond_0
    invoke-static {v11}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v15

    .line 223
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 226
    :try_start_0
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    const/16 v19, 0x1

    move/from16 v2, v19

    :goto_0
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x4

    new-array v5, v4, [Ljava/lang/String;

    const-string v6, "adminUid"

    aput-object v6, v5, v14

    const-string/jumbo v6, "type"

    aput-object v6, v5, v19

    const-string/jumbo v6, "name"

    const/4 v7, 0x2

    aput-object v6, v5, v7

    const-string v6, "listType"

    const/4 v8, 0x3

    aput-object v6, v5, v8

    new-array v4, v4, [Ljava/lang/String;

    .line 234
    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v14

    aput-object v0, v4, v19

    aput-object v3, v4, v7

    aput-object v1, v4, v8

    move-object/from16 v10, p0

    .line 236
    iget-object v6, v10, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "AccountBlackWhiteList"

    invoke-virtual {v6, v8, v5, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v2, :cond_1

    if-eqz v4, :cond_1

    move/from16 v20, v19

    goto :goto_1

    :cond_1
    move/from16 v20, v14

    :goto_1
    if-eqz v4, :cond_5

    const-string v2, "ADDITION_BLACKLIST"

    .line 242
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 243
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->getAuditLogService()Lcom/android/server/enterprise/auditlog/AuditLogService;

    move-result-object v2

    const/4 v4, 0x5

    .line 244
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v8

    const-string v9, "DeviceAccountPolicy"

    const-string v6, "Admin %d has removed account %s from addition blacklist."

    new-array v7, v7, [Ljava/lang/Object;

    iget v5, v11, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 246
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v7, v14

    aput-object v3, v7, v19

    .line 245
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    move-object v3, v11

    const/4 v5, 0x1

    const/4 v6, 0x1

    move v7, v8

    move-object v8, v9

    move-object/from16 v9, v21

    move v10, v15

    .line 243
    invoke-virtual/range {v2 .. v10}, Lcom/android/server/enterprise/auditlog/AuditLogService;->AuditLoggerAsUser(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_2

    :cond_2
    const-string v2, "ADDITION_WHITELIST"

    .line 248
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 249
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->getAuditLogService()Lcom/android/server/enterprise/auditlog/AuditLogService;

    move-result-object v2

    const/4 v4, 0x5

    const/4 v5, 0x1

    .line 250
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v8

    const-string v9, "DeviceAccountPolicy"

    const-string v10, "Admin %d has removed account %s from addition whitelist."

    new-array v7, v7, [Ljava/lang/Object;

    iget v6, v11, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 252
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v7, v14

    aput-object v3, v7, v19

    .line 251
    invoke-static {v10, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    move-object v3, v11

    const/4 v6, 0x1

    move v7, v8

    move-object v8, v9

    move-object v9, v10

    move v10, v15

    .line 249
    invoke-virtual/range {v2 .. v10}, Lcom/android/server/enterprise/auditlog/AuditLogService;->AuditLoggerAsUser(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_2

    :cond_3
    const-string v2, "REMOVAL_BLACKLIST"

    .line 254
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 255
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->getAuditLogService()Lcom/android/server/enterprise/auditlog/AuditLogService;

    move-result-object v2

    const/4 v4, 0x5

    const/4 v5, 0x1

    .line 256
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v8

    const-string v9, "DeviceAccountPolicy"

    const-string v10, "Admin %d has removed account %s from removal blacklist."

    new-array v7, v7, [Ljava/lang/Object;

    iget v6, v11, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 258
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v7, v14

    aput-object v3, v7, v19

    .line 257
    invoke-static {v10, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    move-object v3, v11

    const/4 v6, 0x1

    move v7, v8

    move-object v8, v9

    move-object v9, v10

    move v10, v15

    .line 255
    invoke-virtual/range {v2 .. v10}, Lcom/android/server/enterprise/auditlog/AuditLogService;->AuditLoggerAsUser(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_2

    :cond_4
    const-string v2, "REMOVAL_WHITELIST"

    .line 260
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 261
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->getAuditLogService()Lcom/android/server/enterprise/auditlog/AuditLogService;

    move-result-object v2

    const/4 v4, 0x5

    const/4 v5, 0x1

    .line 262
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v8

    const-string v9, "DeviceAccountPolicy"

    const-string v10, "Admin %d has removed account %s from removal whitelist."

    new-array v7, v7, [Ljava/lang/Object;

    iget v6, v11, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 264
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v7, v14

    aput-object v3, v7, v19

    .line 263
    invoke-static {v10, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    move-object v3, v11

    const/4 v6, 0x1

    move v7, v8

    move-object v8, v9

    move-object v9, v10

    move v10, v15

    .line 261
    invoke-virtual/range {v2 .. v10}, Lcom/android/server/enterprise/auditlog/AuditLogService;->AuditLoggerAsUser(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    :goto_2
    move/from16 v2, v20

    goto/16 :goto_0

    .line 273
    :cond_6
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v14, v2

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "Handled Exception in removeAccountsFromBWLInternal()"

    .line 270
    invoke-static {v13, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 273
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_3
    return v14

    :goto_4
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 274
    throw v0

    :cond_7
    :goto_5
    const-string/jumbo v0, "removeAccountsFromBWLInternal() : invalid parameter."

    .line 217
    invoke-static {v13, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v14
.end method

.method public removeAccountsFromRemovalBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/util/List;)Z
    .locals 1

    const-string v0, "REMOVAL_BLACKLIST"

    .line 449
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->removeAccountsFromBWLInternal(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public removeAccountsFromRemovalWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/util/List;)Z
    .locals 1

    const-string v0, "REMOVAL_WHITELIST"

    .line 466
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->removeAccountsFromBWLInternal(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public systemReady()V
    .locals 0

    .line 0
    return-void
.end method
