.class public Lcom/samsung/android/server/hwrs/PreconditionObserver;
.super Lcom/samsung/android/server/hwrs/AbstractPreconditionObserver;
.source "PreconditionObserver.java"


# instance fields
.field public mBoundCameraShare:Z

.field public mConn:Landroid/content/ServiceConnection;

.field public mCurrentUserHandle:Landroid/os/UserHandle;

.field public final mHandler:Landroid/os/Handler;

.field public mIsTablet:Z

.field public mIsValidState:Z


# direct methods
.method public static bridge synthetic -$$Nest$fgetmIsTablet(Lcom/samsung/android/server/hwrs/PreconditionObserver;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver;->mIsTablet:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsValidState(Lcom/samsung/android/server/hwrs/PreconditionObserver;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver;->mIsValidState:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmBoundCameraShare(Lcom/samsung/android/server/hwrs/PreconditionObserver;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver;->mBoundCameraShare:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmIsValidState(Lcom/samsung/android/server/hwrs/PreconditionObserver;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver;->mIsValidState:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleMessageWhat(Lcom/samsung/android/server/hwrs/PreconditionObserver;II)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/hwrs/PreconditionObserver;->handleMessageWhat(II)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mremoveMessage(Lcom/samsung/android/server/hwrs/PreconditionObserver;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/hwrs/PreconditionObserver;->removeMessage(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msendMessageDelayed(Lcom/samsung/android/server/hwrs/PreconditionObserver;IIJ)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/server/hwrs/PreconditionObserver;->sendMessageDelayed(IIJ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 38
    invoke-direct {p0, p1}, Lcom/samsung/android/server/hwrs/AbstractPreconditionObserver;-><init>(Landroid/content/Context;)V

    .line 174
    new-instance p1, Lcom/samsung/android/server/hwrs/PreconditionObserver$3;

    invoke-direct {p1, p0}, Lcom/samsung/android/server/hwrs/PreconditionObserver$3;-><init>(Lcom/samsung/android/server/hwrs/PreconditionObserver;)V

    iput-object p1, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver;->mConn:Landroid/content/ServiceConnection;

    const-string p1, "[HWRS_SYS]PreconditionObserver"

    const-string v0, "PreconditionObserver entered"

    .line 39
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    new-instance p1, Lcom/samsung/android/server/hwrs/PreconditionObserver$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/server/hwrs/PreconditionObserver$1;-><init>(Lcom/samsung/android/server/hwrs/PreconditionObserver;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver;->mHandler:Landroid/os/Handler;

    .line 46
    invoke-virtual {p0}, Lcom/samsung/android/server/hwrs/PreconditionObserver;->isTablet()Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver;->mIsTablet:Z

    return-void
.end method


# virtual methods
.method public final bindCS(I)V
    .locals 2

    .line 190
    iget-boolean p1, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver;->mIsValidState:Z

    const-string v0, "[HWRS_SYS]PreconditionObserver"

    if-nez p1, :cond_0

    const-string p0, "bindCS - invalid state"

    .line 191
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 194
    :cond_0
    iget-boolean p1, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver;->mBoundCameraShare:Z

    if-nez p1, :cond_1

    const-string p1, "bind Camera Share"

    .line 195
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.samsung.android.hwresourceshare.CAMERA_SHARE_REQUEST"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "com.samsung.android.hwresourceshare"

    .line 197
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 198
    iget-object v0, p0, Lcom/samsung/android/server/hwrs/AbstractPreconditionObserver;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver;->mConn:Landroid/content/ServiceConnection;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p0, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    goto :goto_0

    :cond_1
    const-string p0, "already camera share was bound"

    .line 200
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public getCurrentUserId()I
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver;->mCurrentUserHandle:Landroid/os/UserHandle;

    if-nez p0, :cond_0

    const/16 p0, -0x2710

    return p0

    .line 53
    :cond_0
    invoke-virtual {p0}, Landroid/os/UserHandle;->semGetIdentifier()I

    move-result p0

    return p0
.end method

.method public final handleMessageWhat(II)V
    .locals 1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 156
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/server/hwrs/PreconditionObserver;->unbindCS()V

    goto :goto_0

    .line 152
    :cond_1
    invoke-virtual {p0, p2}, Lcom/samsung/android/server/hwrs/PreconditionObserver;->bindCS(I)V

    goto :goto_0

    .line 148
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/server/hwrs/PreconditionObserver;->stopUser()V

    goto :goto_0

    .line 144
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/server/hwrs/PreconditionObserver;->startPreconditionObserver()V

    :goto_0
    return-void
.end method

.method public final isTablet()Z
    .locals 1

    const-string/jumbo p0, "ro.build.characteristics"

    .line 74
    invoke-static {p0}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string/jumbo v0, "tablet"

    .line 75
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public removeAndSendMessageDelayed(IIJ)V
    .locals 0

    .line 131
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/hwrs/PreconditionObserver;->removeMessage(I)V

    .line 132
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/server/hwrs/PreconditionObserver;->sendMessageDelayed(IIJ)V

    return-void
.end method

.method public removeAndSendMessageDelayed(IJ)V
    .locals 0

    .line 137
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/hwrs/PreconditionObserver;->removeMessage(I)V

    .line 138
    iget-object p0, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public final removeMessage(I)V
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    iget-object p0, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method public final sendMessageDelayed(IIJ)V
    .locals 1

    .line 123
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 124
    iput p1, v0, Landroid/os/Message;->what:I

    .line 125
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 126
    iget-object p0, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0, p3, p4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public setValues(Ljava/lang/String;I)V
    .locals 5

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setValues ID : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", value : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "[HWRS_SYS]PreconditionObserver"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iget-object v0, p0, Lcom/samsung/android/server/hwrs/AbstractPreconditionObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, -0x1

    iget v4, p0, Lcom/samsung/android/server/hwrs/AbstractPreconditionObserver;->mUserId:I

    invoke-static {v0, p1, v3, v4}, Landroid/provider/Settings$System;->semGetIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eq v0, p2, :cond_0

    .line 168
    iget-object v0, p0, Lcom/samsung/android/server/hwrs/AbstractPreconditionObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget p0, p0, Lcom/samsung/android/server/hwrs/AbstractPreconditionObserver;->mUserId:I

    invoke-static {v0, p1, p2, p0}, Landroid/provider/Settings$System;->semPutIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_0

    .line 170
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", same value"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public final startPreconditionObserver()V
    .locals 4

    const-string/jumbo v0, "start entered"

    const-string v1, "[HWRS_SYS]PreconditionObserver"

    .line 80
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    invoke-virtual {p0}, Lcom/samsung/android/server/hwrs/PreconditionObserver;->getCurrentUserId()I

    move-result v0

    .line 82
    new-instance v2, Lcom/samsung/android/server/hwrs/PreconditionObserver$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/server/hwrs/PreconditionObserver$2;-><init>(Lcom/samsung/android/server/hwrs/PreconditionObserver;)V

    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/server/hwrs/AbstractPreconditionObserver;->start(ILcom/samsung/android/server/hwrs/AbstractPreconditionObserver$StateChangedListener;)V

    .line 108
    invoke-virtual {p0}, Lcom/samsung/android/server/hwrs/AbstractPreconditionObserver;->meetConditions()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver;->mIsValidState:Z

    if-eqz v0, :cond_0

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mIsValidState : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver;->mIsValidState:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    const-wide/16 v1, 0x0

    const/4 v3, 0x2

    .line 111
    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/samsung/android/server/hwrs/PreconditionObserver;->removeAndSendMessageDelayed(IIJ)V

    :cond_0
    return-void
.end method

.method public startUser(Landroid/os/UserHandle;)V
    .locals 3

    const-string/jumbo v0, "startUser entered"

    const-string v1, "[HWRS_SYS]PreconditionObserver"

    .line 57
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    invoke-virtual {p0}, Lcom/samsung/android/server/hwrs/PreconditionObserver;->getCurrentUserId()I

    move-result v0

    const/16 v2, -0x2710

    if-eq v0, v2, :cond_0

    const-string/jumbo p0, "startUser - invalid request!"

    .line 59
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 63
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startUser : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/UserHandle;->semGetIdentifier()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    iput-object p1, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver;->mCurrentUserHandle:Landroid/os/UserHandle;

    const/4 p1, 0x0

    const-wide/16 v0, 0x0

    .line 65
    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/server/hwrs/PreconditionObserver;->removeAndSendMessageDelayed(IJ)V

    return-void
.end method

.method public stopUser()V
    .locals 1

    const/4 v0, 0x0

    .line 69
    iput-object v0, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver;->mCurrentUserHandle:Landroid/os/UserHandle;

    .line 70
    invoke-virtual {p0}, Lcom/samsung/android/server/hwrs/AbstractPreconditionObserver;->stop()V

    return-void
.end method

.method public final unbindCS()V
    .locals 2

    .line 205
    iget-object v0, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    invoke-virtual {p0, v1}, Lcom/samsung/android/server/hwrs/PreconditionObserver;->removeMessage(I)V

    .line 208
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver;->mBoundCameraShare:Z

    const-string v1, "[HWRS_SYS]PreconditionObserver"

    if-eqz v0, :cond_1

    const-string/jumbo v0, "unbindCS"

    .line 209
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    iget-object v0, p0, Lcom/samsung/android/server/hwrs/AbstractPreconditionObserver;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver;->mConn:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    .line 211
    iput-boolean v0, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver;->mBoundCameraShare:Z

    goto :goto_0

    :cond_1
    const-string p0, "already camera share was unbound"

    .line 213
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
