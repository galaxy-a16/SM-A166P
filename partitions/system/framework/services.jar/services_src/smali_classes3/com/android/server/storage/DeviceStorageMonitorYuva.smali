.class public Lcom/android/server/storage/DeviceStorageMonitorYuva;
.super Ljava/lang/Object;
.source "DeviceStorageMonitorYuva.java"


# static fields
.field public static final DATA_PATH:Ljava/io/File;

.field public static final valueCscYuva:Ljava/lang/String;


# instance fields
.field public DEBUG:Z

.field public isBootCompleted:Z

.field public isSupported:Z

.field public final mContext:Landroid/content/Context;

.field public mLowUserMemFlag_15:Z

.field public mLowUserMemFlag_20:Z

.field public mMemLowUserThreshold_15:J

.field public mMemLowUserThreshold_20:J


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 21
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    sput-object v0, Lcom/android/server/storage/DeviceStorageMonitorYuva;->DATA_PATH:Ljava/io/File;

    .line 24
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Common_ConfigYuva"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/storage/DeviceStorageMonitorYuva;->valueCscYuva:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lcom/android/server/storage/DeviceStorageMonitorYuva;->mLowUserMemFlag_20:Z

    .line 26
    iput-boolean v0, p0, Lcom/android/server/storage/DeviceStorageMonitorYuva;->mLowUserMemFlag_15:Z

    .line 29
    iput-boolean v0, p0, Lcom/android/server/storage/DeviceStorageMonitorYuva;->isBootCompleted:Z

    .line 31
    iput-boolean v0, p0, Lcom/android/server/storage/DeviceStorageMonitorYuva;->isSupported:Z

    const/4 v0, 0x1

    .line 32
    iput-boolean v0, p0, Lcom/android/server/storage/DeviceStorageMonitorYuva;->DEBUG:Z

    const-string v0, "DeviceStorageMonitorYuva"

    const-string v1, "constructor is called"

    .line 37
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    iput-object p1, p0, Lcom/android/server/storage/DeviceStorageMonitorYuva;->mContext:Landroid/content/Context;

    const/16 p1, 0x14

    .line 39
    invoke-virtual {p0, p1}, Lcom/android/server/storage/DeviceStorageMonitorYuva;->getStorageUserMemLowBytes(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/storage/DeviceStorageMonitorYuva;->mMemLowUserThreshold_20:J

    const/16 p1, 0xf

    .line 40
    invoke-virtual {p0, p1}, Lcom/android/server/storage/DeviceStorageMonitorYuva;->getStorageUserMemLowBytes(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/storage/DeviceStorageMonitorYuva;->mMemLowUserThreshold_15:J

    .line 42
    invoke-virtual {p0}, Lcom/android/server/storage/DeviceStorageMonitorYuva;->isYuvaSupported()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/storage/DeviceStorageMonitorYuva;->isSupported:Z

    return-void
.end method


# virtual methods
.method public final getStorageUserMemLowBytes(I)J
    .locals 4

    .line 46
    sget-object v0, Lcom/android/server/storage/DeviceStorageMonitorYuva;->DATA_PATH:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v0

    int-to-long v2, p1

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x64

    div-long/2addr v0, v2

    .line 47
    iget-boolean p0, p0, Lcom/android/server/storage/DeviceStorageMonitorYuva;->DEBUG:Z

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "user spcific threshold is calculated ->"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DeviceStorageMonitorYuva"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-wide v0
.end method

.method public final intentBroadcastForUserLowMem(J)V
    .locals 5

    .line 109
    iget-boolean v0, p0, Lcom/android/server/storage/DeviceStorageMonitorYuva;->isSupported:Z

    if-eqz v0, :cond_4

    .line 110
    iget-wide v0, p0, Lcom/android/server/storage/DeviceStorageMonitorYuva;->mMemLowUserThreshold_15:J

    cmp-long v0, p1, v0

    const/4 v1, 0x1

    const/16 v2, 0xf

    if-gez v0, :cond_0

    .line 111
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-boolean p1, p0, Lcom/android/server/storage/DeviceStorageMonitorYuva;->mLowUserMemFlag_15:Z

    if-nez p1, :cond_4

    .line 112
    iput-boolean v1, p0, Lcom/android/server/storage/DeviceStorageMonitorYuva;->mLowUserMemFlag_15:Z

    .line 113
    invoke-virtual {p0, v2}, Lcom/android/server/storage/DeviceStorageMonitorYuva;->sendUserMemLowNotification(I)V

    goto :goto_0

    .line 115
    :cond_0
    iget-wide v3, p0, Lcom/android/server/storage/DeviceStorageMonitorYuva;->mMemLowUserThreshold_20:J

    cmp-long p1, p1, v3

    const/16 p2, 0x14

    const/4 v0, 0x0

    if-gez p1, :cond_2

    .line 116
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/android/server/storage/DeviceStorageMonitorYuva;->mLowUserMemFlag_15:Z

    if-eqz p1, :cond_1

    .line 117
    iput-boolean v0, p0, Lcom/android/server/storage/DeviceStorageMonitorYuva;->mLowUserMemFlag_15:Z

    .line 118
    invoke-virtual {p0, v2}, Lcom/android/server/storage/DeviceStorageMonitorYuva;->sendCancelUserMemLowNotification(I)V

    .line 120
    :cond_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-boolean p1, p0, Lcom/android/server/storage/DeviceStorageMonitorYuva;->mLowUserMemFlag_20:Z

    if-nez p1, :cond_4

    .line 121
    iput-boolean v1, p0, Lcom/android/server/storage/DeviceStorageMonitorYuva;->mLowUserMemFlag_20:Z

    .line 122
    invoke-virtual {p0, p2}, Lcom/android/server/storage/DeviceStorageMonitorYuva;->sendUserMemLowNotification(I)V

    goto :goto_0

    .line 125
    :cond_2
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcom/android/server/storage/DeviceStorageMonitorYuva;->mLowUserMemFlag_15:Z

    if-eqz p1, :cond_3

    .line 126
    iput-boolean v0, p0, Lcom/android/server/storage/DeviceStorageMonitorYuva;->mLowUserMemFlag_15:Z

    .line 127
    invoke-virtual {p0, v2}, Lcom/android/server/storage/DeviceStorageMonitorYuva;->sendCancelUserMemLowNotification(I)V

    .line 129
    :cond_3
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-boolean p1, p0, Lcom/android/server/storage/DeviceStorageMonitorYuva;->mLowUserMemFlag_20:Z

    if-eqz p1, :cond_4

    .line 130
    iput-boolean v0, p0, Lcom/android/server/storage/DeviceStorageMonitorYuva;->mLowUserMemFlag_20:Z

    .line 131
    invoke-virtual {p0, p2}, Lcom/android/server/storage/DeviceStorageMonitorYuva;->sendCancelUserMemLowNotification(I)V

    :cond_4
    :goto_0
    return-void
.end method

.method public isYuvaSupported()Z
    .locals 2

    .line 73
    sget-object v0, Lcom/android/server/storage/DeviceStorageMonitorYuva;->valueCscYuva:Ljava/lang/String;

    const-string v1, "MemorySaver"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "DeviceStorageMonitorYuva"

    if-eqz v0, :cond_1

    .line 74
    iget-boolean p0, p0, Lcom/android/server/storage/DeviceStorageMonitorYuva;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "device supports YUVA"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x1

    return p0

    .line 77
    :cond_1
    iget-boolean p0, p0, Lcom/android/server/storage/DeviceStorageMonitorYuva;->DEBUG:Z

    if-eqz p0, :cond_2

    const-string p0, "device does not support YUVA"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public onUpdate(J)V
    .locals 1

    .line 103
    iget-boolean v0, p0, Lcom/android/server/storage/DeviceStorageMonitorYuva;->isSupported:Z

    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {p0, p1, p2}, Lcom/android/server/storage/DeviceStorageMonitorYuva;->intentBroadcastForUserLowMem(J)V

    :cond_0
    return-void
.end method

.method public final sendCancelUserMemLowNotification(I)V
    .locals 3

    .line 93
    iget-boolean v0, p0, Lcom/android/server/storage/DeviceStorageMonitorYuva;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Intent ACTION_CANCEL_USER_MEM_LOW broadcasting with ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "%)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeviceStorageMonitorYuva"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.sm.ACTION_CANCEL_USER_MEM_LOW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.samsung.memorysaver"

    const-string v2, "com.samsung.memorysaver.receiver.StorageStatusReceiver"

    .line 95
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "PERCENT"

    .line 97
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 98
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 99
    iget-object p0, p0, Lcom/android/server/storage/DeviceStorageMonitorYuva;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public final sendUserMemLowNotification(I)V
    .locals 3

    .line 83
    iget-boolean v0, p0, Lcom/android/server/storage/DeviceStorageMonitorYuva;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Intent ACTION_USER_MEM_LOW broadcasting with ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "%)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeviceStorageMonitorYuva"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.sm.ACTION_USER_MEM_LOW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.samsung.memorysaver"

    const-string v2, "com.samsung.memorysaver.receiver.StorageStatusReceiver"

    .line 85
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "PERCENT"

    .line 87
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 88
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 89
    iget-object p0, p0, Lcom/android/server/storage/DeviceStorageMonitorYuva;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
