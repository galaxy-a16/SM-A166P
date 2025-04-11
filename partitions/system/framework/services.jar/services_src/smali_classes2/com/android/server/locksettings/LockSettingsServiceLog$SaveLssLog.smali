.class public Lcom/android/server/locksettings/LockSettingsServiceLog$SaveLssLog;
.super Ljava/lang/Thread;
.source "LockSettingsServiceLog.java"


# instance fields
.field public mContents:Ljava/lang/String;

.field public mIsSaveLssLogDone:Z

.field public mType:I

.field public final synthetic this$0:Lcom/android/server/locksettings/LockSettingsServiceLog;


# direct methods
.method public constructor <init>(Lcom/android/server/locksettings/LockSettingsServiceLog;ILjava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsServiceLog$SaveLssLog;->this$0:Lcom/android/server/locksettings/LockSettingsServiceLog;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/locksettings/LockSettingsServiceLog$SaveLssLog;->mIsSaveLssLogDone:Z

    iput p2, p0, Lcom/android/server/locksettings/LockSettingsServiceLog$SaveLssLog;->mType:I

    iput-object p3, p0, Lcom/android/server/locksettings/LockSettingsServiceLog$SaveLssLog;->mContents:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/server/locksettings/LockSettingsServiceLog;->-$$Nest$fgetmLogFile(Lcom/android/server/locksettings/LockSettingsServiceLog;)[Lcom/android/server/locksettings/LockSettingsServiceLog$LogFileManager;

    move-result-object p0

    aget-object p0, p0, p2

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsServiceLog$LogFileManager;->hasLogType(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "LockSettingsLog"

    invoke-static {p0, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsServiceLog$SaveLssLog;->writeLockSettingsLog()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/locksettings/LockSettingsServiceLog$SaveLssLog;->mIsSaveLssLogDone:Z

    return-void
.end method

.method public final writeLockSettingsLog()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsServiceLog$SaveLssLog;->this$0:Lcom/android/server/locksettings/LockSettingsServiceLog;

    invoke-static {v0}, Lcom/android/server/locksettings/LockSettingsServiceLog;->-$$Nest$fgetF_LOCK(Lcom/android/server/locksettings/LockSettingsServiceLog;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->tryLock()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsServiceLog$SaveLssLog;->this$0:Lcom/android/server/locksettings/LockSettingsServiceLog;

    invoke-static {v0}, Lcom/android/server/locksettings/LockSettingsServiceLog;->-$$Nest$fgetF_LOCK(Lcom/android/server/locksettings/LockSettingsServiceLog;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    invoke-interface {v0, v2, v3, v1}, Ljava/util/concurrent/locks/Lock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "LockSettingsLog"

    const-string/jumbo v0, "maybe dump is in progress!! Cannot written log"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsServiceLog$SaveLssLog;->this$0:Lcom/android/server/locksettings/LockSettingsServiceLog;

    invoke-static {v0}, Lcom/android/server/locksettings/LockSettingsServiceLog;->-$$Nest$fgetmFileWriteLock(Lcom/android/server/locksettings/LockSettingsServiceLog;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_1
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/FileWriter;

    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsServiceLog$SaveLssLog;->this$0:Lcom/android/server/locksettings/LockSettingsServiceLog;

    invoke-static {v3}, Lcom/android/server/locksettings/LockSettingsServiceLog;->-$$Nest$fgetmLogFile(Lcom/android/server/locksettings/LockSettingsServiceLog;)[Lcom/android/server/locksettings/LockSettingsServiceLog$LogFileManager;

    move-result-object v3

    iget v4, p0, Lcom/android/server/locksettings/LockSettingsServiceLog$SaveLssLog;->mType:I

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lcom/android/server/locksettings/LockSettingsServiceLog$LogFileManager;->getLastFileName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsServiceLog$SaveLssLog;->this$0:Lcom/android/server/locksettings/LockSettingsServiceLog;

    invoke-static {v2}, Lcom/android/server/locksettings/LockSettingsServiceLog;->-$$Nest$mmakeLogTime(Lcom/android/server/locksettings/LockSettingsServiceLog;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsServiceLog$SaveLssLog;->mContents:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_2
    const-string v2, "LockSettingsLog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "makefile error"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsServiceLog$SaveLssLog;->this$0:Lcom/android/server/locksettings/LockSettingsServiceLog;

    invoke-static {p0}, Lcom/android/server/locksettings/LockSettingsServiceLog;->-$$Nest$fgetF_LOCK(Lcom/android/server/locksettings/LockSettingsServiceLog;)Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :goto_1
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/InterruptedException;->printStackTrace()V

    return-void
.end method
