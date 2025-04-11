.class public abstract Lcom/android/server/remoteappmode/Log;
.super Ljava/lang/Object;
.source "Log.java"


# static fields
.field public static CAPACITY_LOG:I = 0xc8

.field public static CAPACITY_STATE:I = 0x64

.field public static sFormatter:Ljava/time/format/DateTimeFormatter;

.field public static sSavedLogs:Lcom/android/server/remoteappmode/Log$EvictingArrayQueue;

.field public static sSavedStates:Lcom/android/server/remoteappmode/Log$EvictingArrayQueue;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "MM-dd HH:mm:ss.SSS"

    .line 19
    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/android/server/remoteappmode/Log;->sFormatter:Ljava/time/format/DateTimeFormatter;

    .line 20
    new-instance v0, Lcom/android/server/remoteappmode/Log$EvictingArrayQueue;

    sget v1, Lcom/android/server/remoteappmode/Log;->CAPACITY_LOG:I

    invoke-direct {v0, v1}, Lcom/android/server/remoteappmode/Log$EvictingArrayQueue;-><init>(I)V

    sput-object v0, Lcom/android/server/remoteappmode/Log;->sSavedLogs:Lcom/android/server/remoteappmode/Log$EvictingArrayQueue;

    .line 22
    new-instance v0, Lcom/android/server/remoteappmode/Log$EvictingArrayQueue;

    sget v1, Lcom/android/server/remoteappmode/Log;->CAPACITY_STATE:I

    invoke-direct {v0, v1}, Lcom/android/server/remoteappmode/Log$EvictingArrayQueue;-><init>(I)V

    sput-object v0, Lcom/android/server/remoteappmode/Log;->sSavedStates:Lcom/android/server/remoteappmode/Log$EvictingArrayQueue;

    return-void
.end method

.method public static buildLogString(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .line 96
    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    move-result-object v0

    sget-object v1, Lcom/android/server/remoteappmode/Log;->sFormatter:Ljava/time/format/DateTimeFormatter;

    invoke-virtual {v0, v1}, Ljava/time/LocalDateTime;->format(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;

    move-result-object v2

    .line 97
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    move-object v7, p1

    move-object v8, p2

    filled-new-array/range {v2 .. v8}, [Ljava/lang/Object;

    move-result-object p0

    const/4 p1, 0x0

    const-string p2, "%s %5d %5d %5d %c %s: %s"

    .line 95
    invoke-static {p1, p2, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    const/16 v0, 0x44

    .line 39
    invoke-static {v0, p0, p1}, Lcom/android/server/remoteappmode/Log;->save(CLjava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static dump(Ljava/io/PrintWriter;)V
    .locals 3

    const-string v0, "[RAMS]StateStart"

    const/16 v1, 0x56

    const-string v2, "=========================================================================="

    .line 30
    invoke-static {v1, v0, v2}, Lcom/android/server/remoteappmode/Log;->buildLogString(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 31
    sget-object v0, Lcom/android/server/remoteappmode/Log;->sSavedStates:Lcom/android/server/remoteappmode/Log$EvictingArrayQueue;

    invoke-virtual {v0, p0}, Lcom/android/server/remoteappmode/Log$EvictingArrayQueue;->dump(Ljava/io/PrintWriter;)V

    const-string v0, "[RAMS]StateEnd"

    .line 32
    invoke-static {v1, v0, v2}, Lcom/android/server/remoteappmode/Log;->buildLogString(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "[RAMS]SavedLogsStart"

    .line 33
    invoke-static {v1, v0, v2}, Lcom/android/server/remoteappmode/Log;->buildLogString(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 34
    sget-object v0, Lcom/android/server/remoteappmode/Log;->sSavedLogs:Lcom/android/server/remoteappmode/Log$EvictingArrayQueue;

    invoke-virtual {v0, p0}, Lcom/android/server/remoteappmode/Log$EvictingArrayQueue;->dump(Ljava/io/PrintWriter;)V

    const-string v0, "[RAMS]SavedLogsEnd"

    .line 35
    invoke-static {v1, v0, v2}, Lcom/android/server/remoteappmode/Log;->buildLogString(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    const/16 v0, 0x45

    .line 49
    invoke-static {v0, p0, p1}, Lcom/android/server/remoteappmode/Log;->save(CLjava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    const/16 v0, 0x49

    .line 59
    invoke-static {v0, p0, p1}, Lcom/android/server/remoteappmode/Log;->save(CLjava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static save(CLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 90
    sget-object v0, Lcom/android/server/remoteappmode/Log;->sSavedLogs:Lcom/android/server/remoteappmode/Log$EvictingArrayQueue;

    invoke-static {p0, p1, p2}, Lcom/android/server/remoteappmode/Log;->buildLogString(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/server/remoteappmode/Log$EvictingArrayQueue;->add(Ljava/lang/Object;)V

    return-void
.end method
