.class public Lcom/android/server/locksettings/LockSettingsServiceLog$2;
.super Ljava/lang/Thread;
.source "LockSettingsServiceLog.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/locksettings/LockSettingsServiceLog;


# direct methods
.method public constructor <init>(Lcom/android/server/locksettings/LockSettingsServiceLog;)V
    .locals 0

    .line 325
    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsServiceLog$2;->this$0:Lcom/android/server/locksettings/LockSettingsServiceLog;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-wide/16 v0, 0x3e8

    .line 330
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 332
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sleep error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LockSettingsLog"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    :goto_0
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsServiceLog$2;->this$0:Lcom/android/server/locksettings/LockSettingsServiceLog;

    invoke-static {p0}, Lcom/android/server/locksettings/LockSettingsServiceLog;->-$$Nest$mshowDump(Lcom/android/server/locksettings/LockSettingsServiceLog;)V

    return-void
.end method
