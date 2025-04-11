.class public Lcom/android/server/enterprise/plm/ProcessStateTracker;
.super Landroid/os/Handler;
.source "ProcessStateTracker.java"

# interfaces
.implements Lcom/android/server/enterprise/plm/IStateDelegate;


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public final mAdapters:Ljava/util/Map;

.field public final mContext:Landroid/content/Context;

.field public mStarted:Z

.field public final mSystemStateTracker:Lcom/android/server/enterprise/plm/SystemStateTracker;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 21
    const-class v0, Lcom/android/server/enterprise/plm/ProcessStateTracker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/plm/ProcessStateTracker;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Ljava/util/List;)V
    .locals 1

    .line 38
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/plm/ProcessStateTracker;->mAdapters:Ljava/util/Map;

    .line 39
    new-instance v0, Lcom/android/server/enterprise/plm/SystemStateTracker;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/enterprise/plm/SystemStateTracker;-><init>(Landroid/os/Looper;Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/android/server/enterprise/plm/ProcessStateTracker;->mSystemStateTracker:Lcom/android/server/enterprise/plm/SystemStateTracker;

    .line 40
    iput-object p2, p0, Lcom/android/server/enterprise/plm/ProcessStateTracker;->mContext:Landroid/content/Context;

    if-eqz p3, :cond_0

    .line 42
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/enterprise/plm/ProcessAdapter;

    .line 43
    invoke-virtual {p2, p0}, Lcom/android/server/enterprise/plm/ProcessAdapter;->setDelegate(Lcom/android/server/enterprise/plm/IStateDelegate;)V

    .line 44
    iget-object p3, p0, Lcom/android/server/enterprise/plm/ProcessStateTracker;->mAdapters:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/android/server/enterprise/plm/ProcessAdapter;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 68
    sget-object v0, Lcom/android/server/enterprise/plm/ProcessStateTracker;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :try_start_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 94
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/plm/ProcessStateTracker;->onLockUpdate(Landroid/os/Message;)V

    goto :goto_1

    .line 91
    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/plm/ProcessStateTracker;->onEdmUpdate(Landroid/os/Message;)V

    goto :goto_1

    .line 88
    :pswitch_2
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/plm/ProcessStateTracker;->onBootUpdate(Landroid/os/Message;)V

    goto :goto_1

    .line 85
    :pswitch_3
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/plm/ProcessStateTracker;->onUserUpdate(Landroid/os/Message;)V

    goto :goto_1

    .line 82
    :pswitch_4
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/plm/ProcessStateTracker;->onPackageUpdate(Landroid/os/Message;)V

    goto :goto_1

    .line 79
    :pswitch_5
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/plm/ProcessStateTracker;->onLicenseUpdate(Landroid/os/Message;)V

    goto :goto_1

    .line 76
    :pswitch_6
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/plm/ProcessStateTracker;->onTrackerStop(Landroid/os/Message;)V

    goto :goto_1

    .line 73
    :pswitch_7
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/plm/ProcessStateTracker;->onTrackerStart(Landroid/os/Message;)V

    goto :goto_1

    .line 97
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid message "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 101
    sget-object p1, Lcom/android/server/enterprise/plm/ProcessStateTracker;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public isEdmServiceReady()Z
    .locals 0

    .line 248
    iget-object p0, p0, Lcom/android/server/enterprise/plm/ProcessStateTracker;->mSystemStateTracker:Lcom/android/server/enterprise/plm/SystemStateTracker;

    invoke-virtual {p0}, Lcom/android/server/enterprise/plm/SystemStateTracker;->isEdmServiceReady()Z

    move-result p0

    return p0
.end method

.method public isKlmActivated()Z
    .locals 0

    .line 253
    iget-object p0, p0, Lcom/android/server/enterprise/plm/ProcessStateTracker;->mSystemStateTracker:Lcom/android/server/enterprise/plm/SystemStateTracker;

    invoke-virtual {p0}, Lcom/android/server/enterprise/plm/SystemStateTracker;->isKlmActive()Z

    move-result p0

    return p0
.end method

.method public final isStarted()Z
    .locals 0

    .line 50
    iget-boolean p0, p0, Lcom/android/server/enterprise/plm/ProcessStateTracker;->mStarted:Z

    return p0
.end method

.method public isUserUnlocked()Z
    .locals 0

    .line 258
    iget-object p0, p0, Lcom/android/server/enterprise/plm/ProcessStateTracker;->mSystemStateTracker:Lcom/android/server/enterprise/plm/SystemStateTracker;

    invoke-virtual {p0}, Lcom/android/server/enterprise/plm/SystemStateTracker;->isUserUnlocked()Z

    move-result p0

    return p0
.end method

.method public final notifyUpdateToAdapters()V
    .locals 1

    const-string v0, ""

    .line 156
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/plm/ProcessStateTracker;->notifyUpdateToAdapters(Ljava/lang/String;)V

    return-void
.end method

.method public final notifyUpdateToAdapters(Ljava/lang/String;)V
    .locals 4

    .line 160
    sget-object v0, Lcom/android/server/enterprise/plm/ProcessStateTracker;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notify update for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "all"

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object p0, p0, Lcom/android/server/enterprise/plm/ProcessStateTracker;->mAdapters:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 162
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/plm/ProcessAdapter;

    if-nez v0, :cond_2

    goto :goto_1

    .line 164
    :cond_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 165
    invoke-virtual {v0}, Lcom/android/server/enterprise/plm/ProcessAdapter;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 166
    :cond_3
    sget-object v1, Lcom/android/server/enterprise/plm/ProcessStateTracker;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notify update to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/server/enterprise/plm/ProcessAdapter;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    invoke-virtual {v0}, Lcom/android/server/enterprise/plm/ProcessAdapter;->update()V

    goto :goto_1

    :cond_4
    return-void
.end method

.method public final onBootUpdate(Landroid/os/Message;)V
    .locals 2

    .line 211
    invoke-virtual {p0}, Lcom/android/server/enterprise/plm/ProcessStateTracker;->isStarted()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 212
    :cond_0
    sget-object v0, Lcom/android/server/enterprise/plm/ProcessStateTracker;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onBootUpdate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/enterprise/plm/common/PlmMessage;

    if-nez p1, :cond_1

    return-void

    .line 216
    :cond_1
    iget-object p1, p1, Lcom/android/server/enterprise/plm/common/PlmMessage;->obj1:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 217
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    invoke-virtual {p0}, Lcom/android/server/enterprise/plm/ProcessStateTracker;->notifyUpdateToAdapters()V

    return-void
.end method

.method public final onEdmUpdate(Landroid/os/Message;)V
    .locals 2

    .line 223
    invoke-virtual {p0}, Lcom/android/server/enterprise/plm/ProcessStateTracker;->isStarted()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 224
    :cond_0
    sget-object v0, Lcom/android/server/enterprise/plm/ProcessStateTracker;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onEdmUpdate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/enterprise/plm/common/PlmMessage;

    if-nez p1, :cond_1

    return-void

    .line 228
    :cond_1
    iget-object p1, p1, Lcom/android/server/enterprise/plm/common/PlmMessage;->obj1:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 229
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    invoke-virtual {p0}, Lcom/android/server/enterprise/plm/ProcessStateTracker;->notifyUpdateToAdapters()V

    return-void
.end method

.method public final onLicenseUpdate(Landroid/os/Message;)V
    .locals 4

    .line 173
    invoke-virtual {p0}, Lcom/android/server/enterprise/plm/ProcessStateTracker;->isStarted()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 174
    :cond_0
    sget-object v0, Lcom/android/server/enterprise/plm/ProcessStateTracker;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onLicenseUpdate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/enterprise/plm/common/PlmMessage;

    if-nez p1, :cond_1

    return-void

    .line 178
    :cond_1
    iget-object v1, p1, Lcom/android/server/enterprise/plm/common/PlmMessage;->obj1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 179
    iget-object p1, p1, Lcom/android/server/enterprise/plm/common/PlmMessage;->obj2:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 180
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "license "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_2

    const-string p1, "activated"

    goto :goto_0

    :cond_2
    const-string p1, "deactivated"

    :goto_0
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " on "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    invoke-virtual {p0}, Lcom/android/server/enterprise/plm/ProcessStateTracker;->notifyUpdateToAdapters()V

    return-void
.end method

.method public final onLockUpdate(Landroid/os/Message;)V
    .locals 2

    .line 235
    invoke-virtual {p0}, Lcom/android/server/enterprise/plm/ProcessStateTracker;->isStarted()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 236
    :cond_0
    sget-object v0, Lcom/android/server/enterprise/plm/ProcessStateTracker;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onLockUpdate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/enterprise/plm/common/PlmMessage;

    if-nez p1, :cond_1

    return-void

    .line 240
    :cond_1
    iget-object p1, p1, Lcom/android/server/enterprise/plm/common/PlmMessage;->obj1:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 241
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    invoke-virtual {p0}, Lcom/android/server/enterprise/plm/ProcessStateTracker;->notifyUpdateToAdapters()V

    return-void
.end method

.method public final onPackageUpdate(Landroid/os/Message;)V
    .locals 4

    .line 186
    invoke-virtual {p0}, Lcom/android/server/enterprise/plm/ProcessStateTracker;->isStarted()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 187
    :cond_0
    sget-object v0, Lcom/android/server/enterprise/plm/ProcessStateTracker;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onPackageUpdate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/enterprise/plm/common/PlmMessage;

    if-nez p1, :cond_1

    return-void

    .line 191
    :cond_1
    iget-object v1, p1, Lcom/android/server/enterprise/plm/common/PlmMessage;->obj1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 192
    iget-object p1, p1, Lcom/android/server/enterprise/plm/common/PlmMessage;->obj2:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 193
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/enterprise/plm/ProcessStateTracker;->mContext:Landroid/content/Context;

    invoke-static {p1, v1}, Lcom/android/server/enterprise/plm/common/Utils;->getEnabledState(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/plm/ProcessStateTracker;->notifyUpdateToAdapters(Ljava/lang/String;)V

    return-void
.end method

.method public final onTrackerStart(Landroid/os/Message;)V
    .locals 3

    .line 106
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/enterprise/plm/common/PlmMessage;

    if-nez p1, :cond_0

    return-void

    .line 108
    :cond_0
    iget-object p1, p1, Lcom/android/server/enterprise/plm/common/PlmMessage;->obj1:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/enterprise/plm/StartReason;

    .line 109
    sget-object v0, Lcom/android/server/enterprise/plm/ProcessStateTracker;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onTrackerStart : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    invoke-virtual {p0}, Lcom/android/server/enterprise/plm/ProcessStateTracker;->isStarted()Z

    move-result v0

    if-nez v0, :cond_3

    .line 112
    iget-object v0, p0, Lcom/android/server/enterprise/plm/ProcessStateTracker;->mSystemStateTracker:Lcom/android/server/enterprise/plm/SystemStateTracker;

    invoke-virtual {v0}, Lcom/android/server/enterprise/plm/SystemStateTracker;->start()V

    .line 113
    iget-object v0, p0, Lcom/android/server/enterprise/plm/ProcessStateTracker;->mSystemStateTracker:Lcom/android/server/enterprise/plm/SystemStateTracker;

    const/4 v1, 0x3

    invoke-virtual {v0, p0, v1}, Lcom/android/server/enterprise/plm/SystemStateTracker;->registerLicenseStateObserver(Landroid/os/Handler;I)V

    .line 114
    iget-object v0, p0, Lcom/android/server/enterprise/plm/ProcessStateTracker;->mSystemStateTracker:Lcom/android/server/enterprise/plm/SystemStateTracker;

    const/4 v1, 0x4

    invoke-virtual {v0, p0, v1}, Lcom/android/server/enterprise/plm/SystemStateTracker;->registerPackageObserver(Landroid/os/Handler;I)V

    .line 115
    iget-object v0, p0, Lcom/android/server/enterprise/plm/ProcessStateTracker;->mSystemStateTracker:Lcom/android/server/enterprise/plm/SystemStateTracker;

    const/4 v1, 0x5

    invoke-virtual {v0, p0, v1}, Lcom/android/server/enterprise/plm/SystemStateTracker;->registerUserStateObserver(Landroid/os/Handler;I)V

    .line 116
    iget-object v0, p0, Lcom/android/server/enterprise/plm/ProcessStateTracker;->mSystemStateTracker:Lcom/android/server/enterprise/plm/SystemStateTracker;

    const/4 v1, 0x6

    invoke-virtual {v0, p0, v1}, Lcom/android/server/enterprise/plm/SystemStateTracker;->registerBootStateObserver(Landroid/os/Handler;I)V

    .line 117
    iget-object v0, p0, Lcom/android/server/enterprise/plm/ProcessStateTracker;->mSystemStateTracker:Lcom/android/server/enterprise/plm/SystemStateTracker;

    const/4 v1, 0x7

    invoke-virtual {v0, p0, v1}, Lcom/android/server/enterprise/plm/SystemStateTracker;->registerEdmStateObserver(Landroid/os/Handler;I)V

    .line 118
    iget-object v0, p0, Lcom/android/server/enterprise/plm/ProcessStateTracker;->mSystemStateTracker:Lcom/android/server/enterprise/plm/SystemStateTracker;

    const/16 v1, 0x8

    invoke-virtual {v0, p0, v1}, Lcom/android/server/enterprise/plm/SystemStateTracker;->registerLockStateObserver(Landroid/os/Handler;I)V

    .line 120
    iget-object v0, p0, Lcom/android/server/enterprise/plm/ProcessStateTracker;->mAdapters:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 121
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/plm/ProcessAdapter;

    if-eqz v1, :cond_1

    .line 122
    invoke-virtual {v1}, Lcom/android/server/enterprise/plm/ProcessAdapter;->start()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    .line 125
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/plm/ProcessStateTracker;->setStarted(Z)V

    .line 128
    :cond_3
    sget-object v0, Lcom/android/server/enterprise/plm/StartReason;->EDM_SERVICE_READY:Lcom/android/server/enterprise/plm/StartReason;

    if-ne p1, v0, :cond_4

    .line 129
    iget-object p0, p0, Lcom/android/server/enterprise/plm/ProcessStateTracker;->mSystemStateTracker:Lcom/android/server/enterprise/plm/SystemStateTracker;

    sget-object p1, Lcom/android/server/enterprise/plm/InternalEvent;->EDM_SERVICE_READY:Lcom/android/server/enterprise/plm/InternalEvent;

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/plm/SystemStateTracker;->notifyEvent(Lcom/android/server/enterprise/plm/InternalEvent;)V

    :cond_4
    return-void
.end method

.method public final onTrackerStop(Landroid/os/Message;)V
    .locals 1

    .line 134
    sget-object p1, Lcom/android/server/enterprise/plm/ProcessStateTracker;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "onTrackerStop"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    invoke-virtual {p0}, Lcom/android/server/enterprise/plm/ProcessStateTracker;->isStarted()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    .line 137
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 138
    iget-object p1, p0, Lcom/android/server/enterprise/plm/ProcessStateTracker;->mAdapters:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 139
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/plm/ProcessAdapter;

    if-eqz v0, :cond_0

    .line 140
    invoke-virtual {v0}, Lcom/android/server/enterprise/plm/ProcessAdapter;->stop()V

    goto :goto_0

    .line 143
    :cond_1
    iget-object p1, p0, Lcom/android/server/enterprise/plm/ProcessStateTracker;->mSystemStateTracker:Lcom/android/server/enterprise/plm/SystemStateTracker;

    invoke-virtual {p1, p0}, Lcom/android/server/enterprise/plm/SystemStateTracker;->unregisterLockStateObserver(Landroid/os/Handler;)V

    .line 144
    iget-object p1, p0, Lcom/android/server/enterprise/plm/ProcessStateTracker;->mSystemStateTracker:Lcom/android/server/enterprise/plm/SystemStateTracker;

    invoke-virtual {p1, p0}, Lcom/android/server/enterprise/plm/SystemStateTracker;->unregisterEdmStateObserver(Landroid/os/Handler;)V

    .line 145
    iget-object p1, p0, Lcom/android/server/enterprise/plm/ProcessStateTracker;->mSystemStateTracker:Lcom/android/server/enterprise/plm/SystemStateTracker;

    invoke-virtual {p1, p0}, Lcom/android/server/enterprise/plm/SystemStateTracker;->unregisterBootStateObserver(Landroid/os/Handler;)V

    .line 146
    iget-object p1, p0, Lcom/android/server/enterprise/plm/ProcessStateTracker;->mSystemStateTracker:Lcom/android/server/enterprise/plm/SystemStateTracker;

    invoke-virtual {p1, p0}, Lcom/android/server/enterprise/plm/SystemStateTracker;->unregisterUserStateObserver(Landroid/os/Handler;)V

    .line 147
    iget-object p1, p0, Lcom/android/server/enterprise/plm/ProcessStateTracker;->mSystemStateTracker:Lcom/android/server/enterprise/plm/SystemStateTracker;

    invoke-virtual {p1, p0}, Lcom/android/server/enterprise/plm/SystemStateTracker;->unregisterPackageObserver(Landroid/os/Handler;)V

    .line 148
    iget-object p1, p0, Lcom/android/server/enterprise/plm/ProcessStateTracker;->mSystemStateTracker:Lcom/android/server/enterprise/plm/SystemStateTracker;

    invoke-virtual {p1, p0}, Lcom/android/server/enterprise/plm/SystemStateTracker;->unregisterLicenseStateObserver(Landroid/os/Handler;)V

    .line 149
    iget-object p1, p0, Lcom/android/server/enterprise/plm/ProcessStateTracker;->mSystemStateTracker:Lcom/android/server/enterprise/plm/SystemStateTracker;

    invoke-virtual {p1}, Lcom/android/server/enterprise/plm/SystemStateTracker;->stop()V

    const/4 p1, 0x0

    .line 151
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/plm/ProcessStateTracker;->setStarted(Z)V

    :cond_2
    return-void
.end method

.method public final onUserUpdate(Landroid/os/Message;)V
    .locals 2

    .line 199
    invoke-virtual {p0}, Lcom/android/server/enterprise/plm/ProcessStateTracker;->isStarted()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 200
    :cond_0
    sget-object v0, Lcom/android/server/enterprise/plm/ProcessStateTracker;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onUserUpdate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/enterprise/plm/common/PlmMessage;

    if-nez p1, :cond_1

    return-void

    .line 204
    :cond_1
    iget-object p1, p1, Lcom/android/server/enterprise/plm/common/PlmMessage;->obj1:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 205
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    invoke-virtual {p0}, Lcom/android/server/enterprise/plm/ProcessStateTracker;->notifyUpdateToAdapters()V

    return-void
.end method

.method public final setStarted(Z)V
    .locals 3

    .line 54
    sget-object v0, Lcom/android/server/enterprise/plm/ProcessStateTracker;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "start : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    iput-boolean p1, p0, Lcom/android/server/enterprise/plm/ProcessStateTracker;->mStarted:Z

    return-void
.end method

.method public start(Lcom/android/server/enterprise/plm/StartReason;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 59
    invoke-static {p0, v0, p1, v1}, Lcom/android/server/enterprise/plm/common/PlmMessage;->obtain(Landroid/os/Handler;ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
