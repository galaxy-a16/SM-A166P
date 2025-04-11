.class public Lcom/android/server/appop/AppOpsCheckingServiceTracingDecorator;
.super Ljava/lang/Object;
.source "AppOpsCheckingServiceTracingDecorator.java"

# interfaces
.implements Lcom/android/server/appop/AppOpsCheckingServiceInterface;


# instance fields
.field public final mService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;


# direct methods
.method public constructor <init>(Lcom/android/server/appop/AppOpsCheckingServiceInterface;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/android/server/appop/AppOpsCheckingServiceTracingDecorator;->mService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    return-void
.end method


# virtual methods
.method public clearAllModes()V
    .locals 3

    const-string v0, "TaggedTracingAppOpsCheckingServiceInterfaceImpl#clearAllModes"

    const-wide/16 v1, 0x40

    .line 198
    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 201
    :try_start_0
    iget-object p0, p0, Lcom/android/server/appop/AppOpsCheckingServiceTracingDecorator;->mService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    invoke-interface {p0}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->clearAllModes()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 204
    throw p0
.end method

.method public dumpListeners(IILjava/lang/String;Ljava/io/PrintWriter;)Z
    .locals 3

    const-string v0, "TaggedTracingAppOpsCheckingServiceInterfaceImpl#dumpListeners"

    const-wide/16 v1, 0x40

    .line 326
    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 329
    :try_start_0
    iget-object p0, p0, Lcom/android/server/appop/AppOpsCheckingServiceTracingDecorator;->mService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->dumpListeners(IILjava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 331
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_0
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 332
    throw p0
.end method

.method public evalForegroundPackageOps(Ljava/lang/String;Landroid/util/SparseBooleanArray;I)Landroid/util/SparseBooleanArray;
    .locals 3

    const-string v0, "TaggedTracingAppOpsCheckingServiceInterfaceImpl#evalForegroundPackageOps"

    const-wide/16 v1, 0x40

    .line 314
    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 317
    :try_start_0
    iget-object p0, p0, Lcom/android/server/appop/AppOpsCheckingServiceTracingDecorator;->mService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->evalForegroundPackageOps(Ljava/lang/String;Landroid/util/SparseBooleanArray;I)Landroid/util/SparseBooleanArray;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 319
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 320
    throw p0
.end method

.method public evalForegroundUidOps(ILandroid/util/SparseBooleanArray;)Landroid/util/SparseBooleanArray;
    .locals 3

    const-string v0, "TaggedTracingAppOpsCheckingServiceInterfaceImpl#evalForegroundUidOps"

    const-wide/16 v1, 0x40

    .line 302
    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 305
    :try_start_0
    iget-object p0, p0, Lcom/android/server/appop/AppOpsCheckingServiceTracingDecorator;->mService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    invoke-interface {p0, p1, p2}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->evalForegroundUidOps(ILandroid/util/SparseBooleanArray;)Landroid/util/SparseBooleanArray;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 307
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 308
    throw p0
.end method

.method public getNonDefaultPackageModes(Ljava/lang/String;I)Landroid/util/SparseIntArray;
    .locals 3

    const-string v0, "TaggedTracingAppOpsCheckingServiceInterfaceImpl#getNonDefaultPackageModes"

    const-wide/16 v1, 0x40

    .line 100
    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 103
    :try_start_0
    iget-object p0, p0, Lcom/android/server/appop/AppOpsCheckingServiceTracingDecorator;->mService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    invoke-interface {p0, p1, p2}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->getNonDefaultPackageModes(Ljava/lang/String;I)Landroid/util/SparseIntArray;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 106
    throw p0
.end method

.method public getNonDefaultUidModes(I)Landroid/util/SparseIntArray;
    .locals 3

    const-string v0, "TaggedTracingAppOpsCheckingServiceInterfaceImpl#getNonDefaultUidModes"

    const-wide/16 v1, 0x40

    .line 89
    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 92
    :try_start_0
    iget-object p0, p0, Lcom/android/server/appop/AppOpsCheckingServiceTracingDecorator;->mService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    invoke-interface {p0, p1}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->getNonDefaultUidModes(I)Landroid/util/SparseIntArray;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 95
    throw p0
.end method

.method public getOpModeChangedListeners(I)Landroid/util/ArraySet;
    .locals 3

    const-string v0, "TaggedTracingAppOpsCheckingServiceInterfaceImpl#getOpModeChangedListeners"

    const-wide/16 v1, 0x40

    .line 244
    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 247
    :try_start_0
    iget-object p0, p0, Lcom/android/server/appop/AppOpsCheckingServiceTracingDecorator;->mService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    invoke-interface {p0, p1}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->getOpModeChangedListeners(I)Landroid/util/ArraySet;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 249
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 250
    throw p0
.end method

.method public getPackageMode(Ljava/lang/String;II)I
    .locals 3

    const-string v0, "TaggedTracingAppOpsCheckingServiceInterfaceImpl#getPackageMode"

    const-wide/16 v1, 0x40

    .line 131
    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 134
    :try_start_0
    iget-object p0, p0, Lcom/android/server/appop/AppOpsCheckingServiceTracingDecorator;->mService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->getPackageMode(Ljava/lang/String;II)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_0
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 137
    throw p0
.end method

.method public getPackageModeChangedListeners(Ljava/lang/String;)Landroid/util/ArraySet;
    .locals 3

    const-string v0, "TaggedTracingAppOpsCheckingServiceInterfaceImpl#getPackageModeChangedListeners"

    const-wide/16 v1, 0x40

    .line 256
    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 259
    :try_start_0
    iget-object p0, p0, Lcom/android/server/appop/AppOpsCheckingServiceTracingDecorator;->mService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    invoke-interface {p0, p1}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->getPackageModeChangedListeners(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 261
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 262
    throw p0
.end method

.method public getUidMode(II)I
    .locals 3

    const-string v0, "TaggedTracingAppOpsCheckingServiceInterfaceImpl#getUidMode"

    const-wide/16 v1, 0x40

    .line 111
    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 113
    :try_start_0
    iget-object p0, p0, Lcom/android/server/appop/AppOpsCheckingServiceTracingDecorator;->mService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    invoke-interface {p0, p1, p2}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->getUidMode(II)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_0
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 116
    throw p0
.end method

.method public notifyOpChanged(Lcom/android/server/appop/OnOpModeChangedListener;IILjava/lang/String;)V
    .locals 3

    const-string v0, "TaggedTracingAppOpsCheckingServiceInterfaceImpl#notifyOpChanged"

    const-wide/16 v1, 0x40

    .line 279
    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 282
    :try_start_0
    iget-object p0, p0, Lcom/android/server/appop/AppOpsCheckingServiceTracingDecorator;->mService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->notifyOpChanged(Lcom/android/server/appop/OnOpModeChangedListener;IILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 284
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 285
    throw p0
.end method

.method public notifyOpChangedForAllPkgsInUid(IIZLcom/android/server/appop/OnOpModeChangedListener;)V
    .locals 3

    const-string v0, "TaggedTracingAppOpsCheckingServiceInterfaceImpl#notifyOpChangedForAllPkgsInUid"

    const-wide/16 v1, 0x40

    .line 291
    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 294
    :try_start_0
    iget-object p0, p0, Lcom/android/server/appop/AppOpsCheckingServiceTracingDecorator;->mService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->notifyOpChangedForAllPkgsInUid(IIZLcom/android/server/appop/OnOpModeChangedListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 296
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 297
    throw p0
.end method

.method public notifyWatchersOfChange(II)V
    .locals 3

    const-string v0, "TaggedTracingAppOpsCheckingServiceInterfaceImpl#notifyWatchersOfChange"

    const-wide/16 v1, 0x40

    .line 267
    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 270
    :try_start_0
    iget-object p0, p0, Lcom/android/server/appop/AppOpsCheckingServiceTracingDecorator;->mService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    invoke-interface {p0, p1, p2}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->notifyWatchersOfChange(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 272
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 273
    throw p0
.end method

.method public readState()V
    .locals 3

    const-string v0, "TaggedTracingAppOpsCheckingServiceInterfaceImpl#readState"

    const-wide/16 v1, 0x40

    .line 56
    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 59
    :try_start_0
    iget-object p0, p0, Lcom/android/server/appop/AppOpsCheckingServiceTracingDecorator;->mService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    invoke-interface {p0}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->readState()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 62
    throw p0
.end method

.method public removeListener(Lcom/android/server/appop/OnOpModeChangedListener;)V
    .locals 3

    const-string v0, "TaggedTracingAppOpsCheckingServiceInterfaceImpl#removeListener"

    const-wide/16 v1, 0x40

    .line 233
    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 236
    :try_start_0
    iget-object p0, p0, Lcom/android/server/appop/AppOpsCheckingServiceTracingDecorator;->mService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    invoke-interface {p0, p1}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->removeListener(Lcom/android/server/appop/OnOpModeChangedListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 238
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 239
    throw p0
.end method

.method public removePackage(Ljava/lang/String;I)Z
    .locals 3

    const-string v0, "TaggedTracingAppOpsCheckingServiceInterfaceImpl#removePackage"

    const-wide/16 v1, 0x40

    .line 154
    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 157
    :try_start_0
    iget-object p0, p0, Lcom/android/server/appop/AppOpsCheckingServiceTracingDecorator;->mService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    invoke-interface {p0, p1, p2}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->removePackage(Ljava/lang/String;I)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_0
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 160
    throw p0
.end method

.method public removeUid(I)V
    .locals 3

    const-string v0, "TaggedTracingAppOpsCheckingServiceInterfaceImpl#removeUid"

    const-wide/16 v1, 0x40

    .line 165
    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 168
    :try_start_0
    iget-object p0, p0, Lcom/android/server/appop/AppOpsCheckingServiceTracingDecorator;->mService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    invoke-interface {p0, p1}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->removeUid(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 171
    throw p0
.end method

.method public setPackageMode(Ljava/lang/String;III)V
    .locals 3

    const-string v0, "TaggedTracingAppOpsCheckingServiceInterfaceImpl#setPackageMode"

    const-wide/16 v1, 0x40

    .line 143
    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 146
    :try_start_0
    iget-object p0, p0, Lcom/android/server/appop/AppOpsCheckingServiceTracingDecorator;->mService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->setPackageMode(Ljava/lang/String;III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 149
    throw p0
.end method

.method public setUidMode(III)Z
    .locals 3

    const-string v0, "TaggedTracingAppOpsCheckingServiceInterfaceImpl#setUidMode"

    const-wide/16 v1, 0x40

    .line 121
    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 123
    :try_start_0
    iget-object p0, p0, Lcom/android/server/appop/AppOpsCheckingServiceTracingDecorator;->mService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->setUidMode(III)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_0
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 126
    throw p0
.end method

.method public shutdown()V
    .locals 3

    const-string v0, "TaggedTracingAppOpsCheckingServiceInterfaceImpl#shutdown"

    const-wide/16 v1, 0x40

    .line 67
    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 70
    :try_start_0
    iget-object p0, p0, Lcom/android/server/appop/AppOpsCheckingServiceTracingDecorator;->mService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    invoke-interface {p0}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->shutdown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 73
    throw p0
.end method

.method public startWatchingOpModeChanged(Lcom/android/server/appop/OnOpModeChangedListener;I)V
    .locals 3

    const-string v0, "TaggedTracingAppOpsCheckingServiceInterfaceImpl#startWatchingOpModeChanged"

    const-wide/16 v1, 0x40

    .line 210
    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 213
    :try_start_0
    iget-object p0, p0, Lcom/android/server/appop/AppOpsCheckingServiceTracingDecorator;->mService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    invoke-interface {p0, p1, p2}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->startWatchingOpModeChanged(Lcom/android/server/appop/OnOpModeChangedListener;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 215
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 216
    throw p0
.end method

.method public startWatchingPackageModeChanged(Lcom/android/server/appop/OnOpModeChangedListener;Ljava/lang/String;)V
    .locals 3

    const-string v0, "TaggedTracingAppOpsCheckingServiceInterfaceImpl#startWatchingPackageModeChanged"

    const-wide/16 v1, 0x40

    .line 222
    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 225
    :try_start_0
    iget-object p0, p0, Lcom/android/server/appop/AppOpsCheckingServiceTracingDecorator;->mService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    invoke-interface {p0, p1, p2}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->startWatchingPackageModeChanged(Lcom/android/server/appop/OnOpModeChangedListener;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 227
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 228
    throw p0
.end method

.method public systemReady()V
    .locals 3

    const-string v0, "TaggedTracingAppOpsCheckingServiceInterfaceImpl#systemReady"

    const-wide/16 v1, 0x40

    .line 78
    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 81
    :try_start_0
    iget-object p0, p0, Lcom/android/server/appop/AppOpsCheckingServiceTracingDecorator;->mService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    invoke-interface {p0}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->systemReady()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 84
    throw p0
.end method

.method public writeState()V
    .locals 3

    const-string v0, "TaggedTracingAppOpsCheckingServiceInterfaceImpl#writeState"

    const-wide/16 v1, 0x40

    .line 45
    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 48
    :try_start_0
    iget-object p0, p0, Lcom/android/server/appop/AppOpsCheckingServiceTracingDecorator;->mService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    invoke-interface {p0}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->writeState()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 51
    throw p0
.end method
