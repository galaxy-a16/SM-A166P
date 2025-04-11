.class public abstract Lcom/android/server/pm/ShortcutPackageItem;
.super Ljava/lang/Object;
.source "ShortcutPackageItem.java"


# instance fields
.field public final mLock:Ljava/lang/Object;

.field public final mPackageInfo:Lcom/android/server/pm/ShortcutPackageInfo;

.field public final mPackageName:Ljava/lang/String;

.field public final mPackageUserId:I

.field public final mSaveShortcutPackageRunner:Ljava/lang/Runnable;

.field public mShortcutBitmapSaver:Lcom/android/server/pm/ShortcutBitmapSaver;

.field public mShortcutUser:Lcom/android/server/pm/ShortcutUser;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/ShortcutUser;ILjava/lang/String;Lcom/android/server/pm/ShortcutPackageInfo;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mLock:Ljava/lang/Object;

    new-instance v0, Lcom/android/server/pm/ShortcutPackageItem$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/pm/ShortcutPackageItem$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/ShortcutPackageItem;)V

    iput-object v0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mSaveShortcutPackageRunner:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iput p2, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageUserId:I

    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageName:Ljava/lang/String;

    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p4, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageInfo:Lcom/android/server/pm/ShortcutPackageInfo;

    new-instance p2, Lcom/android/server/pm/ShortcutBitmapSaver;

    iget-object p1, p1, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-direct {p2, p1}, Lcom/android/server/pm/ShortcutBitmapSaver;-><init>(Lcom/android/server/pm/ShortcutService;)V

    iput-object p2, p0, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutBitmapSaver:Lcom/android/server/pm/ShortcutBitmapSaver;

    return-void
.end method

.method public static getResilientFile(Ljava/io/File;)Lcom/android/server/pm/ResilientAtomicFile;
    .locals 8

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".backup"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".reservecopy"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v5, 0x1f9

    new-instance v0, Lcom/android/server/pm/ResilientAtomicFile;

    const-string/jumbo v6, "shortcut package item"

    const/4 v7, 0x0

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/pm/ResilientAtomicFile;-><init>(Ljava/io/File;Ljava/io/File;Ljava/io/File;ILjava/lang/String;Lcom/android/server/pm/ResilientAtomicFile$ReadEventLogger;)V

    return-object v0
.end method


