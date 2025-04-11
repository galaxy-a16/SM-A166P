.class public final Lcom/android/server/sepunion/cover/CoverDisabler;
.super Ljava/lang/Object;
.source "CoverDisabler.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public mCoverManagerDisabled:Z

.field public mDisableCoverManagerWakeLock:Landroid/os/PowerManager$WakeLock;

.field public final mDisableRecords:Ljava/util/ArrayList;

.field public final mHandler:Lcom/android/server/sepunion/cover/CoverDisabler$CoverDisablerHandler;

.field public final mLock:Ljava/lang/Object;

.field public final mPowerManager:Landroid/os/PowerManager;

.field public mRealCoverSwitchState:Z


# direct methods
.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/sepunion/cover/CoverDisabler;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverDisabler;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mdisableCoverManagerLocked(Lcom/android/server/sepunion/cover/CoverDisabler;ZLandroid/os/IBinder;Ljava/lang/String;)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/sepunion/cover/CoverDisabler;->disableCoverManagerLocked(ZLandroid/os/IBinder;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mhandleDisableCoverManagerLocked(Lcom/android/server/sepunion/cover/CoverDisabler;Z)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/cover/CoverDisabler;->handleDisableCoverManagerLocked(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/sepunion/cover/CoverDisabler;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 2

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CoverManager_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/sepunion/cover/CoverDisabler;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/sepunion/cover/CoverDisabler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;)V
    .locals 4

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/sepunion/cover/CoverDisabler;->mLock:Ljava/lang/Object;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/sepunion/cover/CoverDisabler;->mDisableRecords:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 50
    iput-boolean v0, p0, Lcom/android/server/sepunion/cover/CoverDisabler;->mCoverManagerDisabled:Z

    const/4 v1, 0x1

    .line 51
    iput-boolean v1, p0, Lcom/android/server/sepunion/cover/CoverDisabler;->mRealCoverSwitchState:Z

    const-string/jumbo v2, "power"

    .line 57
    invoke-virtual {p2, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/PowerManager;

    iput-object p2, p0, Lcom/android/server/sepunion/cover/CoverDisabler;->mPowerManager:Landroid/os/PowerManager;

    .line 59
    new-instance v2, Lcom/android/server/sepunion/cover/CoverDisabler$CoverDisablerHandler;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, v3}, Lcom/android/server/sepunion/cover/CoverDisabler$CoverDisablerHandler;-><init>(Lcom/android/server/sepunion/cover/CoverDisabler;Landroid/os/Looper;Lcom/android/server/sepunion/cover/CoverDisabler$CoverDisablerHandler-IA;)V

    iput-object v2, p0, Lcom/android/server/sepunion/cover/CoverDisabler;->mHandler:Lcom/android/server/sepunion/cover/CoverDisabler$CoverDisablerHandler;

    const-string p1, "disable covermanager"

    .line 61
    invoke-virtual {p2, v1, p1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/sepunion/cover/CoverDisabler;->mDisableCoverManagerWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 62
    invoke-virtual {p1, v0}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    return-void
.end method


# virtual methods
.method public disableCoverManager(ZLandroid/os/IBinder;Ljava/lang/String;)Z
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverDisabler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 124
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/sepunion/cover/CoverDisabler;->disableCoverManagerLocked(ZLandroid/os/IBinder;Ljava/lang/String;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 125
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final disableCoverManagerLocked(ZLandroid/os/IBinder;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p2, :cond_4

    if-nez p3, :cond_0

    goto :goto_0

    .line 132
    :cond_0
    sget-object v1, Lcom/android/server/sepunion/cover/CoverDisabler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "disableCoverManagerLocked : disable="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " pkg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 135
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/sepunion/cover/CoverDisabler;->manageDisableListLocked(ZLandroid/os/IBinder;Ljava/lang/String;)V

    .line 137
    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/CoverDisabler;->gatherDisableLocked()Z

    move-result p2

    .line 138
    iget-boolean p3, p0, Lcom/android/server/sepunion/cover/CoverDisabler;->mCoverManagerDisabled:Z

    if-eq p2, p3, :cond_3

    .line 139
    iput-boolean p2, p0, Lcom/android/server/sepunion/cover/CoverDisabler;->mCoverManagerDisabled:Z

    .line 140
    iget-object p2, p0, Lcom/android/server/sepunion/cover/CoverDisabler;->mDisableCoverManagerWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result p2

    if-nez p2, :cond_1

    .line 141
    iget-object p2, p0, Lcom/android/server/sepunion/cover/CoverDisabler;->mDisableCoverManagerWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 143
    :cond_1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p2

    .line 144
    iput v0, p2, Landroid/os/Message;->what:I

    const/4 p3, 0x1

    if-eqz p1, :cond_2

    move v0, p3

    .line 145
    :cond_2
    iput v0, p2, Landroid/os/Message;->arg1:I

    .line 146
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverDisabler;->mHandler:Lcom/android/server/sepunion/cover/CoverDisabler$CoverDisablerHandler;

    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p3

    :cond_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v0

    :catchall_0
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 151
    throw p0

    :cond_4
    :goto_0
    return v0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    const-string p1, " Current CoverDisabler state:"

    .line 210
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 212
    iget-object p1, p0, Lcom/android/server/sepunion/cover/CoverDisabler;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 213
    :try_start_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  mCoverManagerDisabled="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/server/sepunion/cover/CoverDisabler;->mCoverManagerDisabled:Z

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 214
    iget-boolean p3, p0, Lcom/android/server/sepunion/cover/CoverDisabler;->mCoverManagerDisabled:Z

    if-eqz p3, :cond_0

    .line 215
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  Real Cover Switch State="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/server/sepunion/cover/CoverDisabler;->mRealCoverSwitchState:Z

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 217
    :cond_0
    iget-object p3, p0, Lcom/android/server/sepunion/cover/CoverDisabler;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDisableRecords.size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_1

    .line 220
    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverDisabler;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/sepunion/cover/CoverDisabler$DisableRecord;

    .line 221
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] disable="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v1, Lcom/android/server/sepunion/cover/CoverDisabler$DisableRecord;->disable:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " pkg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/server/sepunion/cover/CoverDisabler$DisableRecord;->pkg:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/android/server/sepunion/cover/CoverDisabler$DisableRecord;->token:Landroid/os/IBinder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string p0, "  "

    .line 225
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 226
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final gatherDisableLocked()Z
    .locals 4

    .line 199
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverDisabler;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 202
    iget-object v3, p0, Lcom/android/server/sepunion/cover/CoverDisabler;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/sepunion/cover/CoverDisabler$DisableRecord;

    .line 203
    iget-boolean v3, v3, Lcom/android/server/sepunion/cover/CoverDisabler$DisableRecord;->disable:Z

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public getRealCoverSwitchState()Z
    .locals 0

    .line 102
    iget-boolean p0, p0, Lcom/android/server/sepunion/cover/CoverDisabler;->mRealCoverSwitchState:Z

    return p0
.end method

.method public final handleDisableCoverManagerLocked(Z)V
    .locals 0

    .line 160
    iget-object p1, p0, Lcom/android/server/sepunion/cover/CoverDisabler;->mDisableCoverManagerWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 161
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverDisabler;->mDisableCoverManagerWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_0
    return-void
.end method

.method public isCoverManagerDisabled()Z
    .locals 0

    .line 106
    iget-boolean p0, p0, Lcom/android/server/sepunion/cover/CoverDisabler;->mCoverManagerDisabled:Z

    return p0
.end method

.method public final manageDisableListLocked(ZLandroid/os/IBinder;Ljava/lang/String;)V
    .locals 6

    .line 167
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverDisabler;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x0

    if-ge v2, v0, :cond_1

    .line 171
    iget-object v4, p0, Lcom/android/server/sepunion/cover/CoverDisabler;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/sepunion/cover/CoverDisabler$DisableRecord;

    .line 172
    iget-object v5, v4, Lcom/android/server/sepunion/cover/CoverDisabler$DisableRecord;->token:Landroid/os/IBinder;

    if-ne v5, p2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move-object v4, v3

    :goto_1
    if-eqz p1, :cond_4

    .line 177
    invoke-interface {p2}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_3

    :cond_2
    if-nez v4, :cond_3

    .line 184
    new-instance v4, Lcom/android/server/sepunion/cover/CoverDisabler$DisableRecord;

    invoke-direct {v4, p0, v3}, Lcom/android/server/sepunion/cover/CoverDisabler$DisableRecord;-><init>(Lcom/android/server/sepunion/cover/CoverDisabler;Lcom/android/server/sepunion/cover/CoverDisabler$DisableRecord-IA;)V

    .line 186
    :try_start_0
    invoke-interface {p2, v4, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverDisabler;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :catch_0
    return-void

    :cond_3
    :goto_2
    const/4 p0, 0x1

    .line 192
    iput-boolean p0, v4, Lcom/android/server/sepunion/cover/CoverDisabler$DisableRecord;->disable:Z

    .line 193
    iput-object p2, v4, Lcom/android/server/sepunion/cover/CoverDisabler$DisableRecord;->token:Landroid/os/IBinder;

    .line 194
    iput-object p3, v4, Lcom/android/server/sepunion/cover/CoverDisabler$DisableRecord;->pkg:Ljava/lang/String;

    goto :goto_4

    :cond_4
    :goto_3
    if-eqz v4, :cond_5

    .line 179
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverDisabler;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 180
    iget-object p0, v4, Lcom/android/server/sepunion/cover/CoverDisabler$DisableRecord;->token:Landroid/os/IBinder;

    invoke-interface {p0, v4, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    :cond_5
    :goto_4
    return-void
.end method

.method public sendCoverSwitchIntent(Landroid/content/Context;Z)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 114
    :cond_0
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.samsung.sepunion.cover.SEND_COVER_SWITCH"

    .line 115
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "switchState"

    .line 116
    invoke-virtual {p0, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 117
    sget-object p2, Lcom/android/server/sepunion/cover/CoverDisabler;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "sendCoverSwitchIntent"

    invoke-static {p2, v0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    invoke-virtual {p1, p0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public setRealCoverSwitchState(Z)V
    .locals 0

    .line 98
    iput-boolean p1, p0, Lcom/android/server/sepunion/cover/CoverDisabler;->mRealCoverSwitchState:Z

    return-void
.end method
