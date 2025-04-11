.class public Lcom/android/server/wm/TransitionTracer;
.super Ljava/lang/Object;
.source "TransitionTracer.java"


# instance fields
.field public volatile mActiveTracingEnabled:Z

.field public final mEnabledLock:Ljava/lang/Object;

.field public final mTraceBuffer:Lcom/android/internal/util/TraceBuffer;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Lcom/android/internal/util/TraceBuffer;

    const/16 v1, 0x3c00

    invoke-direct {v0, v1}, Lcom/android/internal/util/TraceBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/wm/TransitionTracer;->mTraceBuffer:Lcom/android/internal/util/TraceBuffer;

    .line 64
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TransitionTracer;->mEnabledLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 65
    iput-boolean v0, p0, Lcom/android/server/wm/TransitionTracer;->mActiveTracingEnabled:Z

    return-void
.end method


# virtual methods
.method public final dumpTransitionTargetsToProto(Landroid/util/proto/ProtoOutputStream;Lcom/android/server/wm/Transition;Ljava/util/ArrayList;)V
    .locals 9

    const-string v0, "TransitionTracer#dumpTransitionTargetsToProto"

    .line 150
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 151
    iget-boolean v0, p0, Lcom/android/server/wm/TransitionTracer;->mActiveTracingEnabled:Z

    const-wide v1, 0x10500000001L

    if-eqz v0, :cond_0

    .line 153
    invoke-virtual {p2}, Lcom/android/server/wm/Transition;->getSyncId()I

    move-result v0

    .line 152
    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 156
    :cond_0
    iget v0, p2, Lcom/android/server/wm/Transition;->mType:I

    const-wide v3, 0x10500000007L

    invoke-virtual {p1, v3, v4, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v3, 0x10500000009L

    .line 157
    invoke-virtual {p2}, Lcom/android/server/wm/Transition;->getFlags()I

    move-result p2

    invoke-virtual {p1, v3, v4, p2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const/4 p2, 0x0

    .line 159
    :goto_0
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p2, v0, :cond_3

    const-wide v3, 0x20b00000008L

    .line 161
    invoke-virtual {p1, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    .line 163
    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 166
    iget-object v5, v0, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    iget-object v5, v5, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v5}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 167
    iget-object v5, v0, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    iget-object v5, v5, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v5}, Landroid/view/SurfaceControl;->getLayerId()I

    move-result v5

    goto :goto_1

    :cond_1
    const/4 v5, -0x1

    .line 172
    :goto_1
    iget v6, v0, Lcom/android/server/wm/Transition$ChangeInfo;->mReadyMode:I

    invoke-virtual {p1, v1, v2, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v6, 0x10500000004L

    .line 173
    iget v8, v0, Lcom/android/server/wm/Transition$ChangeInfo;->mReadyFlags:I

    invoke-virtual {p1, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v6, 0x10500000002L

    .line 174
    invoke-virtual {p1, v6, v7, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 176
    iget-boolean v5, p0, Lcom/android/server/wm/TransitionTracer;->mActiveTracingEnabled:Z

    if-eqz v5, :cond_2

    .line 178
    iget-object v0, v0, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    const-wide v5, 0x10500000003L

    .line 179
    invoke-virtual {p1, v5, v6, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 182
    :cond_2
    invoke-virtual {p1, v3, v4}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 185
    :cond_3
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public isActiveTracingEnabled()Z
    .locals 0

    .line 255
    iget-boolean p0, p0, Lcom/android/server/wm/TransitionTracer;->mActiveTracingEnabled:Z

    return p0
.end method

.method public logAbortedTransition(Lcom/android/server/wm/Transition;)V
    .locals 7

    .line 133
    :try_start_0
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Landroid/util/proto/ProtoOutputStream;-><init>(I)V

    const-wide v1, 0x20b00000002L

    .line 135
    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    .line 136
    invoke-virtual {p1}, Lcom/android/server/wm/Transition;->getSyncId()I

    move-result v3

    const-wide v4, 0x10500000001L

    invoke-virtual {v0, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 137
    iget-object p1, p1, Lcom/android/server/wm/Transition;->mLogger:Lcom/android/server/wm/TransitionController$Logger;

    iget-wide v3, p1, Lcom/android/server/wm/TransitionController$Logger;->mAbortTimeNs:J

    const-wide v5, 0x1030000000aL

    invoke-virtual {v0, v5, v6, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 139
    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 141
    iget-object p0, p0, Lcom/android/server/wm/TransitionTracer;->mTraceBuffer:Lcom/android/internal/util/TraceBuffer;

    invoke-virtual {p0, v0}, Lcom/android/internal/util/TraceBuffer;->add(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "TransitionTracer"

    const-string v0, "Unexpected exception thrown while logging transitions"

    .line 144
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public logFinishedTransition(Lcom/android/server/wm/Transition;)V
    .locals 7

    .line 110
    :try_start_0
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Landroid/util/proto/ProtoOutputStream;-><init>(I)V

    const-wide v1, 0x20b00000002L

    .line 112
    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    .line 113
    invoke-virtual {p1}, Lcom/android/server/wm/Transition;->getSyncId()I

    move-result v3

    const-wide v4, 0x10500000001L

    invoke-virtual {v0, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 114
    iget-object p1, p1, Lcom/android/server/wm/Transition;->mLogger:Lcom/android/server/wm/TransitionController$Logger;

    iget-wide v3, p1, Lcom/android/server/wm/TransitionController$Logger;->mFinishTimeNs:J

    const-wide v5, 0x10300000006L

    invoke-virtual {v0, v5, v6, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 116
    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 118
    iget-object p0, p0, Lcom/android/server/wm/TransitionTracer;->mTraceBuffer:Lcom/android/internal/util/TraceBuffer;

    invoke-virtual {p0, v0}, Lcom/android/internal/util/TraceBuffer;->add(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "TransitionTracer"

    const-string v0, "Unexpected exception thrown while logging transitions"

    .line 121
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public logSentTransition(Lcom/android/server/wm/Transition;Ljava/util/ArrayList;)V
    .locals 7

    .line 80
    :try_start_0
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Landroid/util/proto/ProtoOutputStream;-><init>(I)V

    const-wide v1, 0x20b00000002L

    .line 82
    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    .line 83
    invoke-virtual {p1}, Lcom/android/server/wm/Transition;->getSyncId()I

    move-result v3

    const-wide v4, 0x10500000001L

    invoke-virtual {v0, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 84
    iget-object v3, p1, Lcom/android/server/wm/Transition;->mLogger:Lcom/android/server/wm/TransitionController$Logger;

    iget-wide v3, v3, Lcom/android/server/wm/TransitionController$Logger;->mCreateTimeNs:J

    const-wide v5, 0x10300000004L

    invoke-virtual {v0, v5, v6, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 86
    iget-object v3, p1, Lcom/android/server/wm/Transition;->mLogger:Lcom/android/server/wm/TransitionController$Logger;

    iget-wide v3, v3, Lcom/android/server/wm/TransitionController$Logger;->mSendTimeNs:J

    const-wide v5, 0x10300000005L

    invoke-virtual {v0, v5, v6, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 89
    invoke-virtual {p1}, Lcom/android/server/wm/Transition;->getStartTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/SurfaceControl$Transaction;->getId()J

    move-result-wide v3

    const-wide v5, 0x10400000002L

    .line 88
    invoke-virtual {v0, v5, v6, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 91
    invoke-virtual {p1}, Lcom/android/server/wm/Transition;->getFinishTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/SurfaceControl$Transaction;->getId()J

    move-result-wide v3

    const-wide v5, 0x10400000003L

    .line 90
    invoke-virtual {v0, v5, v6, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 92
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/wm/TransitionTracer;->dumpTransitionTargetsToProto(Landroid/util/proto/ProtoOutputStream;Lcom/android/server/wm/Transition;Ljava/util/ArrayList;)V

    .line 93
    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 95
    iget-object p0, p0, Lcom/android/server/wm/TransitionTracer;->mTraceBuffer:Lcom/android/internal/util/TraceBuffer;

    invoke-virtual {p0, v0}, Lcom/android/internal/util/TraceBuffer;->add(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "TransitionTracer"

    const-string p2, "Unexpected exception thrown while logging transitions"

    .line 98
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public saveForBugreport(Ljava/io/PrintWriter;)V
    .locals 3

    .line 242
    sget-boolean v0, Landroid/os/Build;->IS_USER:Z

    if-eqz v0, :cond_0

    const-string p0, "Tracing is not supported on user builds."

    .line 243
    invoke-static {p1, p0}, Lcom/android/server/wm/TransitionTracer$LogAndPrintln;->-$$Nest$sme(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "TransitionTracer#saveForBugreport"

    .line 246
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 247
    iget-object v0, p0, Lcom/android/server/wm/TransitionTracer;->mEnabledLock:Ljava/lang/Object;

    monitor-enter v0

    .line 248
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/misc/wmtrace/wm_transition_trace.winscope"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 249
    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/TransitionTracer;->writeTraceToFileLocked(Ljava/io/PrintWriter;Ljava/io/File;)V

    .line 250
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 251
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :catchall_0
    move-exception p0

    .line 250
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public startTrace(Ljava/io/PrintWriter;)V
    .locals 1

    .line 193
    sget-boolean v0, Landroid/os/Build;->IS_USER:Z

    if-eqz v0, :cond_0

    const-string p0, "Tracing is not supported on user builds."

    .line 194
    invoke-static {p1, p0}, Lcom/android/server/wm/TransitionTracer$LogAndPrintln;->-$$Nest$sme(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "TransitionTracer#startTrace"

    .line 197
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    const-string v0, "Starting shell transition trace."

    .line 198
    invoke-static {p1, v0}, Lcom/android/server/wm/TransitionTracer$LogAndPrintln;->-$$Nest$smi(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 199
    iget-object p1, p0, Lcom/android/server/wm/TransitionTracer;->mEnabledLock:Ljava/lang/Object;

    monitor-enter p1

    const/4 v0, 0x1

    .line 200
    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/wm/TransitionTracer;->mActiveTracingEnabled:Z

    .line 201
    iget-object v0, p0, Lcom/android/server/wm/TransitionTracer;->mTraceBuffer:Lcom/android/internal/util/TraceBuffer;

    invoke-virtual {v0}, Lcom/android/internal/util/TraceBuffer;->resetBuffer()V

    .line 202
    iget-object p0, p0, Lcom/android/server/wm/TransitionTracer;->mTraceBuffer:Lcom/android/internal/util/TraceBuffer;

    const v0, 0x4e2000

    invoke-virtual {p0, v0}, Lcom/android/internal/util/TraceBuffer;->setCapacity(I)V

    .line 203
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :catchall_0
    move-exception p0

    .line 203
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public stopTrace(Ljava/io/PrintWriter;)V
    .locals 2

    .line 213
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/misc/wmtrace/wm_transition_trace.winscope"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/TransitionTracer;->stopTrace(Ljava/io/PrintWriter;Ljava/io/File;)V

    return-void
.end method

.method public stopTrace(Ljava/io/PrintWriter;Ljava/io/File;)V
    .locals 2

    .line 221
    sget-boolean v0, Landroid/os/Build;->IS_USER:Z

    if-eqz v0, :cond_0

    const-string p0, "Tracing is not supported on user builds."

    .line 222
    invoke-static {p1, p0}, Lcom/android/server/wm/TransitionTracer$LogAndPrintln;->-$$Nest$sme(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "TransitionTracer#stopTrace"

    .line 225
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    const-string v0, "Stopping shell transition trace."

    .line 226
    invoke-static {p1, v0}, Lcom/android/server/wm/TransitionTracer$LogAndPrintln;->-$$Nest$smi(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 227
    iget-object v0, p0, Lcom/android/server/wm/TransitionTracer;->mEnabledLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 228
    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/wm/TransitionTracer;->mActiveTracingEnabled:Z

    .line 229
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/TransitionTracer;->writeTraceToFileLocked(Ljava/io/PrintWriter;Ljava/io/File;)V

    .line 230
    iget-object p1, p0, Lcom/android/server/wm/TransitionTracer;->mTraceBuffer:Lcom/android/internal/util/TraceBuffer;

    invoke-virtual {p1}, Lcom/android/internal/util/TraceBuffer;->resetBuffer()V

    .line 231
    iget-object p0, p0, Lcom/android/server/wm/TransitionTracer;->mTraceBuffer:Lcom/android/internal/util/TraceBuffer;

    const/16 p1, 0x3c00

    invoke-virtual {p0, p1}, Lcom/android/internal/util/TraceBuffer;->setCapacity(I)V

    .line 232
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 233
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :catchall_0
    move-exception p0

    .line 232
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final writeTraceToFileLocked(Ljava/io/PrintWriter;Ljava/io/File;)V
    .locals 5

    const-string v0, "TransitionTracer#writeTraceToFileLocked"

    .line 259
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 261
    :try_start_0
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Landroid/util/proto/ProtoOutputStream;-><init>(I)V

    const-wide v1, 0x10600000001L

    const-wide v3, 0x45434152544e5254L    # 4.655612620392399E25

    .line 262
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 263
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 264
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v1

    .line 265
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide v3, 0x10600000003L

    .line 266
    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 267
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    .line 268
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Writing file to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " from process "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/server/wm/TransitionTracer$LogAndPrintln;->-$$Nest$smi(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 270
    iget-object p0, p0, Lcom/android/server/wm/TransitionTracer;->mTraceBuffer:Lcom/android/internal/util/TraceBuffer;

    invoke-virtual {p0, p2, v0}, Lcom/android/internal/util/TraceBuffer;->writeTraceToFile(Ljava/io/File;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p2, "Unable to write buffer to file"

    .line 272
    invoke-static {p1, p2, p0}, Lcom/android/server/wm/TransitionTracer$LogAndPrintln;->-$$Nest$sme(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 274
    :goto_0
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method
