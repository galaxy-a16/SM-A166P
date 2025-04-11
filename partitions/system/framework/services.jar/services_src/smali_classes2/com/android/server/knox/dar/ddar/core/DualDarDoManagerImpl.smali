.class public Lcom/android/server/knox/dar/ddar/core/DualDarDoManagerImpl;
.super Ljava/lang/Object;
.source "DualDarDoManagerImpl.java"


# instance fields
.field public mHasTokenSetForInner:Z

.field public final mInjector:Lcom/android/server/knox/dar/DarManagerService$Injector;

.field public mNonClearablePackages:Ljava/util/List;


# direct methods
.method public static synthetic $r8$lambda$0NnbS16ouP7s5tXFD-kFrBkkz1k(Lcom/android/server/knox/dar/ddar/core/DualDarDoManagerImpl;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/knox/dar/ddar/core/DualDarDoManagerImpl;->lambda$sendDpmStateChanged$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$uKOgh8hM1MpOh4h86WEP-IC581Q(Lcom/samsung/android/knox/ddar/IDualDARPolicy;)Ljava/lang/Integer;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/knox/dar/ddar/core/DualDarDoManagerImpl;->lambda$getPasswordMinimumLengthForInner$0(Lcom/samsung/android/knox/ddar/IDualDARPolicy;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/knox/dar/DarManagerService$Injector;)V
    .locals 8

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 47
    iput-boolean v0, p0, Lcom/android/server/knox/dar/ddar/core/DualDarDoManagerImpl;->mHasTokenSetForInner:Z

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.android.settings"

    const-string v2, "com.google.android.gms"

    const-string v3, "com.samsung.android.knox.containercore"

    const-string v4, "com.google.android.providers.media.module"

    const-string v5, "com.google.android.apps.work.clouddpc"

    const-string v6, "com.samsung.sec.android.application.csc"

    const-string v7, "com.google.android.webview"

    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/server/knox/dar/ddar/core/DualDarDoManagerImpl;->mNonClearablePackages:Ljava/util/List;

    .line 52
    iput-object p1, p0, Lcom/android/server/knox/dar/ddar/core/DualDarDoManagerImpl;->mInjector:Lcom/android/server/knox/dar/DarManagerService$Injector;

    return-void
.end method

.method public static synthetic lambda$getPasswordMinimumLengthForInner$0(Lcom/samsung/android/knox/ddar/IDualDARPolicy;)Ljava/lang/Integer;
    .locals 1

    .line 208
    :try_start_0
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0}, Lcom/samsung/android/knox/ContextInfo;-><init>()V

    invoke-interface {p0, v0}, Lcom/samsung/android/knox/ddar/IDualDARPolicy;->getPasswordMinimumLengthForInner(Lcom/samsung/android/knox/ContextInfo;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 210
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    .line 211
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$sendDpmStateChanged$1()V
    .locals 2

    .line 220
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x40000000    # 2.0f

    .line 221
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 222
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/core/DualDarDoManagerImpl;->mInjector:Lcom/android/server/knox/dar/DarManagerService$Injector;

    invoke-virtual {p0}, Lcom/android/server/knox/dar/DarManagerService$Injector;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public addBlockedClearablePackages(ILjava/lang/String;)V
    .locals 3

    .line 101
    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/core/DualDarDoManagerImpl;->mInjector:Lcom/android/server/knox/dar/DarManagerService$Injector;

    const-string v1, "addBlockedClearablePackages"

    invoke-virtual {v0, v1}, Lcom/android/server/knox/dar/DarManagerService$Injector;->enforceCallerKnoxCoreOrSelf(Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/core/DualDarDoManagerImpl;->mInjector:Lcom/android/server/knox/dar/DarManagerService$Injector;

    .line 104
    invoke-virtual {v0}, Lcom/android/server/knox/dar/DarManagerService$Injector;->getDarDatabaseCache()Lcom/android/server/knox/dar/DarDatabaseCache;

    move-result-object v0

    const-string/jumbo v1, "pkg_blocked_clearable"

    const-string v2, "empty"

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/knox/dar/DarDatabaseCache;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 106
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 107
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 108
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/core/DualDarDoManagerImpl;->mInjector:Lcom/android/server/knox/dar/DarManagerService$Injector;

    invoke-virtual {p0}, Lcom/android/server/knox/dar/DarManagerService$Injector;->getDarDatabaseCache()Lcom/android/server/knox/dar/DarDatabaseCache;

    move-result-object p0

    invoke-virtual {p0, p1, v1, p2}, Lcom/android/server/knox/dar/DarDatabaseCache;->putString(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 111
    :cond_0
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/core/DualDarDoManagerImpl;->mInjector:Lcom/android/server/knox/dar/DarManagerService$Injector;

    invoke-virtual {p0}, Lcom/android/server/knox/dar/DarManagerService$Injector;->getDarDatabaseCache()Lcom/android/server/knox/dar/DarDatabaseCache;

    move-result-object p0

    invoke-virtual {p0, p1, v1, p2}, Lcom/android/server/knox/dar/DarDatabaseCache;->putString(ILjava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public dump(Landroid/content/Context;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7

    .line 227
    new-instance p2, Landroid/util/IndentingPrintWriter;

    invoke-direct {p2, p3}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;)V

    .line 229
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "DUALDAR Supported Version: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/knox/ddar/DualDARPolicy;->getDualDARVersion()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 231
    iget-object p3, p0, Lcom/android/server/knox/dar/ddar/core/DualDarDoManagerImpl;->mInjector:Lcom/android/server/knox/dar/DarManagerService$Injector;

    invoke-virtual {p3}, Lcom/android/server/knox/dar/DarManagerService$Injector;->getLockPatternUtils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object p3

    const/4 p4, 0x0

    invoke-virtual {p3, p4}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceOwner(I)Z

    move-result p3

    .line 233
    invoke-static {}, Lcom/samsung/android/knox/dar/ddar/DualDarManager;->isOnDeviceOwnerEnabled()Z

    move-result v0

    .line 235
    invoke-static {}, Lcom/android/server/pm/PersonaServiceHelper;->getDualDARUser()I

    move-result v1

    const-string v2, "Credential Type: "

    const-string v3, ""

    const/4 v4, -0x1

    if-eq v1, v4, :cond_8

    .line 238
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DUALDAR user: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string v5, "DUALDAR TYPE: "

    .line 239
    invoke-virtual {p2, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 240
    invoke-static {v1}, Lcom/android/server/pm/PersonaServiceHelper;->getDualDARType(I)I

    move-result v5

    if-eq v5, v4, :cond_3

    if-eqz v5, :cond_2

    const/4 v4, 0x1

    if-eq v5, v4, :cond_1

    const/4 v4, 0x2

    if-eq v5, v4, :cond_0

    goto :goto_0

    :cond_0
    const-string v4, "DUALDAR_TYPE_DO_ONLY"

    .line 243
    invoke-virtual {p2, v4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v4, "DUALDAR_TYPE_DO_PO"

    .line 246
    invoke-virtual {p2, v4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v4, "DUALDAR_TYPE_PO_ONLY"

    .line 249
    invoke-virtual {p2, v4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v4, "DUALDAR_TYPE_NONE"

    .line 252
    invoke-virtual {p2, v4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :goto_0
    const-string v4, "DUALDAR CRYPTO TYPE: "

    .line 257
    invoke-virtual {p2, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 258
    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isDualDARNativeCrypto(I)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "Native"

    .line 259
    invoke-virtual {p2, v4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 261
    :cond_4
    invoke-static {p1}, Lcom/samsung/android/knox/dar/ddar/DualDarCache;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/dar/ddar/DualDarCache;

    move-result-object v4

    const-string v5, "KEY_CLIENT_PACKAGE_NAME"

    invoke-virtual {v4, v1, v5}, Lcom/samsung/android/knox/dar/ddar/DualDarCache;->get(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 263
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Custom - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :goto_1
    const-string v4, "device_policy"

    .line 267
    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/admin/DevicePolicyManager;

    if-eqz p1, :cond_6

    if-nez v1, :cond_5

    .line 271
    invoke-virtual {p1}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwner()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 273
    :cond_5
    invoke-virtual {p1, v1}, Landroid/app/admin/DevicePolicyManager;->getProfileOwnerNameAsUser(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_6
    move-object p1, v3

    .line 276
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Admin Package: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 278
    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 279
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isDERestrictionEnforced: "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/android/server/pm/PersonaServiceHelper;->isDERestrictionEnforced(I)Z

    move-result v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    if-eqz v1, :cond_7

    .line 283
    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 284
    iget-object p1, p0, Lcom/android/server/knox/dar/ddar/core/DualDarDoManagerImpl;->mInjector:Lcom/android/server/knox/dar/DarManagerService$Injector;

    invoke-virtual {p1}, Lcom/android/server/knox/dar/DarManagerService$Injector;->getLockPatternUtils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/android/internal/widget/LockPatternUtils;->getCredentialTypeForUser(I)I

    move-result p1

    .line 286
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 287
    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 289
    :cond_7
    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    :cond_8
    if-eqz p3, :cond_a

    .line 294
    invoke-virtual {p2, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "Device Owner enabled"

    .line 295
    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 296
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "DualDAR at DO: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_9

    const-string p3, "Enabled"

    goto :goto_3

    :cond_9
    const-string p3, "Not enabled"

    :goto_3
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :cond_a
    if-eqz v0, :cond_c

    .line 302
    invoke-virtual {p2, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 303
    invoke-static {p4}, Lcom/android/server/pm/PersonaServiceHelper;->isDataLockTimeoutEnabled(I)Z

    move-result p1

    .line 305
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Data Lock Timeout : "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 307
    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 308
    invoke-static {p4}, Lcom/samsung/android/knox/dar/ddar/fsm/StateMachine;->getCurrentState(I)Lcom/samsung/android/knox/dar/ddar/fsm/State;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 309
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "State - "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/knox/dar/ddar/fsm/State;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :cond_b
    const-string p1, "Outer Auth User 0"

    .line 310
    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 312
    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 313
    iget-object p1, p0, Lcom/android/server/knox/dar/ddar/core/DualDarDoManagerImpl;->mInjector:Lcom/android/server/knox/dar/DarManagerService$Injector;

    invoke-virtual {p1}, Lcom/android/server/knox/dar/DarManagerService$Injector;->getLockPatternUtils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/android/internal/widget/LockPatternUtils;->getCredentialTypeForUser(I)I

    move-result p1

    .line 315
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/knox/dar/DarUtil;->credentialTypeToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 316
    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 318
    invoke-virtual {p0, p4}, Lcom/android/server/knox/dar/ddar/core/DualDarDoManagerImpl;->getInnerAuthUserId(I)I

    move-result p1

    .line 319
    iget-object p3, p0, Lcom/android/server/knox/dar/ddar/core/DualDarDoManagerImpl;->mInjector:Lcom/android/server/knox/dar/DarManagerService$Injector;

    invoke-virtual {p3}, Lcom/android/server/knox/dar/DarManagerService$Injector;->getLockPatternUtils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/android/internal/widget/LockPatternUtils;->getCredentialTypeForUser(I)I

    move-result p3

    .line 321
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Inner Auth User "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 323
    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 324
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lcom/android/server/knox/dar/DarUtil;->credentialTypeToString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 325
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Has Token Set: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/android/server/knox/dar/ddar/core/DualDarDoManagerImpl;->mHasTokenSetForInner:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 326
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Password Minimum Length: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/knox/dar/ddar/core/DualDarDoManagerImpl;->getPasswordMinimumLengthForInner()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 327
    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 329
    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 331
    :cond_c
    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->println()V

    return-void
.end method

.method public getBlockedClearablePackages(I)Ljava/util/List;
    .locals 4

    .line 117
    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/core/DualDarDoManagerImpl;->mInjector:Lcom/android/server/knox/dar/DarManagerService$Injector;

    const-string v1, "getBlockedClearablePackages"

    invoke-virtual {v0, v1}, Lcom/android/server/knox/dar/DarManagerService$Injector;->enforceCallerKnoxCoreOrSelf(Ljava/lang/String;)V

    .line 119
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 120
    iget-object v1, p0, Lcom/android/server/knox/dar/ddar/core/DualDarDoManagerImpl;->mInjector:Lcom/android/server/knox/dar/DarManagerService$Injector;

    .line 121
    invoke-virtual {v1}, Lcom/android/server/knox/dar/DarManagerService$Injector;->getDarDatabaseCache()Lcom/android/server/knox/dar/DarDatabaseCache;

    move-result-object v1

    const-string/jumbo v2, "pkg_blocked_clearable"

    const-string v3, "empty"

    invoke-virtual {v1, p1, v2, v3}, Lcom/android/server/knox/dar/DarDatabaseCache;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 123
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ","

    .line 124
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 125
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 127
    :cond_0
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/core/DualDarDoManagerImpl;->mNonClearablePackages:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public getInnerAuthUserId(I)I
    .locals 2

    .line 70
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/core/DualDarDoManagerImpl;->mInjector:Lcom/android/server/knox/dar/DarManagerService$Injector;

    invoke-virtual {p0}, Lcom/android/server/knox/dar/DarManagerService$Injector;->getDarDatabaseCache()Lcom/android/server/knox/dar/DarDatabaseCache;

    move-result-object p0

    const-string v0, "ddar.inner.auth.userid"

    const/16 v1, -0x2710

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/knox/dar/DarDatabaseCache;->getInt(ILjava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getMainUserId(I)I
    .locals 2

    .line 81
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/core/DualDarDoManagerImpl;->mInjector:Lcom/android/server/knox/dar/DarManagerService$Injector;

    invoke-virtual {p0}, Lcom/android/server/knox/dar/DarManagerService$Injector;->getDarDatabaseCache()Lcom/android/server/knox/dar/DarDatabaseCache;

    move-result-object p0

    const-string v0, "ddar.inner.main.userid"

    const/16 v1, -0x2710

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/knox/dar/DarDatabaseCache;->getInt(ILjava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getPackageListForDualDarPolicy(Ljava/lang/String;)Ljava/util/List;
    .locals 1

    .line 132
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/core/DualDarDoManagerImpl;->mInjector:Lcom/android/server/knox/dar/DarManagerService$Injector;

    const-string v0, "getPackageListForDualDarPolicy"

    invoke-virtual {p0, v0}, Lcom/android/server/knox/dar/DarManagerService$Injector;->enforceCallerKnoxCoreOrSelf(Ljava/lang/String;)V

    .line 135
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 137
    invoke-interface {p0, p1}, Landroid/content/pm/IPackageManager;->getPackageListForDualDarPolicy(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 139
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 141
    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public getPasswordMinimumLengthForInner()I
    .locals 2

    .line 205
    invoke-static {}, Lcom/samsung/android/knox/dar/ddar/DualDarManager;->isOnDeviceOwnerEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 206
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/core/DualDarDoManagerImpl;->mInjector:Lcom/android/server/knox/dar/DarManagerService$Injector;

    invoke-virtual {p0}, Lcom/android/server/knox/dar/DarManagerService$Injector;->getDualDARPolicyService()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/android/server/knox/dar/ddar/core/DualDarDoManagerImpl$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/knox/dar/ddar/core/DualDarDoManagerImpl$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    .line 213
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_0
    return v1
.end method

.method public isInnerAuthRequired(I)Z
    .locals 3

    .line 145
    invoke-static {p1}, Lcom/samsung/android/knox/dar/ddar/DualDarManager;->isOnDeviceOwner(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 149
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/knox/dar/ddar/core/DualDarDoManagerImpl;->isInnerLayerLockedState()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    .line 153
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/knox/dar/ddar/core/DualDarDoManagerImpl;->mHasTokenSetForInner:Z

    if-nez v0, :cond_2

    return v1

    .line 157
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/ddar/core/DualDarDoManagerImpl;->getInnerAuthUserId(I)I

    move-result p1

    .line 158
    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/core/DualDarDoManagerImpl;->mInjector:Lcom/android/server/knox/dar/DarManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/knox/dar/DarManagerService$Injector;->getLockPatternUtils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->hasPendingEscrowToken(I)Z

    move-result p1

    if-eqz p1, :cond_3

    return v2

    .line 161
    :cond_3
    iput-boolean v1, p0, Lcom/android/server/knox/dar/ddar/core/DualDarDoManagerImpl;->mHasTokenSetForInner:Z

    return v1
.end method

.method public final isInnerLayerLockedState()Z
    .locals 2

    .line 167
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/core/DualDarDoManagerImpl;->mInjector:Lcom/android/server/knox/dar/DarManagerService$Injector;

    invoke-virtual {p0}, Lcom/android/server/knox/dar/DarManagerService$Injector;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/knox/dar/EnterprisePartitionManager;->getInstance(Landroid/content/Context;)Lcom/android/server/knox/dar/EnterprisePartitionManager;

    move-result-object p0

    .line 168
    invoke-virtual {p0}, Lcom/android/server/knox/dar/EnterprisePartitionManager;->getDualDARLockstate()Z

    move-result p0

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isInnerLayerLockedState - result : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DualDarManagerImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public onClearResetPasswordToken(I)V
    .locals 2

    .line 195
    invoke-static {}, Lcom/samsung/android/knox/dar/ddar/DualDarManager;->isOnDeviceOwnerEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 196
    invoke-virtual {p0, v0}, Lcom/android/server/knox/dar/ddar/core/DualDarDoManagerImpl;->getInnerAuthUserId(I)I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 197
    iget-boolean p1, p0, Lcom/android/server/knox/dar/ddar/core/DualDarDoManagerImpl;->mHasTokenSetForInner:Z

    if-eqz p1, :cond_0

    .line 198
    iput-boolean v0, p0, Lcom/android/server/knox/dar/ddar/core/DualDarDoManagerImpl;->mHasTokenSetForInner:Z

    .line 199
    invoke-virtual {p0}, Lcom/android/server/knox/dar/ddar/core/DualDarDoManagerImpl;->sendDpmStateChanged()V

    :cond_0
    return-void
.end method

.method public onEscrowTokenActivated(JI)V
    .locals 2

    .line 184
    invoke-static {}, Lcom/samsung/android/knox/dar/ddar/DualDarManager;->isOnDeviceOwnerEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 185
    invoke-virtual {p0, v0}, Lcom/android/server/knox/dar/ddar/core/DualDarDoManagerImpl;->getInnerAuthUserId(I)I

    move-result v1

    if-ne v1, p3, :cond_0

    .line 186
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Token(%x) activated for user %d"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "DualDarManagerImpl"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    iget-boolean p1, p0, Lcom/android/server/knox/dar/ddar/core/DualDarDoManagerImpl;->mHasTokenSetForInner:Z

    if-eqz p1, :cond_0

    .line 188
    iput-boolean v0, p0, Lcom/android/server/knox/dar/ddar/core/DualDarDoManagerImpl;->mHasTokenSetForInner:Z

    .line 189
    invoke-virtual {p0}, Lcom/android/server/knox/dar/ddar/core/DualDarDoManagerImpl;->sendDpmStateChanged()V

    :cond_0
    return-void
.end method

.method public onSetResetPasswordToken(I)V
    .locals 1

    .line 174
    invoke-static {}, Lcom/samsung/android/knox/dar/ddar/DualDarManager;->isOnDeviceOwnerEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 175
    invoke-virtual {p0, v0}, Lcom/android/server/knox/dar/ddar/core/DualDarDoManagerImpl;->getInnerAuthUserId(I)I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 176
    iget-boolean p1, p0, Lcom/android/server/knox/dar/ddar/core/DualDarDoManagerImpl;->mHasTokenSetForInner:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 177
    iput-boolean p1, p0, Lcom/android/server/knox/dar/ddar/core/DualDarDoManagerImpl;->mHasTokenSetForInner:Z

    .line 178
    invoke-virtual {p0}, Lcom/android/server/knox/dar/ddar/core/DualDarDoManagerImpl;->sendDpmStateChanged()V

    :cond_0
    return-void
.end method

.method public final sendDpmStateChanged()V
    .locals 1

    .line 219
    new-instance v0, Lcom/android/server/knox/dar/ddar/core/DualDarDoManagerImpl$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/server/knox/dar/ddar/core/DualDarDoManagerImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/knox/dar/ddar/core/DualDarDoManagerImpl;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public setDualDarInfo(II)Z
    .locals 2

    .line 56
    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/core/DualDarDoManagerImpl;->mInjector:Lcom/android/server/knox/dar/DarManagerService$Injector;

    const-string/jumbo v1, "setDualDarInfo"

    invoke-virtual {v0, v1}, Lcom/android/server/knox/dar/DarManagerService$Injector;->enforceCallerKnoxCoreOrSelf(Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/core/DualDarDoManagerImpl;->mInjector:Lcom/android/server/knox/dar/DarManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/knox/dar/DarManagerService$Injector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 58
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/core/DualDarDoManagerImpl;->mInjector:Lcom/android/server/knox/dar/DarManagerService$Injector;

    invoke-virtual {p0}, Lcom/android/server/knox/dar/DarManagerService$Injector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/UserManagerInternal;->setDualDarInfo(II)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setInnerAuthUserId(II)V
    .locals 2

    .line 64
    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/core/DualDarDoManagerImpl;->mInjector:Lcom/android/server/knox/dar/DarManagerService$Injector;

    const-string/jumbo v1, "setInnerAuthUserId"

    invoke-virtual {v0, v1}, Lcom/android/server/knox/dar/DarManagerService$Injector;->enforceCallerKnoxCoreOrSelf(Ljava/lang/String;)V

    .line 65
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/core/DualDarDoManagerImpl;->mInjector:Lcom/android/server/knox/dar/DarManagerService$Injector;

    invoke-virtual {p0}, Lcom/android/server/knox/dar/DarManagerService$Injector;->getDarDatabaseCache()Lcom/android/server/knox/dar/DarDatabaseCache;

    move-result-object p0

    const-string v0, "ddar.inner.auth.userid"

    invoke-virtual {p0, p2, v0, p1}, Lcom/android/server/knox/dar/DarDatabaseCache;->putInt(ILjava/lang/String;I)V

    return-void
.end method

.method public setMainUserId(II)V
    .locals 2

    .line 75
    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/core/DualDarDoManagerImpl;->mInjector:Lcom/android/server/knox/dar/DarManagerService$Injector;

    const-string/jumbo v1, "setMainUserId"

    invoke-virtual {v0, v1}, Lcom/android/server/knox/dar/DarManagerService$Injector;->enforceCallerKnoxCoreOrSelf(Ljava/lang/String;)V

    .line 76
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/core/DualDarDoManagerImpl;->mInjector:Lcom/android/server/knox/dar/DarManagerService$Injector;

    invoke-virtual {p0}, Lcom/android/server/knox/dar/DarManagerService$Injector;->getDarDatabaseCache()Lcom/android/server/knox/dar/DarDatabaseCache;

    move-result-object p0

    const-string v0, "ddar.inner.main.userid"

    invoke-virtual {p0, p2, v0, p1}, Lcom/android/server/knox/dar/DarDatabaseCache;->putInt(ILjava/lang/String;I)V

    return-void
.end method
