.class public Lcom/samsung/android/localeoverlaymanager/ApkExtractionTask;
.super Ljava/lang/Object;
.source "ApkExtractionTask.java"


# instance fields
.field public mContextRef:Ljava/lang/ref/WeakReference;

.field public mCurrentThread:Ljava/lang/Thread;

.field public mExtractedLocaleApks:Ljava/util/Set;

.field public mExtractorRunnable:Lcom/samsung/android/localeoverlaymanager/ApkExtractorRunnable;

.field public mLocaleLanguages:Ljava/util/Set;

.field public mShouldReplace:Z

.field public mTargetPackage:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/localeoverlaymanager/ApkExtractionTask;->mExtractedLocaleApks:Ljava/util/Set;

    .line 27
    new-instance v0, Lcom/samsung/android/localeoverlaymanager/ApkExtractorRunnable;

    new-instance v1, Lcom/samsung/android/localeoverlaymanager/SevenZFileCopier;

    invoke-direct {v1}, Lcom/samsung/android/localeoverlaymanager/SevenZFileCopier;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/localeoverlaymanager/ApkExtractorRunnable;-><init>(Lcom/samsung/android/localeoverlaymanager/ApkExtractionTask;Lcom/samsung/android/localeoverlaymanager/CompressedAssetCopier;)V

    iput-object v0, p0, Lcom/samsung/android/localeoverlaymanager/ApkExtractionTask;->mExtractorRunnable:Lcom/samsung/android/localeoverlaymanager/ApkExtractorRunnable;

    return-void
.end method


# virtual methods
.method public getContextRef()Ljava/lang/ref/WeakReference;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/samsung/android/localeoverlaymanager/ApkExtractionTask;->mContextRef:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public getCurrentThread()Ljava/lang/Thread;
    .locals 1

    .line 45
    invoke-static {}, Lcom/samsung/android/localeoverlaymanager/ApkExtractionManager;->getInstance()Lcom/samsung/android/localeoverlaymanager/ApkExtractionManager;

    move-result-object v0

    monitor-enter v0

    .line 46
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/localeoverlaymanager/ApkExtractionTask;->mCurrentThread:Ljava/lang/Thread;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 47
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getExtractedLocaleApks()Ljava/util/Set;
    .locals 0

    .line 136
    iget-object p0, p0, Lcom/samsung/android/localeoverlaymanager/ApkExtractionTask;->mExtractedLocaleApks:Ljava/util/Set;

    return-object p0
.end method

.method public getLocaleLanguages()Ljava/util/Set;
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/samsung/android/localeoverlaymanager/ApkExtractionTask;->mLocaleLanguages:Ljava/util/Set;

    return-object p0
.end method

.method public getRunnable()Ljava/lang/Runnable;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/samsung/android/localeoverlaymanager/ApkExtractionTask;->mExtractorRunnable:Lcom/samsung/android/localeoverlaymanager/ApkExtractorRunnable;

    return-object p0
.end method

.method public getTargetPackage()Ljava/lang/String;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/samsung/android/localeoverlaymanager/ApkExtractionTask;->mTargetPackage:Ljava/lang/String;

    return-object p0
.end method

.method public initializeTask(Ljava/lang/String;Ljava/util/Set;Landroid/content/Context;Z)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/samsung/android/localeoverlaymanager/ApkExtractionTask;->mTargetPackage:Ljava/lang/String;

    .line 67
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/samsung/android/localeoverlaymanager/ApkExtractionTask;->mContextRef:Ljava/lang/ref/WeakReference;

    .line 68
    iput-object p2, p0, Lcom/samsung/android/localeoverlaymanager/ApkExtractionTask;->mLocaleLanguages:Ljava/util/Set;

    .line 69
    iput-boolean p4, p0, Lcom/samsung/android/localeoverlaymanager/ApkExtractionTask;->mShouldReplace:Z

    .line 70
    iget-object p0, p0, Lcom/samsung/android/localeoverlaymanager/ApkExtractionTask;->mExtractedLocaleApks:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public onApkExtracted(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 145
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/localeoverlaymanager/ApkExtractionTask;->onApkExtracted(Ljava/lang/String;Z)V

    return-void
.end method

.method public onApkExtracted(Ljava/lang/String;Z)V
    .locals 0

    .line 150
    iget-object p0, p0, Lcom/samsung/android/localeoverlaymanager/ApkExtractionTask;->mExtractedLocaleApks:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_0

    .line 152
    invoke-static {}, Lcom/samsung/android/localeoverlaymanager/ApkExtractionManager;->getInstance()Lcom/samsung/android/localeoverlaymanager/ApkExtractionManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/localeoverlaymanager/ApkExtractionManager;->setForceEnable()V

    :cond_0
    return-void
.end method

.method public onTaskComplete()V
    .locals 2

    .line 111
    invoke-static {}, Lcom/samsung/android/localeoverlaymanager/ApkExtractionManager;->getInstance()Lcom/samsung/android/localeoverlaymanager/ApkExtractionManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/localeoverlaymanager/ApkExtractionManager;->handleState(Lcom/samsung/android/localeoverlaymanager/ApkExtractionTask;I)V

    return-void
.end method

.method public onTaskFailed()V
    .locals 2

    .line 104
    invoke-static {}, Lcom/samsung/android/localeoverlaymanager/ApkExtractionManager;->getInstance()Lcom/samsung/android/localeoverlaymanager/ApkExtractionManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/localeoverlaymanager/ApkExtractionManager;->handleState(Lcom/samsung/android/localeoverlaymanager/ApkExtractionTask;I)V

    return-void
.end method

.method public shouldReplace()Z
    .locals 0

    .line 162
    iget-boolean p0, p0, Lcom/samsung/android/localeoverlaymanager/ApkExtractionTask;->mShouldReplace:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ApkExtractionTask{mTargetPackage=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/localeoverlaymanager/ApkExtractionTask;->mTargetPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", mLocaleLanguages="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/localeoverlaymanager/ApkExtractionTask;->mLocaleLanguages:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mShouldReplace="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/localeoverlaymanager/ApkExtractionTask;->mShouldReplace:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mContextRef="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/localeoverlaymanager/ApkExtractionTask;->mContextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mExtractorRunnable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/localeoverlaymanager/ApkExtractionTask;->mExtractorRunnable:Lcom/samsung/android/localeoverlaymanager/ApkExtractorRunnable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mCurrentThread="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/localeoverlaymanager/ApkExtractionTask;->mCurrentThread:Ljava/lang/Thread;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mExtractedLocaleApks="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/localeoverlaymanager/ApkExtractionTask;->mExtractedLocaleApks:Ljava/util/Set;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
