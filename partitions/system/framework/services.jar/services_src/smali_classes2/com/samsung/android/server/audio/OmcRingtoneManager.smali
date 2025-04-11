.class public Lcom/samsung/android/server/audio/OmcRingtoneManager;
.super Ljava/lang/Object;
.source "OmcRingtoneManager.java"


# static fields
.field public static sInstance:Lcom/samsung/android/server/audio/OmcRingtoneManager;


# instance fields
.field public final mExcludeNotifications:Ljava/util/List;

.field public final mExcludeRingtones:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/audio/OmcRingtoneManager;->mExcludeRingtones:Ljava/util/List;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/audio/OmcRingtoneManager;->mExcludeNotifications:Ljava/util/List;

    const-wide/16 v0, 0x100

    const-string v2, "OmcRingtoneManager_Init"

    .line 41
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 43
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/server/audio/OmcRingtoneManager;->loadExcludedSoundsFromCsc()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 46
    throw p0
.end method

.method public static getInstance()Lcom/samsung/android/server/audio/OmcRingtoneManager;
    .locals 1

    .line 50
    sget-object v0, Lcom/samsung/android/server/audio/OmcRingtoneManager;->sInstance:Lcom/samsung/android/server/audio/OmcRingtoneManager;

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Lcom/samsung/android/server/audio/OmcRingtoneManager;

    invoke-direct {v0}, Lcom/samsung/android/server/audio/OmcRingtoneManager;-><init>()V

    sput-object v0, Lcom/samsung/android/server/audio/OmcRingtoneManager;->sInstance:Lcom/samsung/android/server/audio/OmcRingtoneManager;

    .line 53
    :cond_0
    sget-object v0, Lcom/samsung/android/server/audio/OmcRingtoneManager;->sInstance:Lcom/samsung/android/server/audio/OmcRingtoneManager;

    return-object v0
.end method


# virtual methods
.method public getExcludedNotifications()Ljava/util/List;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/samsung/android/server/audio/OmcRingtoneManager;->mExcludeNotifications:Ljava/util/List;

    return-object p0
.end method

.method public getExcludedRingtones()Ljava/util/List;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/samsung/android/server/audio/OmcRingtoneManager;->mExcludeRingtones:Ljava/util/List;

    return-object p0
.end method

.method public final getExcludedRingtonesFromCsc(Ljava/lang/String;I)V
    .locals 4

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 76
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/media/audio/ringtones/exclude_ringtones"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 77
    iget-object v1, p0, Lcom/samsung/android/server/audio/OmcRingtoneManager;->mExcludeRingtones:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_1

    .line 78
    iget-object v1, p0, Lcom/samsung/android/server/audio/OmcRingtoneManager;->mExcludeRingtones:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    goto :goto_0

    .line 81
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/media/audio/notifications/exclude_notifications"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 82
    iget-object v1, p0, Lcom/samsung/android/server/audio/OmcRingtoneManager;->mExcludeNotifications:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_1

    .line 83
    iget-object v1, p0, Lcom/samsung/android/server/audio/OmcRingtoneManager;->mExcludeNotifications:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 87
    :cond_1
    :goto_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 88
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1

    const-string v2, "AS.OmcRingtoneManager"

    if-eqz p1, :cond_4

    .line 89
    :try_start_0
    new-instance p1, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {p1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    :goto_1
    :try_start_1
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    if-ne p2, v0, :cond_2

    .line 93
    iget-object v3, p0, Lcom/samsung/android/server/audio/OmcRingtoneManager;->mExcludeRingtones:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 95
    :cond_2
    iget-object v3, p0, Lcom/samsung/android/server/audio/OmcRingtoneManager;->mExcludeNotifications:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 98
    :cond_3
    :try_start_2
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catchall_0
    move-exception p0

    .line 89
    :try_start_3
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    const-string p1, "File exception"

    .line 99
    invoke-static {v2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 102
    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "There is no sounds(type:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") list to remove"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    return-void
.end method

.method public loadExcludedSoundsFromCsc()V
    .locals 2

    const-string/jumbo v0, "persist.sys.omc_respath"

    .line 65
    invoke-static {v0}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 66
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 67
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/audio/OmcRingtoneManager;->getExcludedRingtonesFromCsc(Ljava/lang/String;I)V

    const/4 v1, 0x2

    .line 68
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/audio/OmcRingtoneManager;->getExcludedRingtonesFromCsc(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method
