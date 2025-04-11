.class public Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;
.super Ljava/lang/Thread;
.source "PackageFeatureControllerImpl.java"

# interfaces
.implements Lcom/samsung/android/server/packagefeature/PackageFeatureController;
.implements Lcom/samsung/android/server/packagefeature/core/PackageFeatureSettings$Callback;
.implements Ljava/util/function/Consumer;


# instance fields
.field public mGetFileDescriptor:Ljava/util/function/Function;

.field public mHandler:Landroid/os/Handler;

.field public final mLock:Ljava/lang/Object;

.field public mLogger:Lcom/samsung/android/server/util/CoreLogger;

.field public mPackageFeatures:Lcom/samsung/android/server/packagefeature/core/PackageFeatures;

.field public mSettings:Lcom/samsung/android/server/packagefeature/core/PackageFeatureSettings;

.field public mShellCommand:Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand;

.field public mStarted:Z

.field public final mTmpUpdateRequestedGroupNames:Ljava/util/Set;

.field public final mUpdateGroupDataImmediately:Ljava/lang/Runnable;

.field public final mUpdateRequestedGroupNames:Ljava/util/Set;


# direct methods
.method public static synthetic $r8$lambda$ELGsGgeZ5_1cE7Efwdv1sCHAPWA(Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;Ljava/lang/String;J)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;->lambda$updateGroupData$0(Ljava/lang/String;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$c8HKCfW3K2D8av1rhNzjhe6T2oQ(Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;->updateGroupDataImmediately()V

    return-void
.end method

.method public static synthetic $r8$lambda$gAMjQVSQQe9S47pU3XhxL36Q9Ac(Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;Ljava/lang/String;J)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;->updateGroupData(Ljava/lang/String;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$z-_LdQoN8INGd4rLdEy3JPIkb64(Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;->lambda$initializeGroups$1(Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 83
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 67
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;->mLock:Ljava/lang/Object;

    .line 78
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;->mUpdateRequestedGroupNames:Ljava/util/Set;

    .line 79
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;->mTmpUpdateRequestedGroupNames:Ljava/util/Set;

    .line 81
    new-instance v0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;)V

    iput-object v0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;->mUpdateGroupDataImmediately:Ljava/lang/Runnable;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;-><init>()V

    return-void
.end method

.method public static getController()Lcom/samsung/android/server/packagefeature/PackageFeatureController;
    .locals 1

    .line 60
    sget-object v0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl$LazyHolder;->sController:Lcom/samsung/android/server/packagefeature/PackageFeatureController;

    return-object v0
.end method

.method private synthetic lambda$initializeGroups$1(Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;)V
    .locals 1

    .line 235
    new-instance v0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl$$ExternalSyntheticLambda4;-><init>(Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;)V

    invoke-virtual {p1, v0}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;->initialize(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method private synthetic lambda$updateGroupData$0(Ljava/lang/String;J)V
    .locals 1

    .line 170
    invoke-virtual {p0}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;->getGroupNames()Ljava/util/Set;

    move-result-object v0

    if-nez p1, :cond_0

    .line 172
    iget-object p1, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;->mTmpUpdateRequestedGroupNames:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 173
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 174
    iget-object v0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;->mTmpUpdateRequestedGroupNames:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 178
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;->mUpdateGroupDataImmediately:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 179
    iget-object p1, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;->mUpdateGroupDataImmediately:Ljava/lang/Runnable;

    invoke-virtual {p1, p0, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method


# virtual methods
.method public deleteCacheFiles()Ljava/lang/String;
    .locals 0

    .line 241
    invoke-static {}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtil;->deleteCacheFiles()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 3

    const-string v0, "PackageFeatureController"

    .line 207
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 209
    iget-object v0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 210
    :try_start_0
    iget-boolean v1, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;->mStarted:Z

    if-nez v1, :cond_0

    const-string v1, "dump"

    .line 211
    invoke-virtual {p0, v1, p1}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;->logNotStarted(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 212
    monitor-exit v0

    return-void

    .line 214
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;->mPackageFeatures:Lcom/samsung/android/server/packagefeature/core/PackageFeatures;

    const-string v2, "  "

    invoke-virtual {v1, p1, v2}, Lcom/samsung/android/server/packagefeature/core/PackageFeatures;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 215
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    iget-object p0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;->mLogger:Lcom/samsung/android/server/util/CoreLogger;

    const-string v0, "  "

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/server/util/CoreLogger;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p0

    .line 215
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public executeDebugMode(Lcom/samsung/android/server/packagefeature/PackageFeature;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 247
    iget-object v0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 248
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;->mPackageFeatures:Lcom/samsung/android/server/packagefeature/core/PackageFeatures;

    iget-object v2, p1, Lcom/samsung/android/server/packagefeature/PackageFeature;->mGroup:Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;

    iget-object v2, v2, Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/samsung/android/server/packagefeature/core/PackageFeatures;->getGroup(Ljava/lang/String;)Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;

    move-result-object v1

    if-nez v1, :cond_0

    const-string p1, "Group is null."

    goto :goto_0

    .line 251
    :cond_0
    iget-object p1, p1, Lcom/samsung/android/server/packagefeature/PackageFeature;->mName:Ljava/lang/String;

    invoke-virtual {v1, p1, p2, p3}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;->executeDebugMode(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 252
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 253
    iget-object p0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;->mLogger:Lcom/samsung/android/server/util/CoreLogger;

    const/4 p2, 0x3

    invoke-virtual {p0, p2, p1}, Lcom/samsung/android/server/util/CoreLogger;->log(ILjava/lang/String;)V

    return-object p1

    :catchall_0
    move-exception p0

    .line 252
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public executeShellCommand(Ljava/io/PrintWriter;[Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 221
    iget-object v0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 222
    :try_start_0
    iget-boolean v1, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;->mStarted:Z

    if-nez v1, :cond_0

    const-string p2, "executeShellCommand"

    .line 223
    invoke-virtual {p0, p2, p1}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;->logNotStarted(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 224
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    .line 226
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;->mShellCommand:Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand;

    if-nez v1, :cond_1

    .line 227
    new-instance v1, Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand;-><init>(Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;)V

    iput-object v1, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;->mShellCommand:Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand;

    .line 229
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 230
    iget-object p0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;->mShellCommand:Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand;

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand;->executeShellCommand(Ljava/io/PrintWriter;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0

    :catchall_0
    move-exception p0

    .line 229
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public getGroupNames()Ljava/util/Set;
    .locals 3

    .line 105
    iget-object v0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 106
    :try_start_0
    iget-boolean v1, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;->mStarted:Z

    if-nez v1, :cond_0

    const-string v1, "getGroupNames"

    const/4 v2, 0x0

    .line 107
    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;->logNotStarted(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 108
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    monitor-exit v0

    return-object p0

    .line 110
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    iget-object p0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;->mPackageFeatures:Lcom/samsung/android/server/packagefeature/core/PackageFeatures;

    invoke-virtual {p0}, Lcom/samsung/android/server/packagefeature/core/PackageFeatures;->getGroupNames()Ljava/util/Set;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    .line 110
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public getScpmVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 266
    iget-object v0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 267
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;->mPackageFeatures:Lcom/samsung/android/server/packagefeature/core/PackageFeatures;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/packagefeature/core/PackageFeatures;->getGroup(Ljava/lang/String;)Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 269
    invoke-virtual {p0}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;->getCurrentVersion()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    monitor-exit v0

    return-object p0

    .line 271
    :cond_0
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public initializeGroups()V
    .locals 3

    .line 234
    iget-object v0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 235
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;->mPackageFeatures:Lcom/samsung/android/server/packagefeature/core/PackageFeatures;

    new-instance v2, Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/server/packagefeature/core/PackageFeatures;->forAllGroups(Ljava/util/function/Consumer;)V

    .line 236
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final logNotStarted(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 2

    .line 259
    iget-object p0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;->mLogger:Lcom/samsung/android/server/util/CoreLogger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "The controller has not started yet."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/server/util/CoreLogger;->log(ILjava/lang/String;)V

    if-eqz p2, :cond_0

    .line 261
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onSettingsChanged()V
    .locals 4

    .line 197
    iget-object v0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;->mSettings:Lcom/samsung/android/server/packagefeature/core/PackageFeatureSettings;

    invoke-virtual {v0}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureSettings;->isAllFeaturesDisabled()Z

    move-result v0

    .line 198
    iget-object v1, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 199
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;->mPackageFeatures:Lcom/samsung/android/server/packagefeature/core/PackageFeatures;

    invoke-virtual {v2, v0}, Lcom/samsung/android/server/packagefeature/core/PackageFeatures;->updateAllFeaturesDisabled(Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 200
    iget-object p0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;->mLogger:Lcom/samsung/android/server/util/CoreLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onSettingsChanged, mAllFeaturesDisabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x3

    invoke-virtual {p0, v2, v0}, Lcom/samsung/android/server/util/CoreLogger;->log(ILjava/lang/String;)V

    .line 202
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public registerCallback(Lcom/samsung/android/server/packagefeature/PackageFeature;Lcom/samsung/android/server/packagefeature/PackageFeatureCallback;)V
    .locals 2

    .line 123
    iget-object v0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 124
    :try_start_0
    iget-boolean v1, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;->mStarted:Z

    if-nez v1, :cond_0

    const-string/jumbo p1, "registerCallback"

    const/4 p2, 0x0

    .line 125
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;->logNotStarted(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 126
    monitor-exit v0

    return-void

    .line 128
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;->mPackageFeatures:Lcom/samsung/android/server/packagefeature/core/PackageFeatures;

    iget-object v1, p1, Lcom/samsung/android/server/packagefeature/PackageFeature;->mGroup:Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;

    iget-object v1, v1, Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;->mName:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/samsung/android/server/packagefeature/core/PackageFeatures;->getGroup(Ljava/lang/String;)Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;->registerCallback(Lcom/samsung/android/server/packagefeature/PackageFeature;Lcom/samsung/android/server/packagefeature/PackageFeatureCallback;)V

    .line 130
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public run()V
    .locals 5

    .line 135
    iget-object v0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;->mLogger:Lcom/samsung/android/server/util/CoreLogger;

    const/4 v1, 0x3

    invoke-static {}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtil;->deleteLegacyFiles()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/util/CoreLogger;->log(ILjava/lang/String;)V

    .line 136
    invoke-virtual {p0}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;->initializeGroups()V

    .line 138
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 140
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    .line 141
    iget-object v1, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;->mUpdateRequestedGroupNames:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 142
    iget-object v3, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;->mGetFileDescriptor:Ljava/util/function/Function;

    if-nez v3, :cond_0

    goto :goto_2

    .line 146
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;->mPackageFeatures:Lcom/samsung/android/server/packagefeature/core/PackageFeatures;

    invoke-virtual {v3, v2}, Lcom/samsung/android/server/packagefeature/core/PackageFeatures;->getGroup(Ljava/lang/String;)Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_1

    .line 150
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;->mGetFileDescriptor:Ljava/util/function/Function;

    invoke-virtual {v2, v3}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;->updateGroupDataFromScpm(Ljava/util/function/Function;)V

    goto :goto_1

    .line 152
    :cond_2
    :goto_2
    iget-object v1, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;->mUpdateRequestedGroupNames:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v1

    .line 154
    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;->mLogger:Lcom/samsung/android/server/util/CoreLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "What a Terrible Failure: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x6

    invoke-virtual {v2, v4, v3, v1}, Lcom/samsung/android/server/util/CoreLogger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 156
    :goto_3
    monitor-exit v0

    goto :goto_0

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0
.end method

.method public setFileDescriptorFunction(Ljava/util/function/Function;)V
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 117
    :try_start_0
    iput-object p1, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;->mGetFileDescriptor:Ljava/util/function/Function;

    .line 118
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public startController(Landroid/content/Context;Landroid/os/Handler;Lcom/samsung/android/server/util/CoreLogger;)V
    .locals 2

    .line 88
    iget-object v0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 89
    :try_start_0
    iget-boolean v1, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;->mStarted:Z

    if-eqz v1, :cond_0

    .line 90
    iget-object p0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;->mLogger:Lcom/samsung/android/server/util/CoreLogger;

    const-string p1, "The controller has already been started."

    const/4 p2, 0x5

    invoke-virtual {p0, p2, p1}, Lcom/samsung/android/server/util/CoreLogger;->log(ILjava/lang/String;)V

    .line 91
    monitor-exit v0

    return-void

    .line 94
    :cond_0
    iput-object p2, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;->mHandler:Landroid/os/Handler;

    .line 95
    iput-object p3, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;->mLogger:Lcom/samsung/android/server/util/CoreLogger;

    .line 96
    new-instance v1, Lcom/samsung/android/server/packagefeature/core/PackageFeatures;

    invoke-direct {v1, p1, p2, p0, p3}, Lcom/samsung/android/server/packagefeature/core/PackageFeatures;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/samsung/android/server/packagefeature/PackageFeatureController;Lcom/samsung/android/server/util/CoreLogger;)V

    iput-object v1, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;->mPackageFeatures:Lcom/samsung/android/server/packagefeature/core/PackageFeatures;

    .line 97
    new-instance p3, Lcom/samsung/android/server/packagefeature/core/PackageFeatureSettings;

    invoke-direct {p3, p1, p2, p0}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureSettings;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/samsung/android/server/packagefeature/core/PackageFeatureSettings$Callback;)V

    iput-object p3, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;->mSettings:Lcom/samsung/android/server/packagefeature/core/PackageFeatureSettings;

    .line 98
    new-instance p1, Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;)V

    invoke-virtual {p2, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x1

    .line 99
    iput-boolean p1, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;->mStarted:Z

    .line 100
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public updateGroupData(Ljava/lang/String;)V
    .locals 2

    const-wide/16 v0, 0x3e8

    .line 162
    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;->updateGroupData(Ljava/lang/String;J)V

    return-void
.end method

.method public final updateGroupData(Ljava/lang/String;J)V
    .locals 3

    .line 166
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;->mLogger:Lcom/samsung/android/server/util/CoreLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateGroupData groupName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/server/util/CoreLogger;->log(ILjava/lang/String;)V

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;Ljava/lang/String;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final updateGroupDataImmediately()V
    .locals 4

    .line 184
    iget-object v0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 185
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;->mUpdateRequestedGroupNames:Ljava/util/Set;

    iget-object v2, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;->mTmpUpdateRequestedGroupNames:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 186
    iget-object v1, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;->mTmpUpdateRequestedGroupNames:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 187
    iget-object v1, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;->mUpdateRequestedGroupNames:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 188
    monitor-exit v0

    return-void

    .line 190
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;->mLogger:Lcom/samsung/android/server/util/CoreLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateGroupData, Queue="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;->mUpdateRequestedGroupNames:Ljava/util/Set;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v1, v3, v2}, Lcom/samsung/android/server/util/CoreLogger;->log(ILjava/lang/String;)V

    .line 191
    iget-object p0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 192
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