# virtual methods
.method public attemptToRestoreIfNeededAndSave()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageInfo:Lcom/android/server/pm/ShortcutPackageInfo;

    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutPackageInfo;->isShadow()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v0, v0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageName:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageUserId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/ShortcutService;->isPackageInstalled(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageInfo:Lcom/android/server/pm/ShortcutPackageInfo;

    invoke-virtual {v1}, Lcom/android/server/pm/ShortcutPackageInfo;->hasSignatures()Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempted to restore package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/u"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " but signatures not found in the restore data."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/ShortcutService;->wtf(Ljava/lang/String;)V

    const/16 v0, 0x66

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageName:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageUserId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/ShortcutService;->getPackageInfoWithSignatures(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    iget-object v2, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageInfo:Lcom/android/server/pm/ShortcutPackageInfo;

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackageItem;->canRestoreAnyVersion()Z

    move-result v3

    invoke-virtual {v2, v0, v1, v3}, Lcom/android/server/pm/ShortcutPackageInfo;->canRestoreTo(Lcom/android/server/pm/ShortcutService;Landroid/content/pm/PackageInfo;Z)I

    move-result v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/server/pm/ShortcutPackageItem;->onRestored(I)V

    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageInfo:Lcom/android/server/pm/ShortcutPackageInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/pm/ShortcutPackageInfo;->setShadow(Z)V

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackageItem;->scheduleSave()V

    return-void
.end method

.method public abstract canRestoreAnyVersion()Z
.end method

.method public dumpCheckin(Z)Lorg/json/JSONObject;
    .locals 1

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v0, "name"

    iget-object p0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object p1
.end method

.method public getBitmapPathMayWait(Landroid/content/pm/ShortcutInfo;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutBitmapSaver:Lcom/android/server/pm/ShortcutBitmapSaver;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutBitmapSaver;->getBitmapPathMayWaitLocked(Landroid/content/pm/ShortcutInfo;)Ljava/lang/String;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public abstract getOwnerUserId()I
.end method

.method public getPackageInfo()Lcom/android/server/pm/ShortcutPackageInfo;
    .locals 0

    iget-object p0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageInfo:Lcom/android/server/pm/ShortcutPackageInfo;

    return-object p0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public getPackageUserId()I
    .locals 0

    iget p0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageUserId:I

    return p0
.end method

.method public abstract getShortcutPackageItemFile()Ljava/io/File;
.end method

.method public getUser()Lcom/android/server/pm/ShortcutUser;
    .locals 0

    iget-object p0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    return-object p0
.end method

.method public abstract onRestored(I)V
.end method

.method public refreshPackageSignatureAndSave()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageInfo:Lcom/android/server/pm/ShortcutPackageInfo;

    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutPackageInfo;->isShadow()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v0, v0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageInfo:Lcom/android/server/pm/ShortcutPackageInfo;

    invoke-virtual {v1, v0, p0}, Lcom/android/server/pm/ShortcutPackageInfo;->refreshSignature(Lcom/android/server/pm/ShortcutService;Lcom/android/server/pm/ShortcutPackageItem;)V

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackageItem;->scheduleSave()V

    return-void
.end method

.method public removeIcon(Landroid/content/pm/ShortcutInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutBitmapSaver:Lcom/android/server/pm/ShortcutBitmapSaver;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutBitmapSaver;->removeIcon(Landroid/content/pm/ShortcutInfo;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public removeShortcutPackageItem()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackageItem;->getShortcutPackageItemFile()Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/pm/ShortcutPackageItem;->getResilientFile(Ljava/io/File;)Lcom/android/server/pm/ResilientAtomicFile;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/pm/ResilientAtomicFile;->delete()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public replaceUser(Lcom/android/server/pm/ShortcutUser;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    return-void
.end method

.method public saveBitmap(Landroid/content/pm/ShortcutInfo;ILandroid/graphics/Bitmap$CompressFormat;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutBitmapSaver:Lcom/android/server/pm/ShortcutBitmapSaver;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/pm/ShortcutBitmapSaver;->saveBitmapLocked(Landroid/content/pm/ShortcutInfo;ILandroid/graphics/Bitmap$CompressFormat;I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public saveShortcutPackageItem()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackageItem;->waitForBitmapSaves()Z

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackageItem;->getShortcutPackageItemFile()Ljava/io/File;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackageItem;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/android/server/pm/ShortcutPackageItem;->saveToFileLocked(Ljava/io/File;Z)V

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackageItem;->scheduleSaveToAppSearchLocked()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public saveToFileLocked(Ljava/io/File;Z)V
    .locals 4

    invoke-static {p1}, Lcom/android/server/pm/ShortcutPackageItem;->getResilientFile(Ljava/io/File;)Lcom/android/server/pm/ResilientAtomicFile;

    move-result-object p1

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/pm/ResilientAtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v1
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_0

    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newFastSerializer()Lcom/android/modules/utils/TypedXmlSerializer;

    move-result-object v2

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-static {v1}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Lcom/android/modules/utils/TypedXmlSerializer;

    move-result-object v2

    :goto_0
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v2, v0, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-virtual {p0, v2, p2}, Lcom/android/server/pm/ShortcutPackageItem;->saveToXml(Lcom/android/modules/utils/TypedXmlSerializer;Z)V

    invoke-interface {v2}, Lcom/android/modules/utils/TypedXmlSerializer;->endDocument()V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {p1, v1}, Lcom/android/server/pm/ResilientAtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_0
    move-exception p0

    move-object v0, v1

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_1
    move-exception p0

    :goto_1
    :try_start_2
    const-string p2, "ShortcutService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to write to file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/pm/ResilientAtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p1, v0}, Lcom/android/server/pm/ResilientAtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/server/pm/ResilientAtomicFile;->close()V

    :cond_1
    return-void

    :goto_3
    if-eqz p1, :cond_2

    :try_start_3
    invoke-virtual {p1}, Lcom/android/server/pm/ResilientAtomicFile;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_4
    throw p0
.end method

.method public abstract saveToXml(Lcom/android/modules/utils/TypedXmlSerializer;Z)V
.end method

.method public scheduleSave()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v0, v0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    iget-object p0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mSaveShortcutPackageRunner:Ljava/lang/Runnable;

    invoke-virtual {v0, p0, p0}, Lcom/android/server/pm/ShortcutService;->injectPostToHandlerDebounced(Ljava/lang/Object;Ljava/lang/Runnable;)V

    return-void
.end method

.method public scheduleSaveToAppSearchLocked()V
    .locals 0

    return-void
.end method

.method public verifyStates()V
    .locals 0

    return-void
.end method

.method public waitForBitmapSaves()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutBitmapSaver:Lcom/android/server/pm/ShortcutBitmapSaver;

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutBitmapSaver;->waitForAllSavesLocked()Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
