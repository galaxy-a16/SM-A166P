.class public Lcom/android/server/wm/CustomAspectRatioController;
.super Lcom/android/server/wm/PackagesChange;
.source "CustomAspectRatioController.java"

# interfaces
.implements Lcom/android/server/wm/BoundsCompatController;


# instance fields
.field public mDefaultDisplayAspectRatio:F

.field public mDisplayMaxAspectRatio:F

.field public mDisplayMaxAspectRatioWithCutout:F

.field public final mDumpInterface:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange$DumpInterface;

.field public final mFullScreenUtils:Lcom/samsung/android/server/util/FullScreenAppsSupportUtils;

.field public mLegacyController:Lcom/android/server/wm/CustomAspectRatioLegacyController;

.field public mPackageWithAspectRatioApplied:Ljava/util/concurrent/ConcurrentHashMap;

.field public mSupportsMaxAspectRatio:Z

.field public final mUserChange:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;


# direct methods
.method public static synthetic $r8$lambda$157OqcIzn_QpaiVLErRLRR6ZSh0(ILjava/lang/String;Ljava/lang/Integer;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/server/wm/CustomAspectRatioController;->lambda$new$0(ILjava/lang/String;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .locals 4

    .line 108
    invoke-direct {p0, p1}, Lcom/android/server/wm/PackagesChange;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    .line 85
    new-instance p1, Lcom/android/server/wm/CustomAspectRatioController$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Lcom/android/server/wm/CustomAspectRatioController$$ExternalSyntheticLambda0;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/CustomAspectRatioController;->mDumpInterface:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange$DumpInterface;

    .line 87
    new-instance v0, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;

    sget-object v1, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;->CONVENTIONAL_MODE_DIRECTORY:Ljava/lang/String;

    const-string v2, "CustomAspectRatioPackageMap"

    const/4 v3, 0x2

    invoke-direct {v0, v3, v1, v2, p1}, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange$DumpInterface;)V

    iput-object v0, p0, Lcom/android/server/wm/CustomAspectRatioController;->mUserChange:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;

    .line 94
    invoke-static {}, Lcom/samsung/android/server/util/FullScreenAppsSupportUtils;->get()Lcom/samsung/android/server/util/FullScreenAppsSupportUtils;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/CustomAspectRatioController;->mFullScreenUtils:Lcom/samsung/android/server/util/FullScreenAppsSupportUtils;

    .line 109
    filled-new-array {v0}, [Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/PackagesChange;->setUserChanges([Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;)V

    return-void
.end method

.method public static isFullScreenMode(I)Z
    .locals 2

    .line 0
    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public static synthetic lambda$new$0(ILjava/lang/String;Ljava/lang/Integer;)Ljava/lang/String;
    .locals 0

    .line 86
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/android/server/wm/CustomAspectRatioController;->policyToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static policyToString(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    .line 271
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "UnchangeableAspectRatio"

    return-object p0

    :cond_1
    const-string p0, "UnchangeableFullScreen"

    return-object p0

    :cond_2
    const-string p0, "FullScreen"

    return-object p0

    :cond_3
    const-string p0, "Default"

    return-object p0
.end method


# virtual methods
.method public adjustBounds(Lcom/android/server/wm/ActivityRecord;Landroid/content/res/Configuration;)V
    .locals 0

    .line 0
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 3

    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mDisplayMaxAspectRatio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/CustomAspectRatioController;->mDisplayMaxAspectRatio:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mDisplayMaxAspectRatioWithCutout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/CustomAspectRatioController;->mDisplayMaxAspectRatioWithCutout:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mDefaultDisplayAspectRatio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/CustomAspectRatioController;->mDefaultDisplayAspectRatio:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 250
    iget-boolean v0, p0, Lcom/android/server/wm/CustomAspectRatioController;->mSupportsMaxAspectRatio:Z

    if-eqz v0, :cond_0

    .line 251
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mSupportsMaxAspectRatio=true"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/CustomAspectRatioController;->mPackageWithAspectRatioApplied:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mPackageWithAspectRatioApplied"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 255
    iget-object p0, p0, Lcom/android/server/wm/CustomAspectRatioController;->mPackageWithAspectRatioApplied:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 256
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public getChangeValuesAsUser(I)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 232
    iget-object p0, p0, Lcom/android/server/wm/CustomAspectRatioController;->mUserChange:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;->getChangeValuesAsUser(I)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    return-object p0
.end method

.method public getMaxAspectRatioPolicy(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ActivityInfo;)I
    .locals 9

    .line 126
    iget-boolean v0, p0, Lcom/android/server/wm/CustomAspectRatioController;->mSupportsMaxAspectRatio:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/CustomAspectRatioController;->mLegacyController:Lcom/android/server/wm/CustomAspectRatioLegacyController;

    if-eqz v0, :cond_1

    .line 130
    invoke-virtual {v0}, Lcom/android/server/wm/CustomAspectRatioLegacyController;->migrateIfNeeded()V

    const/4 v0, 0x0

    .line 131
    iput-object v0, p0, Lcom/android/server/wm/CustomAspectRatioController;->mLegacyController:Lcom/android/server/wm/CustomAspectRatioLegacyController;

    .line 134
    :cond_1
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 135
    iget-object v3, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 136
    iget-object v2, p0, Lcom/android/server/wm/CustomAspectRatioController;->mUserChange:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;

    invoke-virtual {v2, v0, v3}, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;->getValue(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    const/4 v8, 0x2

    if-eqz v2, :cond_3

    .line 138
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/wm/CustomAspectRatioController;->isUnchangeableFullScreenMode(ILandroid/content/pm/ApplicationInfo;Landroid/content/pm/ActivityInfo;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v8

    .line 141
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 143
    :cond_3
    iget-object v2, p0, Lcom/android/server/wm/CustomAspectRatioController;->mFullScreenUtils:Lcom/samsung/android/server/util/FullScreenAppsSupportUtils;

    .line 144
    invoke-virtual {v2, v3}, Lcom/samsung/android/server/util/FullScreenAppsSupportUtils;->containsInDefaultFullScreenList(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 145
    iget v4, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v5, 0x1

    const/4 v6, -0x1

    const/4 v7, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wm/CustomAspectRatioController;->setMaxAspectRatioPolicy(Ljava/lang/String;IZIZ)V

    .line 146
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/wm/CustomAspectRatioController;->isUnchangeableFullScreenMode(ILandroid/content/pm/ApplicationInfo;Landroid/content/pm/ActivityInfo;)Z

    move-result p0

    if-eqz p0, :cond_4

    return v8

    :cond_4
    const/4 p0, 0x1

    return p0

    :cond_5
    if-eqz p2, :cond_7

    .line 153
    invoke-virtual {p2}, Landroid/content/pm/ActivityInfo;->getMaxAspectRatio()F

    move-result v2

    invoke-static {v2}, Lcom/android/server/wm/BoundsCompatRecord;->hasDefinedAspectRatio(F)Z

    move-result v2

    if-nez v2, :cond_6

    .line 154
    invoke-virtual {p2}, Landroid/content/pm/ActivityInfo;->getMinAspectRatio()F

    move-result v2

    invoke-static {v2}, Lcom/android/server/wm/BoundsCompatRecord;->hasDefinedAspectRatio(F)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_6
    return v1

    .line 157
    :cond_7
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/wm/CustomAspectRatioController;->isUnchangeableFullScreenMode(ILandroid/content/pm/ApplicationInfo;Landroid/content/pm/ActivityInfo;)Z

    move-result p0

    if-eqz p0, :cond_8

    move v1, v8

    :cond_8
    return v1
.end method

.method public isUnchangeableFullScreenMode(ILandroid/content/pm/ApplicationInfo;Landroid/content/pm/ActivityInfo;)Z
    .locals 3

    .line 163
    iget-object v0, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 164
    iget-object v1, p0, Lcom/android/server/wm/CustomAspectRatioController;->mPackageWithAspectRatioApplied:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 165
    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v2

    :cond_0
    if-eqz p3, :cond_1

    .line 172
    invoke-virtual {p3}, Landroid/content/pm/ActivityInfo;->getMaxAspectRatio()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/CustomAspectRatioController;->isUsableAspectRatio(F)Z

    move-result p1

    if-eqz p1, :cond_3

    return v2

    .line 176
    :cond_1
    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/PackagesChange;->getLauncherActivities(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/content/pm/ResolveInfo;

    .line 177
    iget-object p3, p3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p3}, Landroid/content/pm/ActivityInfo;->getMaxAspectRatio()F

    move-result p3

    invoke-virtual {p0, p3}, Lcom/android/server/wm/CustomAspectRatioController;->isUsableAspectRatio(F)Z

    move-result p3

    if-eqz p3, :cond_2

    return v2

    .line 183
    :cond_3
    iget p1, p2, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit16 p1, p1, 0x1400

    const/4 p3, 0x1

    if-eqz p1, :cond_4

    return p3

    .line 186
    :cond_4
    iget p1, p2, Landroid/content/pm/ApplicationInfo;->maxAspectRatio:F

    invoke-virtual {p0, p1}, Lcom/android/server/wm/CustomAspectRatioController;->isUsableAspectRatio(F)Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz p1, :cond_5

    const-string v0, "android.max_aspect"

    .line 187
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/CustomAspectRatioController;->isUsableAspectRatio(F)Z

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_0

    .line 190
    :cond_5
    iget p0, p2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 p1, 0x1a

    if-lt p0, p1, :cond_6

    move v2, p3

    :cond_6
    :goto_0
    return v2
.end method

.method public final isUsableAspectRatio(F)Z
    .locals 1

    .line 194
    invoke-static {p1}, Lcom/android/server/wm/BoundsCompatRecord;->hasDefinedAspectRatio(F)Z

    move-result v0

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/android/server/wm/CustomAspectRatioController;->mDisplayMaxAspectRatio:F

    cmpg-float p0, p1, p0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onAspectRatioApplied(Lcom/android/server/wm/ActivityRecord;F)V
    .locals 2

    .line 203
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 204
    iget-object v1, p0, Lcom/android/server/wm/CustomAspectRatioController;->mPackageWithAspectRatioApplied:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v1, :cond_0

    .line 205
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/CustomAspectRatioController;->mPackageWithAspectRatioApplied:Ljava/util/concurrent/ConcurrentHashMap;

    .line 207
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/CustomAspectRatioController;->mPackageWithAspectRatioApplied:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 208
    iget-object p0, p0, Lcom/android/server/wm/CustomAspectRatioController;->mPackageWithAspectRatioApplied:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    .line 209
    invoke-virtual {p1}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", MaxAspectRatio="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 208
    invoke-virtual {p0, v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public onConfigurationChanged(Lcom/android/server/wm/DisplayContent;)V
    .locals 1

    .line 113
    invoke-interface {p0}, Lcom/android/server/wm/BoundsCompatController;->getBoundsCompatUtils()Lcom/android/server/wm/BoundsCompatUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/BoundsCompatUtils;->getDefaultDisplayAspectRatio()F

    move-result p1

    iput p1, p0, Lcom/android/server/wm/CustomAspectRatioController;->mDefaultDisplayAspectRatio:F

    .line 115
    iget-object p1, p0, Lcom/android/server/wm/CustomAspectRatioController;->mFullScreenUtils:Lcom/samsung/android/server/util/FullScreenAppsSupportUtils;

    const/4 v0, 0x0

    .line 116
    invoke-virtual {p1, v0}, Lcom/samsung/android/server/util/FullScreenAppsSupportUtils;->getDisplayMaxAspectRatio(Z)F

    move-result p1

    iput p1, p0, Lcom/android/server/wm/CustomAspectRatioController;->mDisplayMaxAspectRatio:F

    .line 117
    iget-object p1, p0, Lcom/android/server/wm/CustomAspectRatioController;->mFullScreenUtils:Lcom/samsung/android/server/util/FullScreenAppsSupportUtils;

    const/4 v0, 0x1

    .line 118
    invoke-virtual {p1, v0}, Lcom/samsung/android/server/util/FullScreenAppsSupportUtils;->getDisplayMaxAspectRatio(Z)F

    move-result p1

    iput p1, p0, Lcom/android/server/wm/CustomAspectRatioController;->mDisplayMaxAspectRatioWithCutout:F

    .line 119
    iget-object p1, p0, Lcom/android/server/wm/CustomAspectRatioController;->mFullScreenUtils:Lcom/samsung/android/server/util/FullScreenAppsSupportUtils;

    invoke-virtual {p1}, Lcom/samsung/android/server/util/FullScreenAppsSupportUtils;->supportsMaxAspectRatio()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/wm/CustomAspectRatioController;->mSupportsMaxAspectRatio:Z

    .line 121
    iget p1, p0, Lcom/android/server/wm/CustomAspectRatioController;->mDisplayMaxAspectRatio:F

    iget v0, p0, Lcom/android/server/wm/CustomAspectRatioController;->mDefaultDisplayAspectRatio:F

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Lcom/android/server/wm/CustomAspectRatioController;->mDisplayMaxAspectRatio:F

    return-void
.end method

.method public setMaxAspectRatioPolicy(Ljava/lang/String;IZIZ)V
    .locals 5

    .line 216
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p3, :cond_0

    .line 218
    iget-object v2, p0, Lcom/android/server/wm/CustomAspectRatioController;->mFullScreenUtils:Lcom/samsung/android/server/util/FullScreenAppsSupportUtils;

    .line 219
    invoke-virtual {v2, p1}, Lcom/samsung/android/server/util/FullScreenAppsSupportUtils;->containsInDefaultFullScreenList(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 220
    :goto_0
    iget-object v3, p0, Lcom/android/server/wm/CustomAspectRatioController;->mUserChange:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, p2, p1, v4, v2}, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;->putValue(ILjava/lang/String;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz p5, :cond_1

    if-eqz v2, :cond_2

    .line 221
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result p5

    if-eq p5, p3, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    .line 223
    iget-object p0, p0, Lcom/android/server/wm/PackagesChange;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    const-string/jumbo p5, "setMaxAspectRatioPolicy"

    invoke-static {p0, p1, p2, p5}, Lcom/android/server/wm/PackagesChange;->removeTaskWithoutRemoveFromRecents(Lcom/android/server/wm/ActivityTaskManagerService;Ljava/lang/String;ILjava/lang/String;)V

    .line 226
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "setMaxAspectRatioPolicy: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_4

    const-string p2, "enabled"

    goto :goto_2

    :cond_4
    const-string p2, "disabled"

    :goto_2
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", package="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", restartTaskId="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", updated="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PackageSettingsManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public shouldUpdatePosition()Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public supportsCustomLetterbox()Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method
