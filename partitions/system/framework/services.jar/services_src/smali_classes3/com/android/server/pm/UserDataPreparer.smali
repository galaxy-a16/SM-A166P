.class public Lcom/android/server/pm/UserDataPreparer;
.super Ljava/lang/Object;
.source "UserDataPreparer.java"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mInstallLock:Ljava/lang/Object;

.field public final mInstaller:Lcom/android/server/pm/Installer;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/Installer;Ljava/lang/Object;Landroid/content/Context;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p2, p0, Lcom/android/server/pm/UserDataPreparer;->mInstallLock:Ljava/lang/Object;

    .line 61
    iput-object p3, p0, Lcom/android/server/pm/UserDataPreparer;->mContext:Landroid/content/Context;

    .line 62
    iput-object p1, p0, Lcom/android/server/pm/UserDataPreparer;->mInstaller:Lcom/android/server/pm/Installer;

    return-void
.end method

.method public static getSerialNumber(Ljava/io/File;)I
    .locals 3

    .line 338
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "user.serial"

    invoke-static {p0, v0}, Landroid/system/Os;->getxattr(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p0

    .line 339
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_1

    .line 341
    :try_start_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_1

    return p0

    .line 343
    :catch_0
    :try_start_2
    new-instance p0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad serial number: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2
    .catch Landroid/system/ErrnoException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception p0

    .line 346
    iget v0, p0, Landroid/system/ErrnoException;->errno:I

    sget v1, Landroid/system/OsConstants;->ENODATA:I

    if-ne v0, v1, :cond_0

    const/4 p0, -0x1

    return p0

    .line 349
    :cond_0
    invoke-virtual {p0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object p0

    throw p0
.end method

.method public static setSerialNumber(Ljava/io/File;I)V
    .locals 2

    .line 323
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    .line 324
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "user.serial"

    sget v1, Landroid/system/OsConstants;->XATTR_CREATE:I

    invoke-static {p0, v0, p1, v1}, Landroid/system/Os;->setxattr(Ljava/lang/String;Ljava/lang/String;[BI)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 326
    invoke-virtual {p0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public destroyUserData(II)V
    .locals 3

    .line 142
    iget-object v0, p0, Lcom/android/server/pm/UserDataPreparer;->mInstallLock:Ljava/lang/Object;

    monitor-enter v0

    .line 143
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/UserDataPreparer;->mContext:Landroid/content/Context;

    const-class v2, Landroid/os/storage/StorageManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    .line 148
    invoke-virtual {v1}, Landroid/os/storage/StorageManager;->getWritablePrivateVolumes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/VolumeInfo;

    .line 149
    invoke-virtual {v2}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 151
    invoke-virtual {p0, v2, p1, p2}, Lcom/android/server/pm/UserDataPreparer;->destroyUserDataLI(Ljava/lang/String;II)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 154
    invoke-virtual {p0, v1, p1, p2}, Lcom/android/server/pm/UserDataPreparer;->destroyUserDataLI(Ljava/lang/String;II)V

    .line 155
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public destroyUserDataLI(Ljava/lang/String;II)V
    .locals 2

    .line 159
    iget-object v0, p0, Lcom/android/server/pm/UserDataPreparer;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    .line 162
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/UserDataPreparer;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/pm/Installer;->destroyUserData(Ljava/lang/String;II)V

    .line 165
    sget-object v1, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    invoke-static {p1, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    and-int/lit8 v1, p3, 0x1

    if-eqz v1, :cond_0

    .line 167
    invoke-virtual {p0, p2}, Lcom/android/server/pm/UserDataPreparer;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Landroid/os/FileUtils;->deleteContentsAndDir(Ljava/io/File;)Z

    .line 170
    invoke-virtual {p0, p2}, Lcom/android/server/pm/UserDataPreparer;->getDataSystemDeDirectory(I)Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Landroid/os/FileUtils;->deleteContents(Ljava/io/File;)Z

    :cond_0
    and-int/lit8 v1, p3, 0x2

    if-eqz v1, :cond_1

    .line 175
    invoke-virtual {p0, p2}, Lcom/android/server/pm/UserDataPreparer;->getDataSystemCeDirectory(I)Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Landroid/os/FileUtils;->deleteContents(Ljava/io/File;)Z

    .line 180
    :cond_1
    invoke-virtual {v0, p1, p2, p3}, Landroid/os/storage/StorageManager;->destroyUserStorage(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 183
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to destroy user "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " on volume "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x5

    invoke-static {p1, p0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public enforceSerialNumber(Ljava/io/File;I)V
    .locals 2

    .line 299
    invoke-static {p1}, Lcom/android/server/pm/UserDataPreparer;->getSerialNumber(Ljava/io/File;)I

    move-result p0

    .line 300
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Found "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " with serial number "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UserDataPreparer"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    .line 303
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Serial number missing on "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "; assuming current is valid"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    :try_start_0
    invoke-static {p1, p2}, Lcom/android/server/pm/UserDataPreparer;->setSerialNumber(Ljava/io/File;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 307
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to set serial number on "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    if-ne p0, p2, :cond_1

    :goto_0
    return-void

    .line 311
    :cond_1
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Found serial number "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " doesn\'t match expected "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getDataMiscCeDirectory(I)Ljava/io/File;
    .locals 0

    .line 257
    invoke-static {p1}, Landroid/os/Environment;->getDataMiscCeDirectory(I)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public getDataMiscDeDirectory(I)Ljava/io/File;
    .locals 0

    .line 267
    invoke-static {p1}, Landroid/os/Environment;->getDataMiscDeDirectory(I)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public getDataSystemCeDirectory(I)Ljava/io/File;
    .locals 0

    .line 262
    invoke-static {p1}, Landroid/os/Environment;->getDataSystemCeDirectory(I)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public getDataSystemDeDirectory(I)Ljava/io/File;
    .locals 0

    .line 282
    invoke-static {p1}, Landroid/os/Environment;->getDataSystemDeDirectory(I)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public getDataUserCeDirectory(Ljava/lang/String;I)Ljava/io/File;
    .locals 0

    .line 277
    invoke-static {p1, p2}, Landroid/os/Environment;->getDataUserCeDirectory(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public getDataUserDeDirectory(Ljava/lang/String;I)Ljava/io/File;
    .locals 0

    .line 287
    invoke-static {p1, p2}, Landroid/os/Environment;->getDataUserDeDirectory(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public getUserSystemDirectory(I)Ljava/io/File;
    .locals 0

    .line 272
    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public prepareUserData(III)V
    .locals 9

    .line 69
    iget-object v0, p0, Lcom/android/server/pm/UserDataPreparer;->mInstallLock:Ljava/lang/Object;

    monitor-enter v0

    .line 70
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/UserDataPreparer;->mContext:Landroid/content/Context;

    const-class v2, Landroid/os/storage/StorageManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    const/4 v3, 0x0

    const/4 v7, 0x1

    move-object v2, p0

    move v4, p1

    move v5, p2

    move v6, p3

    .line 75
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/UserDataPreparer;->prepareUserDataLI(Ljava/lang/String;IIIZ)V

    .line 76
    invoke-virtual {v1}, Landroid/os/storage/StorageManager;->getWritablePrivateVolumes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/VolumeInfo;

    .line 77
    invoke-virtual {v2}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    const/4 v8, 0x1

    move-object v3, p0

    move v5, p1

    move v6, p2

    move v7, p3

    .line 79
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/pm/UserDataPreparer;->prepareUserDataLI(Ljava/lang/String;IIIZ)V

    goto :goto_0

    .line 82
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final prepareUserDataLI(Ljava/lang/String;IIIZ)V
    .locals 10

    const-string v0, "UserDataPreparer"

    .line 89
    iget-object v1, p0, Lcom/android/server/pm/UserDataPreparer;->mContext:Landroid/content/Context;

    const-class v2, Landroid/os/storage/StorageManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    .line 91
    :try_start_0
    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/os/storage/StorageManager;->prepareUserStorage(Ljava/lang/String;III)V

    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_0

    .line 94
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/UserDataPreparer;->getDataUserDeDirectory(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {p0, v1, p3}, Lcom/android/server/pm/UserDataPreparer;->enforceSerialNumber(Ljava/io/File;I)V

    .line 95
    sget-object v1, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    invoke-static {p1, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 96
    invoke-virtual {p0, p2}, Lcom/android/server/pm/UserDataPreparer;->getDataSystemDeDirectory(I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {p0, v1, p3}, Lcom/android/server/pm/UserDataPreparer;->enforceSerialNumber(Ljava/io/File;I)V

    :cond_0
    and-int/lit8 v1, p4, 0x2

    if-eqz v1, :cond_1

    .line 100
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/UserDataPreparer;->getDataUserCeDirectory(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    invoke-virtual {p0, v2, p3}, Lcom/android/server/pm/UserDataPreparer;->enforceSerialNumber(Ljava/io/File;I)V

    .line 101
    sget-object v2, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    invoke-static {p1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 102
    invoke-virtual {p0, p2}, Lcom/android/server/pm/UserDataPreparer;->getDataSystemCeDirectory(I)Ljava/io/File;

    move-result-object v2

    invoke-virtual {p0, v2, p3}, Lcom/android/server/pm/UserDataPreparer;->enforceSerialNumber(Ljava/io/File;I)V

    .line 106
    :cond_1
    iget-object v2, p0, Lcom/android/server/pm/UserDataPreparer;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/android/server/pm/Installer;->createUserData(Ljava/lang/String;III)V

    if-eqz v1, :cond_3

    if-nez p2, :cond_3

    .line 111
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sys.user."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ".ce_available"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 112
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting property: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "=true"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "true"

    .line 113
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 116
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Destroying user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " on volume "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " because we failed to prepare: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x5

    invoke-static {v3, v2}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 118
    invoke-virtual {p0, p1, p2, p4}, Lcom/android/server/pm/UserDataPreparer;->destroyUserDataLI(Ljava/lang/String;II)V

    if-eqz p5, :cond_2

    or-int/lit8 v8, p4, 0x1

    const/4 v9, 0x0

    move-object v4, p0

    move-object v5, p1

    move v6, p2

    move v7, p3

    .line 122
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/pm/UserDataPreparer;->prepareUserDataLI(Ljava/lang/String;IIIZ)V

    goto :goto_0

    .line 126
    :cond_2
    :try_start_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "prepareUserData failed for user "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-nez p2, :cond_3

    .line 128
    iget-object p0, p0, Lcom/android/server/pm/UserDataPreparer;->mContext:Landroid/content/Context;

    const-string/jumbo p1, "prepareUserData failed for system user"

    invoke-static {p0, p1}, Landroid/os/RecoverySystem;->rebootPromptAndWipeUserData(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_3
    :goto_0
    return-void

    :catch_1
    move-exception p0

    .line 132
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "error rebooting into recovery"

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public reconcileUsers(Ljava/lang/String;Ljava/util/List;)V
    .locals 2

    .line 194
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 196
    invoke-static {p1}, Landroid/os/Environment;->getDataUserDeDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Landroid/os/FileUtils;->listFilesOrEmpty(Ljava/io/File;)[Ljava/io/File;

    move-result-object v1

    .line 195
    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 198
    invoke-static {p1}, Landroid/os/Environment;->getDataUserCeDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Landroid/os/FileUtils;->listFilesOrEmpty(Ljava/io/File;)[Ljava/io/File;

    move-result-object v1

    .line 197
    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 200
    invoke-static {}, Landroid/os/Environment;->getDataSystemDeDirectory()Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Landroid/os/FileUtils;->listFilesOrEmpty(Ljava/io/File;)[Ljava/io/File;

    move-result-object v1

    .line 199
    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 202
    invoke-static {}, Landroid/os/Environment;->getDataSystemCeDirectory()Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Landroid/os/FileUtils;->listFilesOrEmpty(Ljava/io/File;)[Ljava/io/File;

    move-result-object v1

    .line 201
    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 204
    invoke-static {}, Landroid/os/Environment;->getDataMiscCeDirectory()Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Landroid/os/FileUtils;->listFilesOrEmpty(Ljava/io/File;)[Ljava/io/File;

    move-result-object v1

    .line 203
    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 205
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/pm/UserDataPreparer;->reconcileUsers(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public reconcileUsers(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 8

    .line 210
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .line 211
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1, v0}, Landroid/util/SparseArray;-><init>(I)V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_0

    .line 213
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    .line 214
    iget v5, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v5, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 216
    :cond_0
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/io/File;

    .line 217
    invoke-virtual {p3}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    .line 224
    :cond_2
    :try_start_0
    invoke-virtual {p3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 225
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v4, 0x5

    const/4 v5, 0x1

    if-nez v3, :cond_3

    .line 233
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Destroying user directory "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " because no matching user was found"

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v4, p3}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    goto :goto_2

    .line 238
    :cond_3
    :try_start_1
    iget v3, v3, Landroid/content/pm/UserInfo;->serialNumber:I

    invoke-virtual {p0, p3, v3}, Lcom/android/server/pm/UserDataPreparer;->enforceSerialNumber(Ljava/io/File;I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move v5, v2

    goto :goto_2

    :catch_0
    move-exception v3

    .line 240
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Destroying user directory "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " because we failed to enforce serial number: "

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v4, p3}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    :goto_2
    if-eqz v5, :cond_1

    .line 247
    iget-object p3, p0, Lcom/android/server/pm/UserDataPreparer;->mInstallLock:Ljava/lang/Object;

    monitor-enter p3

    const/4 v3, 0x3

    .line 248
    :try_start_2
    invoke-virtual {p0, p1, v0, v3}, Lcom/android/server/pm/UserDataPreparer;->destroyUserDataLI(Ljava/lang/String;II)V

    .line 250
    monitor-exit p3

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :catch_1
    const-string v0, "UserDataPreparer"

    .line 227
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid user directory "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_4
    return-void
.end method
