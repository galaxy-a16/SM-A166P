.class public Lcom/samsung/android/server/util/CoreLogger;
.super Ljava/lang/Object;
.source "CoreLogger.java"


# instance fields
.field public final mBuffer:Ljava/util/List;

.field public final mBufferOverflowAllowed:Z

.field public final mBufferSize:I

.field public final mDumpTitle:Ljava/lang/String;

.field public final mTag:Ljava/lang/String;

.field public final mUseTimeline:Z


# direct methods
.method public static synthetic $r8$lambda$lleg7G6A2RGke5JOsHT8q_4SSh4(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/samsung/android/server/util/CoreLogger;->lambda$print$0(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IZZ)V
    .locals 0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object p1, p0, Lcom/samsung/android/server/util/CoreLogger;->mTag:Ljava/lang/String;

    .line 91
    iput-object p2, p0, Lcom/samsung/android/server/util/CoreLogger;->mDumpTitle:Ljava/lang/String;

    .line 92
    iput p3, p0, Lcom/samsung/android/server/util/CoreLogger;->mBufferSize:I

    .line 93
    iput-boolean p4, p0, Lcom/samsung/android/server/util/CoreLogger;->mBufferOverflowAllowed:Z

    if-lez p3, :cond_0

    .line 94
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/samsung/android/server/util/CoreLogger;->mBuffer:Ljava/util/List;

    .line 95
    iput-boolean p5, p0, Lcom/samsung/android/server/util/CoreLogger;->mUseTimeline:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;IZZLcom/samsung/android/server/util/CoreLogger-IA;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/server/util/CoreLogger;-><init>(Ljava/lang/String;Ljava/lang/String;IZZ)V

    return-void
.end method

.method public static getBuilder()Lcom/samsung/android/server/util/CoreLogger$Builder;
    .locals 2

    .line 37
    new-instance v0, Lcom/samsung/android/server/util/CoreLogger$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/server/util/CoreLogger$Builder;-><init>(Lcom/samsung/android/server/util/CoreLogger$Builder-IA;)V

    return-object v0
.end method

.method public static synthetic lambda$print$0(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getBuffer()Ljava/util/List;
    .locals 3

    .line 166
    iget-object v0, p0, Lcom/samsung/android/server/util/CoreLogger;->mBuffer:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 169
    :cond_0
    monitor-enter v0

    .line 170
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/server/util/CoreLogger;->mBuffer:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 171
    monitor-exit v0

    return-object v1

    .line 173
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/samsung/android/server/util/CoreLogger;->mBuffer:Ljava/util/List;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    .line 174
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final isBufferFull()Z
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/samsung/android/server/util/CoreLogger;->mBuffer:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget p0, p0, Lcom/samsung/android/server/util/CoreLogger;->mBufferSize:I

    if-le v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public log(ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 99
    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/server/util/CoreLogger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public log(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 9

    .line 103
    iget-object v0, p0, Lcom/samsung/android/server/util/CoreLogger;->mBuffer:Ljava/util/List;

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v0, :cond_1

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/util/CoreLogger;->mTag:Ljava/lang/String;

    invoke-static {p1, v0, p2}, Landroid/util/Slog;->println(ILjava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz p3, :cond_2

    .line 107
    invoke-virtual {p3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 110
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/server/util/CoreLogger;->mBuffer:Ljava/util/List;

    if-nez p1, :cond_3

    return-void

    .line 114
    :cond_3
    iget-boolean p3, p0, Lcom/samsung/android/server/util/CoreLogger;->mBufferOverflowAllowed:Z

    if-nez p3, :cond_5

    .line 115
    monitor-enter p1

    .line 116
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/server/util/CoreLogger;->isBufferFull()Z

    move-result p3

    if-eqz p3, :cond_4

    .line 117
    monitor-exit p1

    return-void

    .line 119
    :cond_4
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 122
    :cond_5
    :goto_0
    iget-boolean p1, p0, Lcom/samsung/android/server/util/CoreLogger;->mUseTimeline:Z

    if-eqz p1, :cond_6

    .line 123
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    .line 124
    sget-object p3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v0, "%02d-%02d %02d:%02d:%02d.%03d %s"

    const/4 v1, 0x2

    .line 125
    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v1, 0x5

    .line 126
    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v1, 0xb

    .line 127
    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v1, 0xc

    .line 128
    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v1, 0xd

    .line 129
    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v1, 0xe

    .line 130
    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object v8, p2

    filled-new-array/range {v2 .. v8}, [Ljava/lang/Object;

    move-result-object p1

    .line 124
    invoke-static {p3, v0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 135
    :cond_6
    :try_start_1
    iget-object p1, p0, Lcom/samsung/android/server/util/CoreLogger;->mBuffer:Ljava/util/List;

    monitor-enter p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 136
    :try_start_2
    invoke-virtual {p0}, Lcom/samsung/android/server/util/CoreLogger;->isBufferFull()Z

    move-result p3

    if-eqz p3, :cond_7

    .line 137
    iget-object p3, p0, Lcom/samsung/android/server/util/CoreLogger;->mBuffer:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p3, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 139
    :cond_7
    iget-object p3, p0, Lcom/samsung/android/server/util/CoreLogger;->mBuffer:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    monitor-exit p1

    goto :goto_1

    :catchall_1
    move-exception p2

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    throw p2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception p1

    .line 142
    iget-object p0, p0, Lcom/samsung/android/server/util/CoreLogger;->mTag:Ljava/lang/String;

    const-string p2, "Fail to add logs"

    invoke-static {p0, p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method public print(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 3

    .line 151
    iget-object v0, p0, Lcom/samsung/android/server/util/CoreLogger;->mBuffer:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    .line 155
    :cond_0
    monitor-enter v0

    .line 156
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/util/CoreLogger;->mBuffer:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 157
    monitor-exit v0

    return-void

    .line 159
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/server/util/CoreLogger;->mDumpTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 160
    iget-object p0, p0, Lcom/samsung/android/server/util/CoreLogger;->mBuffer:Ljava/util/List;

    new-instance v1, Lcom/samsung/android/server/util/CoreLogger$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, p2}, Lcom/samsung/android/server/util/CoreLogger$$ExternalSyntheticLambda0;-><init>(Ljava/io/PrintWriter;Ljava/lang/String;)V

    invoke-interface {p0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 161
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public toDumpCriticalInfo()V
    .locals 1

    .line 181
    invoke-virtual {p0}, Lcom/samsung/android/server/util/CoreLogger;->getBuffer()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 185
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/util/CoreLogger;->mDumpTitle:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/android/server/wm/WindowManagerServiceExt;->logCriticalInfo(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method
