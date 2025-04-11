.class public final Lcom/android/server/pm/ResolveIntentHelper;
.super Ljava/lang/Object;
.source "ResolveIntentHelper.java"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

.field public final mHandler:Landroid/os/Handler;

.field public final mInstantAppInstallerActivitySupplier:Ljava/util/function/Supplier;

.field public final mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

.field public final mPreferredActivityHelper:Lcom/android/server/pm/PreferredActivityHelper;

.field public final mResolveInfoSupplier:Ljava/util/function/Supplier;

.field public final mUserManager:Lcom/android/server/pm/UserManagerService;

.field public final mUserNeedsBadging:Lcom/android/server/pm/UserNeedsBadgingCache;


# direct methods
.method public static synthetic $r8$lambda$6rLFK_Q8y2hQvjLWvMR03Q3PK0w(Landroid/app/IUnsafeIntentStrictModeCallback;Landroid/content/Intent;Landroid/app/ActivityManagerInternal;I)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/pm/ResolveIntentHelper;->lambda$filterNonExportedComponents$0(Landroid/app/IUnsafeIntentStrictModeCallback;Landroid/content/Intent;Landroid/app/ActivityManagerInternal;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/pm/PreferredActivityHelper;Lcom/android/server/compat/PlatformCompat;Lcom/android/server/pm/UserManagerService;Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;Lcom/android/server/pm/UserNeedsBadgingCache;Ljava/util/function/Supplier;Ljava/util/function/Supplier;Landroid/os/Handler;)V
    .locals 0

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput-object p1, p0, Lcom/android/server/pm/ResolveIntentHelper;->mContext:Landroid/content/Context;

    .line 115
    iput-object p2, p0, Lcom/android/server/pm/ResolveIntentHelper;->mPreferredActivityHelper:Lcom/android/server/pm/PreferredActivityHelper;

    .line 116
    iput-object p3, p0, Lcom/android/server/pm/ResolveIntentHelper;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

    .line 117
    iput-object p4, p0, Lcom/android/server/pm/ResolveIntentHelper;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 118
    iput-object p5, p0, Lcom/android/server/pm/ResolveIntentHelper;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    .line 119
    iput-object p6, p0, Lcom/android/server/pm/ResolveIntentHelper;->mUserNeedsBadging:Lcom/android/server/pm/UserNeedsBadgingCache;

    .line 120
    iput-object p7, p0, Lcom/android/server/pm/ResolveIntentHelper;->mResolveInfoSupplier:Ljava/util/function/Supplier;

    .line 121
    iput-object p8, p0, Lcom/android/server/pm/ResolveIntentHelper;->mInstantAppInstallerActivitySupplier:Ljava/util/function/Supplier;

    .line 122
    iput-object p9, p0, Lcom/android/server/pm/ResolveIntentHelper;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public static filterNonExportedComponents(Landroid/content/Intent;IILjava/util/List;Lcom/android/server/compat/PlatformCompat;Ljava/lang/String;Lcom/android/server/pm/Computer;Landroid/os/Handler;)V
    .locals 4

    if-eqz p3, :cond_5

    .line 129
    invoke-virtual {p0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    .line 130
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_5

    .line 131
    invoke-static {p1}, Landroid/app/ActivityManager;->canAccessUnexportedComponents(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 134
    :cond_0
    invoke-interface {p6, p1}, Lcom/android/server/pm/Computer;->getPackage(I)Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object p6

    if-nez p6, :cond_1

    goto :goto_0

    .line 135
    :cond_1
    invoke-interface {p6}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 136
    :goto_0
    const-class p6, Landroid/app/ActivityManagerInternal;

    .line 137
    invoke-static {p6}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Landroid/app/ActivityManagerInternal;

    .line 139
    invoke-virtual {p6, p2}, Landroid/app/ActivityManagerInternal;->getRegisteredStrictModeCallback(I)Landroid/app/IUnsafeIntentStrictModeCallback;

    move-result-object v0

    .line 140
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-ltz v1, :cond_5

    .line 141
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    invoke-virtual {v2}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v2

    iget-boolean v2, v2, Landroid/content/pm/ComponentInfo;->exported:Z

    if-nez v2, :cond_4

    const-wide/32 v2, 0xdabca61

    .line 142
    invoke-virtual {p4, v2, v3, p1}, Lcom/android/server/compat/PlatformCompat;->isChangeEnabledByUid(JI)Z

    move-result v2

    const/4 v3, 0x2

    .line 145
    invoke-static {v3, p1, p0, p5, v2}, Lcom/android/server/am/ActivityManagerUtils;->logUnsafeIntentEvent(IILandroid/content/Intent;Ljava/lang/String;Z)V

    if-eqz v0, :cond_2

    .line 149
    new-instance v3, Lcom/android/server/pm/ResolveIntentHelper$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0, p0, p6, p2}, Lcom/android/server/pm/ResolveIntentHelper$$ExternalSyntheticLambda0;-><init>(Landroid/app/IUnsafeIntentStrictModeCallback;Landroid/content/Intent;Landroid/app/ActivityManagerInternal;I)V

    invoke-virtual {p7, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    if-nez v2, :cond_3

    return-void

    .line 160
    :cond_3
    invoke-interface {p3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_5
    :goto_2
    return-void
.end method

.method public static synthetic lambda$filterNonExportedComponents$0(Landroid/app/IUnsafeIntentStrictModeCallback;Landroid/content/Intent;Landroid/app/ActivityManagerInternal;I)V
    .locals 0

    .line 151
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->cloneFilter()Landroid/content/Intent;

    move-result-object p1

    invoke-interface {p0, p1}, Landroid/app/IUnsafeIntentStrictModeCallback;->onImplicitIntentMatchedInternalComponent(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 153
    :catch_0
    invoke-virtual {p2, p3}, Landroid/app/ActivityManagerInternal;->unregisterStrictModeCallback(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public final allHavePackage(Ljava/util/List;Ljava/lang/String;)Z
    .locals 3

    .line 368
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    return v0

    .line 371
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    move v1, v0

    :goto_0
    if-ge v1, p0, :cond_4

    .line 372
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    if-eqz v2, :cond_1

    .line 373
    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_3

    .line 374
    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    return v0

    :cond_4
    const/4 p0, 0x1

    return p0
.end method

.method public final applyPostContentProviderResolutionFilter(Lcom/android/server/pm/Computer;Ljava/util/List;Ljava/lang/String;II)Ljava/util/List;
    .locals 10

    .line 654
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_7

    .line 655
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    if-nez p3, :cond_0

    .line 658
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v2, v2, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {p1, v2, v3}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;I)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v2

    .line 660
    invoke-interface {p1, v2, p5, p4}, Lcom/android/server/pm/Computer;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_1

    .line 665
    :cond_0
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v2, v2, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 667
    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v3, v3, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 668
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v3, v2, Landroid/content/pm/ProviderInfo;->splitName:Ljava/lang/String;

    if-eqz v3, :cond_6

    iget-object v2, v2, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->splitNames:[Ljava/lang/String;

    .line 669
    invoke-static {v2, v3}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 671
    iget-object v2, p0, Lcom/android/server/pm/ResolveIntentHelper;->mInstantAppInstallerActivitySupplier:Ljava/util/function/Supplier;

    invoke-interface {v2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "PackageManager"

    if-nez v2, :cond_2

    .line 672
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTANT:Z

    if-eqz v1, :cond_1

    const-string v1, "No installer - not adding it to the ResolveInfo list"

    .line 673
    invoke-static {v3, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    :cond_1
    invoke-interface {p2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 680
    :cond_2
    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTANT:Z

    if-eqz v2, :cond_3

    const-string v2, "Adding ephemeral installer to the ResolveInfo list"

    .line 681
    invoke-static {v3, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    :cond_3
    new-instance v2, Landroid/content/pm/ResolveInfo;

    .line 684
    invoke-interface {p1}, Lcom/android/server/pm/Computer;->getInstantAppInstallerInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/pm/ResolveInfo;-><init>(Landroid/content/pm/ResolveInfo;)V

    .line 685
    new-instance v3, Landroid/content/pm/AuxiliaryResolveInfo;

    const/4 v5, 0x0

    iget-object v4, v1, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v6, v4, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    iget-object v7, v4, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-wide v7, v7, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    iget-object v9, v4, Landroid/content/pm/ProviderInfo;->splitName:Ljava/lang/String;

    move-object v4, v3

    invoke-direct/range {v4 .. v9}, Landroid/content/pm/AuxiliaryResolveInfo;-><init>(Landroid/content/ComponentName;Ljava/lang/String;JLjava/lang/String;)V

    iput-object v3, v2, Landroid/content/pm/ResolveInfo;->auxiliaryInfo:Landroid/content/pm/AuxiliaryResolveInfo;

    .line 691
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    iput-object v3, v2, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    .line 693
    invoke-virtual {v1}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    iput-object v1, v2, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    .line 694
    invoke-interface {p2, v0, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    if-nez v2, :cond_5

    .line 699
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget v1, v1, Landroid/content/pm/ProviderInfo;->flags:I

    const/high16 v2, 0x100000

    and-int/2addr v1, v2

    if-eqz v1, :cond_5

    goto :goto_1

    .line 703
    :cond_5
    invoke-interface {p2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_6
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_0

    :cond_7
    return-object p2
.end method

.method public final chooseBestActivity(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JJLjava/util/List;IZ)Landroid/content/pm/ResolveInfo;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v13, p8

    move/from16 v14, p9

    if-eqz v13, :cond_16

    .line 242
    invoke-interface/range {p8 .. p8}, Ljava/util/List;->size()I

    move-result v12

    .line 246
    invoke-static {}, Lcom/samsung/android/knox/custom/ProKioskManager;->getInstance()Lcom/samsung/android/knox/custom/ProKioskManager;

    move-result-object v1

    const/4 v11, 0x0

    const/4 v10, 0x1

    if-eqz v1, :cond_3

    const-string v2, "android.intent.category.HOME"

    move-object/from16 v9, p2

    .line 248
    invoke-virtual {v9, v2}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 249
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-nez v2, :cond_3

    if-lez v12, :cond_3

    .line 251
    invoke-virtual {v1}, Lcom/samsung/android/knox/custom/ProKioskManager;->getProKioskState()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 253
    invoke-virtual {v1}, Lcom/samsung/android/knox/custom/ProKioskManager;->getHomeActivity()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 257
    invoke-interface/range {p8 .. p8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 258
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    .line 264
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_2

    move/from16 v16, v10

    goto :goto_0

    :cond_2
    move/from16 v16, v11

    .line 265
    :goto_0
    iget-object v1, v0, Lcom/android/server/pm/ResolveIntentHelper;->mPreferredActivityHelper:Lcom/android/server/pm/PreferredActivityHelper;

    const/4 v8, 0x1

    const/16 v17, 0x0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-wide/from16 v5, p4

    move-object/from16 v7, p8

    move/from16 v9, v17

    move v15, v10

    move/from16 v10, v16

    move/from16 v11, p9

    move v14, v12

    move/from16 v12, p10

    invoke-virtual/range {v1 .. v12}, Lcom/android/server/pm/PreferredActivityHelper;->findPreferredActivityNotLocked(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JLjava/util/List;ZZZIZ)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-eqz v1, :cond_4

    return-object v1

    :cond_3
    move v15, v10

    move v14, v12

    :cond_4
    if-ne v14, v15, :cond_5

    const/4 v12, 0x0

    .line 275
    invoke-interface {v13, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    return-object v0

    :cond_5
    const/4 v12, 0x0

    if-le v14, v15, :cond_16

    .line 277
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_6

    move v10, v15

    goto :goto_1

    :cond_6
    move v10, v12

    .line 280
    :goto_1
    invoke-interface {v13, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 281
    invoke-interface {v13, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    if-eqz v10, :cond_7

    .line 283
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Landroid/content/pm/ResolveInfo;->priority:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " vs "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Landroid/content/pm/ResolveInfo;->priority:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "PackageManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    :cond_7
    iget v3, v1, Landroid/content/pm/ResolveInfo;->priority:I

    iget v4, v2, Landroid/content/pm/ResolveInfo;->priority:I

    if-ne v3, v4, :cond_15

    iget v3, v1, Landroid/content/pm/ResolveInfo;->preferredOrder:I

    iget v4, v2, Landroid/content/pm/ResolveInfo;->preferredOrder:I

    if-ne v3, v4, :cond_15

    iget-boolean v1, v1, Landroid/content/pm/ResolveInfo;->isDefault:Z

    iget-boolean v2, v2, Landroid/content/pm/ResolveInfo;->isDefault:Z

    if-eq v1, v2, :cond_8

    goto/16 :goto_6

    .line 295
    :cond_8
    iget-object v1, v0, Lcom/android/server/pm/ResolveIntentHelper;->mPreferredActivityHelper:Lcom/android/server/pm/PreferredActivityHelper;

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-wide/from16 v5, p4

    move-object/from16 v7, p8

    move/from16 v11, p9

    move v15, v12

    move/from16 v12, p10

    invoke-virtual/range {v1 .. v12}, Lcom/android/server/pm/PreferredActivityHelper;->findPreferredActivityNotLocked(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JLjava/util/List;ZZZIZ)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-eqz v1, :cond_9

    return-object v1

    :cond_9
    move v1, v15

    move v11, v1

    :goto_2
    if-ge v11, v14, :cond_d

    .line 303
    invoke-interface {v13, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/content/pm/ResolveInfo;

    .line 304
    iget-boolean v2, v7, Landroid/content/pm/ResolveInfo;->handleAllWebDataURI:Z

    if-eqz v2, :cond_a

    add-int/lit8 v1, v1, 0x1

    :cond_a
    move v8, v1

    .line 308
    iget-object v1, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 309
    iget-object v1, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v9, p1

    .line 311
    invoke-interface {v9, v1}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v2

    if-eqz v2, :cond_c

    .line 312
    iget-object v1, v0, Lcom/android/server/pm/ResolveIntentHelper;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    move-object/from16 v3, p2

    move-wide/from16 v4, p4

    move/from16 v6, p9

    invoke-static/range {v1 .. v6}, Lcom/android/server/pm/PackageManagerServiceUtils;->hasAnyDomainApproval(Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;Lcom/android/server/pm/pkg/PackageStateInternal;Landroid/content/Intent;JI)Z

    move-result v1

    if-eqz v1, :cond_c

    return-object v7

    :cond_b
    move-object/from16 v9, p1

    :cond_c
    add-int/lit8 v11, v11, 0x1

    move v1, v8

    goto :goto_2

    :cond_d
    const-wide/16 v2, 0x2

    and-long v2, p6, v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_e

    const/4 v2, 0x0

    return-object v2

    .line 322
    :cond_e
    new-instance v2, Landroid/content/pm/ResolveInfo;

    iget-object v3, v0, Lcom/android/server/pm/ResolveIntentHelper;->mResolveInfoSupplier:Ljava/util/function/Supplier;

    invoke-interface {v3}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    invoke-direct {v2, v3}, Landroid/content/pm/ResolveInfo;-><init>(Landroid/content/pm/ResolveInfo;)V

    if-ne v1, v14, :cond_f

    const/4 v11, 0x1

    goto :goto_3

    :cond_f
    move v11, v15

    .line 325
    :goto_3
    iput-boolean v11, v2, Landroid/content/pm/ResolveInfo;->handleAllWebDataURI:Z

    .line 326
    new-instance v1, Landroid/content/pm/ActivityInfo;

    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-direct {v1, v3}, Landroid/content/pm/ActivityInfo;-><init>(Landroid/content/pm/ActivityInfo;)V

    iput-object v1, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 327
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/app/ResolverActivity;->getLabelRes(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Landroid/content/pm/ActivityInfo;->labelRes:I

    .line 328
    iget-object v1, v2, Landroid/content/pm/ResolveInfo;->userHandle:Landroid/os/UserHandle;

    if-nez v1, :cond_10

    invoke-static/range {p9 .. p9}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    iput-object v1, v2, Landroid/content/pm/ResolveInfo;->userHandle:Landroid/os/UserHandle;

    .line 336
    :cond_10
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v1

    .line 337
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_12

    invoke-virtual {v0, v13, v1}, Lcom/android/server/pm/ResolveIntentHelper;->allHavePackage(Ljava/util/List;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 338
    invoke-interface {v13, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 339
    iput-object v1, v2, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    .line 340
    iget-object v0, v0, Lcom/android/server/pm/ResolveIntentHelper;->mUserNeedsBadging:Lcom/android/server/pm/UserNeedsBadgingCache;

    move/from16 v1, p9

    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserNeedsBadgingCache;->get(I)Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    .line 341
    iput-boolean v0, v2, Landroid/content/pm/ResolveInfo;->noResourceId:Z

    goto :goto_4

    .line 343
    :cond_11
    iget v0, v3, Landroid/content/pm/ApplicationInfo;->icon:I

    iput v0, v2, Landroid/content/pm/ResolveInfo;->icon:I

    .line 345
    :goto_4
    iget v0, v3, Landroid/content/pm/ApplicationInfo;->icon:I

    iput v0, v2, Landroid/content/pm/ResolveInfo;->iconResourceId:I

    .line 346
    iget v0, v3, Landroid/content/pm/ApplicationInfo;->labelRes:I

    iput v0, v2, Landroid/content/pm/ResolveInfo;->labelRes:I

    goto :goto_5

    :cond_12
    move/from16 v1, p9

    .line 348
    :goto_5
    iget-object v0, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    new-instance v3, Landroid/content/pm/ApplicationInfo;

    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v3, v4}, Landroid/content/pm/ApplicationInfo;-><init>(Landroid/content/pm/ApplicationInfo;)V

    iput-object v3, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_13

    .line 351
    iget-object v0, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 352
    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    .line 351
    invoke-static {v1, v3}, Landroid/os/UserHandle;->getUid(II)I

    move-result v1

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 355
    :cond_13
    iget-object v0, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-nez v1, :cond_14

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 356
    :cond_14
    iget-object v0, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "android.dock_home"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v2

    :cond_15
    :goto_6
    move v15, v12

    .line 291
    invoke-interface {v13, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    return-object v0

    :cond_16
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLaunchIntentSenderForPackage(Lcom/android/server/pm/Computer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/IntentSender;
    .locals 21

    move-object/from16 v0, p2

    move-object/from16 v2, p3

    .line 384
    invoke-static/range {p2 .. p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "get launch intent sender for package"

    move-object/from16 v3, p1

    move v4, v1

    move/from16 v5, p5

    .line 386
    invoke-interface/range {v3 .. v8}, Lcom/android/server/pm/Computer;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    const-wide/16 v3, 0x0

    move-object/from16 v14, p1

    move/from16 v15, p5

    .line 388
    invoke-interface {v14, v2, v3, v4, v15}, Lcom/android/server/pm/Computer;->getPackageUid(Ljava/lang/String;JI)I

    move-result v3

    .line 389
    invoke-static {v1, v3}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 396
    new-instance v13, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v13, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v12, "android.intent.category.INFO"

    .line 397
    invoke-virtual {v13, v12}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 398
    invoke-virtual {v13, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v3, p0

    .line 399
    iget-object v3, v3, Lcom/android/server/pm/ResolveIntentHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    .line 400
    invoke-virtual {v13, v11}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v16

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x0

    move-object/from16 v3, p1

    move-object v4, v13

    move-object/from16 v5, v16

    move v10, v1

    move-object/from16 v19, v11

    move/from16 v11, p5

    move-object/from16 v20, v12

    move/from16 v12, v17

    move-object v14, v13

    move/from16 v13, v18

    .line 401
    invoke-interface/range {v3 .. v13}, Lcom/android/server/pm/Computer;->queryIntentActivitiesInternal(Landroid/content/Intent;Ljava/lang/String;JJIIZZ)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 404
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-gtz v4, :cond_1

    :cond_0
    move-object/from16 v3, v20

    .line 405
    invoke-virtual {v14, v3}, Landroid/content/Intent;->removeCategory(Ljava/lang/String;)V

    const-string v3, "android.intent.category.LAUNCHER"

    .line 406
    invoke-virtual {v14, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 407
    invoke-virtual {v14, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, v19

    .line 408
    invoke-virtual {v14, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v16

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    move-object/from16 v3, p1

    move-object v4, v14

    move-object/from16 v5, v16

    move v10, v1

    move/from16 v11, p5

    .line 409
    invoke-interface/range {v3 .. v13}, Lcom/android/server/pm/Computer;->queryIntentActivitiesInternal(Landroid/content/Intent;Ljava/lang/String;JJIIZZ)Ljava/util/List;

    move-result-object v3

    .line 414
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v14}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const/high16 v1, 0x10000000

    .line 415
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/4 v1, 0x0

    if-eqz v3, :cond_2

    .line 419
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 423
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v4, 0x0

    .line 424
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 425
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 424
    invoke-virtual {v0, v5, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 427
    :cond_2
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v3

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    filled-new-array {v0}, [Landroid/content/Intent;

    move-result-object v8

    if-eqz v16, :cond_3

    .line 431
    filled-new-array/range {v16 .. v16}, [Ljava/lang/String;

    move-result-object v0

    move-object v9, v0

    goto :goto_0

    :cond_3
    move-object v9, v1

    :goto_0
    const/high16 v10, 0x4000000

    const/4 v11, 0x0

    move-object v0, v3

    move v1, v4

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object v4, v5

    move-object v5, v6

    move v6, v7

    move-object v7, v8

    move-object v8, v9

    move v9, v10

    move-object v10, v11

    move/from16 v11, p5

    .line 427
    invoke-interface/range {v0 .. v11}, Landroid/app/IActivityManager;->getIntentSenderWithFeature(ILjava/lang/String;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;I)Landroid/content/IIntentSender;

    move-result-object v0

    .line 433
    new-instance v1, Landroid/content/IntentSender;

    invoke-direct {v1, v0}, Landroid/content/IntentSender;-><init>(Landroid/content/IIntentSender;)V

    return-object v1

    .line 390
    :cond_4
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getLaunchIntentSenderForPackage() from calling uid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " does not own package: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public queryIntentActivityOptionsInternal(Lcom/android/server/pm/Computer;Landroid/content/ComponentName;[Landroid/content/Intent;[Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;JI)Ljava/util/List;
    .locals 27

    move-object/from16 v11, p0

    move-object/from16 v12, p3

    move/from16 v13, p9

    .line 711
    iget-object v0, v11, Lcom/android/server/pm/ResolveIntentHelper;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, v13}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 712
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    const/4 v6, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p5

    move/from16 v2, p9

    move-object/from16 v3, p6

    move-wide/from16 v4, p7

    .line 715
    invoke-interface/range {v0 .. v5}, Lcom/android/server/pm/Computer;->isImplicitImageCaptureIntentAndNotSetByDpc(Landroid/content/Intent;ILjava/lang/String;J)Z

    move-result v8

    move-wide/from16 v1, p7

    move/from16 v3, p9

    move v4, v7

    move v5, v6

    move v6, v8

    .line 713
    invoke-interface/range {v0 .. v6}, Lcom/android/server/pm/Computer;->updateFlagsForResolve(JIIZZ)J

    move-result-wide v14

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string/jumbo v5, "query intent activity options"

    move v1, v7

    move/from16 v2, p9

    .line 717
    invoke-interface/range {v0 .. v5}, Lcom/android/server/pm/Computer;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 719
    invoke-virtual/range {p5 .. p5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    const-wide/16 v16, 0x40

    or-long v3, v14, v16

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    move/from16 v5, p9

    .line 721
    invoke-interface/range {v0 .. v5}, Lcom/android/server/pm/Computer;->queryIntentActivitiesInternal(Landroid/content/Intent;Ljava/lang/String;JI)Ljava/util/List;

    move-result-object v9

    const/16 v18, 0x0

    const/4 v8, 0x0

    if-eqz v12, :cond_e

    move/from16 v6, v18

    move v7, v6

    .line 740
    :goto_0
    array-length v0, v12

    if-ge v6, v0, :cond_d

    .line 741
    aget-object v2, v12, v6

    if-nez v2, :cond_1

    move-object/from16 v1, p1

    move/from16 v25, v6

    move/from16 v24, v7

    move-object/from16 p5, v9

    move-object v12, v10

    goto/16 :goto_3

    .line 750
    :cond_1
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v10, :cond_2

    .line 751
    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v4, v8

    goto :goto_1

    :cond_2
    move-object v4, v0

    .line 760
    :goto_1
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_5

    if-eqz p4, :cond_3

    .line 763
    aget-object v0, p4, v6

    move-object v3, v0

    goto :goto_2

    :cond_3
    move-object v3, v8

    :goto_2
    const-wide/16 v19, 0x0

    const/16 v21, 0x0

    .line 764
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v23, v4

    move-wide v4, v14

    move/from16 v25, v6

    move/from16 v24, v7

    move-wide/from16 v6, v19

    move/from16 v8, p9

    move-object/from16 p5, v9

    move/from16 v9, v21

    move-object v12, v10

    move/from16 v10, v22

    .line 762
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/pm/ResolveIntentHelper;->resolveIntentInternal(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JJIZI)Landroid/content/pm/ResolveInfo;

    move-result-object v8

    if-nez v8, :cond_4

    move-object/from16 v1, p1

    goto :goto_3

    .line 768
    :cond_4
    iget-object v0, v11, Lcom/android/server/pm/ResolveIntentHelper;->mResolveInfoSupplier:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 771
    iget-object v0, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 772
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v1

    move-object/from16 v1, p1

    goto :goto_4

    :cond_5
    move-object/from16 v1, p1

    move-object/from16 v23, v4

    move/from16 v25, v6

    move/from16 v24, v7

    move-object/from16 p5, v9

    move-object v12, v10

    .line 775
    invoke-interface {v1, v0, v14, v15, v13}, Lcom/android/server/pm/Computer;->getActivityInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    if-nez v2, :cond_6

    :goto_3
    move-object/from16 v4, p5

    move/from16 v7, v24

    move/from16 v2, v25

    goto/16 :goto_8

    :cond_6
    const/4 v8, 0x0

    move-object/from16 v26, v2

    move-object v2, v0

    move-object/from16 v0, v26

    .line 784
    :goto_4
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v3

    move/from16 v7, v24

    :goto_5
    if-ge v7, v3, :cond_b

    move-object/from16 v4, p5

    .line 787
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 788
    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 790
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    .line 789
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    goto :goto_6

    :cond_7
    move-object/from16 v6, v23

    goto :goto_7

    :cond_8
    :goto_6
    move-object/from16 v6, v23

    if-eqz v6, :cond_a

    iget-object v9, v5, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    .line 791
    invoke-virtual {v9, v6}, Landroid/content/IntentFilter;->matchAction(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 792
    :goto_7
    invoke-interface {v4, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    if-nez v8, :cond_9

    move-object v8, v5

    :cond_9
    add-int/lit8 v7, v7, -0x1

    add-int/lit8 v3, v3, -0x1

    :cond_a
    add-int/lit8 v7, v7, 0x1

    move-object/from16 p5, v4

    move-object/from16 v23, v6

    goto :goto_5

    :cond_b
    move-object/from16 v4, p5

    if-nez v8, :cond_c

    .line 808
    new-instance v8, Landroid/content/pm/ResolveInfo;

    invoke-direct {v8}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 809
    iput-object v0, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    :cond_c
    move/from16 v0, v24

    .line 811
    invoke-interface {v4, v0, v8}, Ljava/util/List;->add(ILjava/lang/Object;)V

    move/from16 v2, v25

    .line 812
    iput v2, v8, Landroid/content/pm/ResolveInfo;->specificIndex:I

    add-int/lit8 v7, v0, 0x1

    :goto_8
    add-int/lit8 v6, v2, 0x1

    move-object v9, v4

    move-object v10, v12

    const/4 v8, 0x0

    move-object/from16 v12, p3

    goto/16 :goto_0

    :cond_d
    move v0, v7

    move-object v4, v9

    move-object v12, v10

    goto :goto_9

    :cond_e
    move-object v4, v9

    move-object v12, v10

    move/from16 v7, v18

    .line 819
    :goto_9
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    :goto_a
    add-int/lit8 v1, v0, -0x1

    const-wide/16 v2, 0x0

    if-ge v7, v1, :cond_15

    .line 821
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 822
    iget-object v5, v1, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    if-nez v5, :cond_f

    goto :goto_b

    .line 828
    :cond_f
    invoke-virtual {v5}, Landroid/content/IntentFilter;->actionsIterator()Ljava/util/Iterator;

    move-result-object v5

    if-nez v5, :cond_11

    :cond_10
    :goto_b
    const/4 v5, 0x0

    goto :goto_e

    .line 832
    :cond_11
    :goto_c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_14

    .line 833
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-eqz v12, :cond_12

    .line 834
    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_12

    goto :goto_c

    :cond_12
    add-int/lit8 v8, v7, 0x1

    :goto_d
    if-ge v8, v0, :cond_11

    .line 840
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ResolveInfo;

    .line 841
    iget-object v9, v9, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    if-eqz v9, :cond_13

    invoke-virtual {v9, v6}, Landroid/content/IntentFilter;->hasAction(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_13

    .line 842
    invoke-interface {v4, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v8, v8, -0x1

    add-int/lit8 v0, v0, -0x1

    :cond_13
    add-int/lit8 v8, v8, 0x1

    goto :goto_d

    :cond_14
    and-long v5, v14, v16

    cmp-long v2, v5, v2

    if-nez v2, :cond_10

    const/4 v5, 0x0

    .line 857
    iput-object v5, v1, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    :goto_e
    add-int/lit8 v7, v7, 0x1

    goto :goto_a

    :cond_15
    const/4 v5, 0x0

    if-eqz p2, :cond_17

    .line 863
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    move/from16 v1, v18

    :goto_f
    if-ge v1, v0, :cond_17

    .line 865
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    iget-object v6, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 866
    invoke-virtual/range {p2 .. p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_16

    .line 867
    invoke-virtual/range {p2 .. p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_16

    .line 868
    invoke-interface {v4, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_10

    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_17
    :goto_10
    and-long v0, v14, v16

    cmp-long v0, v0, v2

    if-nez v0, :cond_18

    .line 878
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    move/from16 v1, v18

    :goto_11
    if-ge v1, v0, :cond_18

    .line 880
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iput-object v5, v2, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_18
    return-object v4
.end method

.method public queryIntentContentProvidersInternal(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JI)Ljava/util/List;
    .locals 17

    move-object/from16 v8, p1

    move-object/from16 v9, p0

    move/from16 v10, p6

    .line 576
    iget-object v0, v9, Lcom/android/server/pm/ResolveIntentHelper;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, v10}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 577
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    .line 578
    invoke-interface {v8, v11}, Lcom/android/server/pm/Computer;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v12

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p1

    move-wide/from16 v1, p4

    move/from16 v3, p6

    move v4, v11

    .line 579
    invoke-interface/range {v0 .. v6}, Lcom/android/server/pm/Computer;->updateFlagsForResolve(JIIZZ)J

    move-result-wide v4

    .line 581
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_1

    .line 583
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 584
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v0

    .line 585
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_0

    :cond_1
    move-object/from16 v2, p2

    :goto_0
    if-eqz v0, :cond_c

    .line 589
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 590
    invoke-interface {v8, v0, v4, v5, v10}, Lcom/android/server/pm/Computer;->getProviderInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ProviderInfo;

    move-result-object v3

    if-eqz v3, :cond_b

    const-wide/32 v6, 0x800000

    and-long/2addr v6, v4

    const-wide/16 v13, 0x0

    cmp-long v6, v6, v13

    const/4 v7, 0x0

    if-eqz v6, :cond_2

    move v6, v2

    goto :goto_1

    :cond_2
    move v6, v7

    :goto_1
    const-wide/32 v15, 0x1000000

    and-long/2addr v4, v15

    cmp-long v4, v4, v13

    if-eqz v4, :cond_3

    move v4, v2

    goto :goto_2

    :cond_3
    move v4, v7

    :goto_2
    if-eqz v12, :cond_4

    move v5, v2

    goto :goto_3

    :cond_4
    move v5, v7

    .line 603
    :goto_3
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 604
    iget-object v9, v3, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v12, v9, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit16 v12, v12, 0x80

    if-eqz v12, :cond_5

    move v12, v2

    goto :goto_4

    :cond_5
    move v12, v7

    .line 607
    :goto_4
    iget v13, v3, Landroid/content/pm/ProviderInfo;->flags:I

    const/high16 v14, 0x100000

    and-int/2addr v13, v14

    if-nez v13, :cond_6

    move v13, v2

    goto :goto_5

    :cond_6
    move v13, v7

    :goto_5
    if-nez v0, :cond_9

    if-nez v6, :cond_7

    if-nez v5, :cond_7

    if-nez v12, :cond_8

    :cond_7
    if-eqz v4, :cond_9

    if-eqz v5, :cond_9

    if-eqz v13, :cond_9

    :cond_8
    move v0, v2

    goto :goto_6

    :cond_9
    move v0, v7

    :goto_6
    if-nez v12, :cond_a

    if-nez v5, :cond_a

    .line 614
    iget-object v4, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/16 v5, 0x3e8

    .line 616
    invoke-interface {v8, v4, v5}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;I)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v4

    .line 615
    invoke-interface {v8, v4, v11, v10}, Lcom/android/server/pm/Computer;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v4

    if-eqz v4, :cond_a

    goto :goto_7

    :cond_a
    move v2, v7

    :goto_7
    if-nez v0, :cond_b

    if-nez v2, :cond_b

    .line 619
    new-instance v0, Landroid/content/pm/ResolveInfo;

    invoke-direct {v0}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 620
    iput-object v3, v0, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    .line 621
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b
    return-object v1

    .line 627
    :cond_c
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/Computer;->getComponentResolver()Lcom/android/server/pm/resolution/ComponentResolverApi;

    move-result-object v0

    .line 628
    invoke-virtual {v2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_e

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    move/from16 v6, p6

    .line 630
    invoke-interface/range {v0 .. v6}, Lcom/android/server/pm/resolution/ComponentResolverApi;->queryProviders(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JI)Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_d

    .line 633
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_d
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v3, v12

    move/from16 v4, p6

    move v5, v11

    .line 635
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ResolveIntentHelper;->applyPostContentProviderResolutionFilter(Lcom/android/server/pm/Computer;Ljava/util/List;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 638
    :cond_e
    invoke-interface {v8, v1}, Lcom/android/server/pm/Computer;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v1

    if-eqz v1, :cond_10

    .line 641
    invoke-interface {v1}, Lcom/android/server/pm/pkg/AndroidPackage;->getProviders()Ljava/util/List;

    move-result-object v6

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    move/from16 v7, p6

    .line 640
    invoke-interface/range {v0 .. v7}, Lcom/android/server/pm/resolution/ComponentResolverApi;->queryProviders(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JLjava/util/List;I)Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_f

    .line 643
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_f
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v3, v12

    move/from16 v4, p6

    move v5, v11

    .line 645
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ResolveIntentHelper;->applyPostContentProviderResolutionFilter(Lcom/android/server/pm/Computer;Ljava/util/List;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 648
    :cond_10
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public queryIntentReceiversInternal(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JII)Ljava/util/List;
    .locals 9

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move v6, p6

    move/from16 v7, p7

    .line 444
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/pm/ResolveIntentHelper;->queryIntentReceiversInternal(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JIIZ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public queryIntentReceiversInternal(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JIIZ)Ljava/util/List;
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    .line 455
    iget-object v1, v0, Lcom/android/server/pm/ResolveIntentHelper;->mUserManager:Lcom/android/server/pm/UserManagerService;

    move/from16 v2, p6

    invoke-virtual {v1, v2}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 458
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v3, "com.sec.android.app.dictionary.SEARCH"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v8, 0x0

    if-eqz v1, :cond_1

    invoke-static/range {p6 .. p6}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v1

    if-eqz v1, :cond_1

    move v10, v8

    goto :goto_0

    :cond_1
    move v10, v2

    :goto_0
    if-eqz p8, :cond_2

    const/16 v1, 0x3e8

    move v11, v1

    goto :goto_1

    :cond_2
    move/from16 v11, p7

    :goto_1
    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string/jumbo v6, "query intent receivers"

    move-object/from16 v1, p1

    move v2, v11

    move v3, v10

    .line 465
    invoke-interface/range {v1 .. v6}, Lcom/android/server/pm/Computer;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 467
    invoke-interface {v9, v11}, Lcom/android/server/pm/Computer;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v12

    const/4 v7, 0x0

    move-object/from16 v2, p2

    move-object/from16 v4, p3

    move-wide/from16 v5, p4

    .line 470
    invoke-interface/range {v1 .. v6}, Lcom/android/server/pm/Computer;->isImplicitImageCaptureIntentAndNotSetByDpc(Landroid/content/Intent;ILjava/lang/String;J)Z

    move-result v13

    move-wide/from16 v2, p4

    move v4, v10

    move v5, v11

    move v6, v7

    move v7, v13

    .line 468
    invoke-interface/range {v1 .. v7}, Lcom/android/server/pm/Computer;->updateFlagsForResolve(JIIZZ)J

    move-result-wide v13

    .line 473
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_3

    .line 475
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 477
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v1

    .line 478
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    move-object/from16 v19, p2

    move-object/from16 v22, v1

    move-object v1, v2

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    move-object/from16 v22, p2

    move-object/from16 v19, v2

    .line 481
    :goto_2
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/Computer;->getComponentResolver()Lcom/android/server/pm/resolution/ComponentResolverApi;

    move-result-object v16

    .line 482
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v15

    if-eqz v1, :cond_10

    .line 484
    invoke-interface {v9, v1, v13, v14, v10}, Lcom/android/server/pm/Computer;->getReceiverInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    if-eqz v2, :cond_12

    const-wide/32 v3, 0x800000

    and-long/2addr v3, v13

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    const/4 v4, 0x1

    if-eqz v3, :cond_4

    move v3, v4

    goto :goto_3

    :cond_4
    move v3, v8

    :goto_3
    const-wide/32 v17, 0x1000000

    and-long v17, v13, v17

    cmp-long v7, v17, v5

    if-eqz v7, :cond_5

    move v7, v4

    goto :goto_4

    :cond_5
    move v7, v8

    :goto_4
    const-wide/32 v17, 0x2000000

    and-long v13, v13, v17

    cmp-long v5, v13, v5

    if-eqz v5, :cond_6

    move v5, v4

    goto :goto_5

    :cond_6
    move v5, v8

    :goto_5
    if-eqz v12, :cond_7

    move v6, v4

    goto :goto_6

    :cond_7
    move v6, v8

    .line 499
    :goto_6
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 500
    iget-object v13, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v13, v13, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit16 v13, v13, 0x80

    if-eqz v13, :cond_8

    move v13, v4

    goto :goto_7

    :cond_8
    move v13, v8

    .line 503
    :goto_7
    iget v14, v2, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v17, 0x100000

    and-int v17, v14, v17

    if-eqz v17, :cond_9

    move/from16 v17, v4

    goto :goto_8

    :cond_9
    move/from16 v17, v8

    :goto_8
    if-eqz v17, :cond_a

    const/high16 v18, 0x200000

    and-int v14, v14, v18

    if-nez v14, :cond_a

    move v14, v4

    goto :goto_9

    :cond_a
    move v14, v8

    :goto_9
    if-eqz v17, :cond_c

    if-eqz v5, :cond_b

    if-nez v14, :cond_b

    goto :goto_a

    :cond_b
    move v5, v8

    goto :goto_b

    :cond_c
    :goto_a
    move v5, v4

    :goto_b
    if-nez v1, :cond_f

    if-nez v3, :cond_d

    if-nez v6, :cond_d

    if-nez v13, :cond_e

    :cond_d
    if-eqz v7, :cond_f

    if-eqz v6, :cond_f

    if-eqz v5, :cond_f

    :cond_e
    move v8, v4

    :cond_f
    if-nez v8, :cond_12

    .line 515
    new-instance v1, Landroid/content/pm/ResolveInfo;

    invoke-direct {v1}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 516
    iput-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 517
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 518
    invoke-interface {v15, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 519
    iget-object v1, v0, Lcom/android/server/pm/ResolveIntentHelper;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

    const/4 v4, 0x1

    move-object/from16 v2, v16

    move-object v3, v15

    move-object/from16 v5, v22

    move-object/from16 v6, p3

    move/from16 v7, p7

    invoke-static/range {v1 .. v7}, Lcom/android/server/pm/PackageManagerServiceUtils;->applyEnforceIntentFilterMatching(Lcom/android/server/compat/PlatformCompat;Lcom/android/server/pm/resolution/ComponentResolverApi;Ljava/util/List;ZLandroid/content/Intent;Ljava/lang/String;I)V

    goto :goto_c

    .line 525
    :cond_10
    invoke-virtual/range {v22 .. v22}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_11

    move-object/from16 v1, v16

    move-object/from16 v2, p1

    move-object/from16 v3, v22

    move-object/from16 v4, p3

    move-wide v5, v13

    move v7, v10

    .line 528
    invoke-interface/range {v1 .. v7}, Lcom/android/server/pm/resolution/ComponentResolverApi;->queryReceivers(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JI)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_11

    move-object v15, v1

    .line 533
    :cond_11
    invoke-interface {v9, v8}, Lcom/android/server/pm/Computer;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v1

    if-eqz v1, :cond_12

    .line 536
    invoke-interface {v1}, Lcom/android/server/pm/pkg/AndroidPackage;->getReceivers()Ljava/util/List;

    move-result-object v7

    move-object/from16 v1, v16

    move-object/from16 v2, p1

    move-object/from16 v3, v22

    move-object/from16 v4, p3

    move-wide v5, v13

    move v8, v10

    .line 535
    invoke-interface/range {v1 .. v8}, Lcom/android/server/pm/resolution/ComponentResolverApi;->queryReceivers(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JLjava/util/List;I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_12

    goto :goto_d

    :cond_12
    :goto_c
    move-object v1, v15

    :goto_d
    if-eqz v19, :cond_13

    .line 545
    iget-object v15, v0, Lcom/android/server/pm/ResolveIntentHelper;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

    const/16 v18, 0x1

    move-object/from16 v17, v1

    move-object/from16 v20, p3

    move/from16 v21, p7

    invoke-static/range {v15 .. v21}, Lcom/android/server/pm/PackageManagerServiceUtils;->applyEnforceIntentFilterMatching(Lcom/android/server/compat/PlatformCompat;Lcom/android/server/pm/resolution/ComponentResolverApi;Ljava/util/List;ZLandroid/content/Intent;Ljava/lang/String;I)V

    :cond_13
    const/4 v0, 0x0

    const/4 v2, 0x0

    move-object/from16 p0, p1

    move-object/from16 p1, v1

    move-object/from16 p2, v12

    move/from16 p3, v0

    move/from16 p4, v11

    move/from16 p5, v2

    move/from16 p6, v10

    move-object/from16 p7, v22

    .line 550
    invoke-interface/range {p0 .. p7}, Lcom/android/server/pm/Computer;->applyPostResolutionFilter(Ljava/util/List;Ljava/lang/String;ZIZILandroid/content/Intent;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public resolveIntentInternal(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JJIZI)Landroid/content/pm/ResolveInfo;
    .locals 13

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    .line 174
    invoke-virtual/range {v0 .. v12}, Lcom/android/server/pm/ResolveIntentHelper;->resolveIntentInternal(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JJIZIZI)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    return-object v0
.end method

.method public resolveIntentInternal(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JJIZIZI)Landroid/content/pm/ResolveInfo;
    .locals 28

    move-object/from16 v0, p0

    move/from16 v12, p8

    const-string v8, "PackageManager"

    const-wide/32 v13, 0x40000

    :try_start_0
    const-string/jumbo v1, "resolveIntent"

    .line 190
    invoke-static {v13, v14, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 192
    iget-object v1, v0, Lcom/android/server/pm/ResolveIntentHelper;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v1, v12}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v15, 0x0

    if-nez v1, :cond_0

    .line 233
    invoke-static {v13, v14}, Landroid/os/Trace;->traceEnd(J)V

    return-object v15

    .line 193
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p8

    move-object/from16 v4, p3

    move-wide/from16 v5, p4

    .line 195
    invoke-interface/range {v1 .. v6}, Lcom/android/server/pm/Computer;->isImplicitImageCaptureIntentAndNotSetByDpc(Landroid/content/Intent;ILjava/lang/String;J)Z

    move-result v7

    move-object/from16 v1, p1

    move-wide/from16 v2, p4

    move/from16 v4, p8

    move/from16 v5, p10

    move/from16 v6, p9

    .line 194
    invoke-interface/range {v1 .. v7}, Lcom/android/server/pm/Computer;->updateFlagsForResolve(JIIZZ)J

    move-result-wide v10

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string/jumbo v6, "resolve intent"

    move-object/from16 v1, p1

    move v2, v9

    move/from16 v3, p8

    .line 197
    invoke-interface/range {v1 .. v6}, Lcom/android/server/pm/Computer;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 201
    invoke-static {}, Lcom/android/server/pm/PersonaServiceHelper;->isForKnoxNFC()Z

    move-result v1

    const-wide/16 v16, 0x0

    if-eqz v1, :cond_1

    .line 202
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Resolving for NFC "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v9, p2

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " flag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/32 v1, 0x20000

    and-long/2addr v1, v10

    cmp-long v1, v1, v16

    if-eqz v1, :cond_2

    .line 205
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Get preferred activity for NFC of user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iget-object v6, v0, Lcom/android/server/pm/ResolveIntentHelper;->mPreferredActivityHelper:Lcom/android/server/pm/PreferredActivityHelper;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-wide v3, v10

    move/from16 v5, p8

    invoke-static/range {v0 .. v6}, Lcom/android/server/pm/PersonaServiceHelper;->getPreferredInfoForUser(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JILcom/android/server/pm/PreferredActivityHelper;)Landroid/content/pm/ResolveInfo;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 233
    invoke-static {v13, v14}, Landroid/os/Trace;->traceEnd(J)V

    return-object v0

    :cond_1
    move-object/from16 v9, p2

    :cond_2
    :try_start_2
    const-string/jumbo v1, "queryIntentActivities"

    .line 210
    invoke-static {v13, v14, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    const/16 v18, 0x1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-wide v4, v10

    move-wide/from16 v6, p6

    move/from16 v8, p10

    move/from16 v9, p8

    move-wide/from16 v26, v10

    move/from16 v10, p9

    move/from16 v11, v18

    .line 211
    invoke-interface/range {v1 .. v11}, Lcom/android/server/pm/Computer;->queryIntentActivitiesInternal(Landroid/content/Intent;Ljava/lang/String;JJIIZZ)Ljava/util/List;

    move-result-object v9

    if-eqz p11, :cond_3

    .line 215
    iget-object v1, v0, Lcom/android/server/pm/ResolveIntentHelper;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

    iget-object v2, v0, Lcom/android/server/pm/ResolveIntentHelper;->mHandler:Landroid/os/Handler;

    move-object/from16 v18, p2

    move/from16 v19, p10

    move/from16 v20, p12

    move-object/from16 v21, v9

    move-object/from16 v22, v1

    move-object/from16 v23, p3

    move-object/from16 v24, p1

    move-object/from16 v25, v2

    invoke-static/range {v18 .. v25}, Lcom/android/server/pm/ResolveIntentHelper;->filterNonExportedComponents(Landroid/content/Intent;IILjava/util/List;Lcom/android/server/compat/PlatformCompat;Ljava/lang/String;Lcom/android/server/pm/Computer;Landroid/os/Handler;)V

    .line 218
    :cond_3
    invoke-static {v13, v14}, Landroid/os/Trace;->traceEnd(J)V

    .line 221
    invoke-static/range {p10 .. p10}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    const/16 v2, 0x2710

    const/16 v18, 0x1

    const/16 v19, 0x0

    if-lt v1, v2, :cond_4

    if-nez p9, :cond_4

    move/from16 v11, v18

    goto :goto_0

    :cond_4
    move/from16 v11, v19

    :goto_0
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-wide/from16 v5, v26

    move-wide/from16 v7, p6

    move/from16 v10, p8

    .line 224
    invoke-virtual/range {v1 .. v11}, Lcom/android/server/pm/ResolveIntentHelper;->chooseBestActivity(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JJLjava/util/List;IZ)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    const-wide/16 v1, 0x1

    and-long v1, p6, v1

    cmp-long v1, v1, v16

    if-eqz v1, :cond_5

    goto :goto_1

    :cond_5
    move/from16 v18, v19

    :goto_1
    if-eqz v18, :cond_6

    if-eqz v0, :cond_6

    .line 228
    iget-boolean v1, v0, Landroid/content/pm/ResolveInfo;->handleAllWebDataURI:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_6

    .line 233
    invoke-static {v13, v14}, Landroid/os/Trace;->traceEnd(J)V

    return-object v15

    :cond_6
    invoke-static {v13, v14}, Landroid/os/Trace;->traceEnd(J)V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {v13, v14}, Landroid/os/Trace;->traceEnd(J)V

    .line 234
    throw v0
.end method

.method public resolveServiceInternal(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JII)Landroid/content/pm/ResolveInfo;
    .locals 10

    move-object v0, p0

    .line 558
    iget-object v0, v0, Lcom/android/server/pm/ResolveIntentHelper;->mUserManager:Lcom/android/server/pm/UserManagerService;

    move/from16 v8, p6

    invoke-virtual {v0, v8}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    const/4 v9, 0x0

    if-nez v0, :cond_0

    return-object v9

    :cond_0
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p1

    move-wide v2, p4

    move/from16 v4, p6

    move/from16 v5, p7

    .line 559
    invoke-interface/range {v1 .. v7}, Lcom/android/server/pm/Computer;->updateFlagsForResolve(JIIZZ)J

    move-result-wide v4

    const/4 v0, 0x0

    move-object v2, p2

    move-object v3, p3

    move/from16 v6, p6

    move/from16 v7, p7

    move v8, v0

    .line 561
    invoke-interface/range {v1 .. v8}, Lcom/android/server/pm/Computer;->queryIntentServicesInternal(Landroid/content/Intent;Ljava/lang/String;JIIZ)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 564
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_1

    const/4 v1, 0x0

    .line 567
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    return-object v0

    :cond_1
    return-object v9
.end method
