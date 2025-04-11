.class public Lcom/android/server/locksettings/LockSettingsServiceLog$1;
.super Ljava/lang/Thread;
.source "LockSettingsServiceLog.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/locksettings/LockSettingsServiceLog;

.field public final synthetic val$type:I


# direct methods
.method public constructor <init>(Lcom/android/server/locksettings/LockSettingsServiceLog;I)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsServiceLog$1;->this$0:Lcom/android/server/locksettings/LockSettingsServiceLog;

    iput p2, p0, Lcom/android/server/locksettings/LockSettingsServiceLog$1;->val$type:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-wide/16 v0, 0x7d0

    .line 120
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 122
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sleep error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LockSettingsLog"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :goto_0
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsServiceLog$1;->this$0:Lcom/android/server/locksettings/LockSettingsServiceLog;

    invoke-static {v0}, Lcom/android/server/locksettings/LockSettingsServiceLog;->-$$Nest$fgetmLogFile(Lcom/android/server/locksettings/LockSettingsServiceLog;)[Lcom/android/server/locksettings/LockSettingsServiceLog$LogFileManager;

    move-result-object v0

    iget v1, p0, Lcom/android/server/locksettings/LockSettingsServiceLog$1;->val$type:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsServiceLog$LogFileManager;->prepareUpload()V

    .line 125
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsServiceLog$1;->this$0:Lcom/android/server/locksettings/LockSettingsServiceLog;

    iget v1, p0, Lcom/android/server/locksettings/LockSettingsServiceLog$1;->val$type:I

    invoke-static {v0, v1}, Lcom/android/server/locksettings/LockSettingsServiceLog;->-$$Nest$mzipLogFile(Lcom/android/server/locksettings/LockSettingsServiceLog;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/locksettings/LockSettingsServiceLog;->-$$Nest$fputLOG_FILE(Lcom/android/server/locksettings/LockSettingsServiceLog;Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsServiceLog$1;->this$0:Lcom/android/server/locksettings/LockSettingsServiceLog;

    invoke-static {v0}, Lcom/android/server/locksettings/LockSettingsServiceLog;->-$$Nest$fgetmLogFile(Lcom/android/server/locksettings/LockSettingsServiceLog;)[Lcom/android/server/locksettings/LockSettingsServiceLog$LogFileManager;

    move-result-object v0

    iget v1, p0, Lcom/android/server/locksettings/LockSettingsServiceLog$1;->val$type:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsServiceLog$LogFileManager;->deleteUploadFile()V

    .line 127
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsServiceLog$1;->this$0:Lcom/android/server/locksettings/LockSettingsServiceLog;

    iget p0, p0, Lcom/android/server/locksettings/LockSettingsServiceLog$1;->val$type:I

    invoke-static {v0, p0}, Lcom/android/server/locksettings/LockSettingsServiceLog;->-$$Nest$msendToDiagmon(Lcom/android/server/locksettings/LockSettingsServiceLog;I)V

    return-void
.end method
