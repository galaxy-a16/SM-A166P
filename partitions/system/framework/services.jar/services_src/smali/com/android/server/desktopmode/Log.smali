.class public abstract Lcom/android/server/desktopmode/Log;
.super Ljava/lang/Object;
.source "Log.java"


# static fields
.field public static final CAPACITY_LOG:I

.field public static final FORMATTER:Ljava/time/format/DateTimeFormatter;

.field public static final SAVED_LOGS:Lcom/android/server/desktopmode/Log$EvictingArrayQueue;

.field public static final SAVED_STATES:Lcom/android/server/desktopmode/Log$EvictingArrayQueue;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x12c

    goto :goto_0

    :cond_0
    const/16 v0, 0xc8

    :goto_0
    sput v0, Lcom/android/server/desktopmode/Log;->CAPACITY_LOG:I

    const-string v1, "MM-dd HH:mm:ss.SSS"

    invoke-static {v1}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v1

    sput-object v1, Lcom/android/server/desktopmode/Log;->FORMATTER:Ljava/time/format/DateTimeFormatter;

    new-instance v1, Lcom/android/server/desktopmode/Log$EvictingArrayQueue;

    invoke-direct {v1, v0}, Lcom/android/server/desktopmode/Log$EvictingArrayQueue;-><init>(I)V

    sput-object v1, Lcom/android/server/desktopmode/Log;->SAVED_LOGS:Lcom/android/server/desktopmode/Log$EvictingArrayQueue;

    new-instance v0, Lcom/android/server/desktopmode/Log$EvictingArrayQueue;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Lcom/android/server/desktopmode/Log$EvictingArrayQueue;-><init>(I)V

    sput-object v0, Lcom/android/server/desktopmode/Log;->SAVED_STATES:Lcom/android/server/desktopmode/Log$EvictingArrayQueue;

    return-void
.end method

.method public static buildLogString(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    move-result-object v0

    sget-object v1, Lcom/android/server/desktopmode/Log;->FORMATTER:Ljava/time/format/DateTimeFormatter;

    invoke-virtual {v0, v1}, Ljava/time/LocalDateTime;->format(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;

    move-result-object v2

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

    invoke-static {p1, p2, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    const/16 v0, 0x44

    invoke-static {v0, p0, p1}, Lcom/android/server/desktopmode/Log;->save(CLjava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static dump(Ljava/io/PrintWriter;)V
    .locals 3

    const/16 v0, 0x56

    const-string v1, "[DMS]StateStart"

    const-string v2, "=========================================================================="

    invoke-static {v0, v1, v2}, Lcom/android/server/desktopmode/Log;->buildLogString(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    sget-object v1, Lcom/android/server/desktopmode/Log;->SAVED_STATES:Lcom/android/server/desktopmode/Log$EvictingArrayQueue;

    invoke-virtual {v1, p0}, Lcom/android/server/desktopmode/Log$EvictingArrayQueue;->dump(Ljava/io/PrintWriter;)V

    const-string v1, "[DMS]StateEnd"

    invoke-static {v0, v1, v2}, Lcom/android/server/desktopmode/Log;->buildLogString(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "[DMS]SavedLogsStart"

    invoke-static {v0, v1, v2}, Lcom/android/server/desktopmode/Log;->buildLogString(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    sget-object v1, Lcom/android/server/desktopmode/Log;->SAVED_LOGS:Lcom/android/server/desktopmode/Log$EvictingArrayQueue;

    invoke-virtual {v1, p0}, Lcom/android/server/desktopmode/Log$EvictingArrayQueue;->dump(Ljava/io/PrintWriter;)V

    const-string v1, "[DMS]SavedLogsEnd"

    invoke-static {v0, v1, v2}, Lcom/android/server/desktopmode/Log;->buildLogString(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    const/16 v0, 0x45

    invoke-static {v0, p0, p1}, Lcom/android/server/desktopmode/Log;->save(CLjava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1

    const/16 v0, 0x45

    invoke-static {v0, p0, p1}, Lcom/android/server/desktopmode/Log;->save(CLjava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    const/16 v0, 0x49

    invoke-static {v0, p0, p1}, Lcom/android/server/desktopmode/Log;->save(CLjava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static save(CLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/android/server/desktopmode/Log;->SAVED_LOGS:Lcom/android/server/desktopmode/Log$EvictingArrayQueue;

    invoke-static {p0, p1, p2}, Lcom/android/server/desktopmode/Log;->buildLogString(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/server/desktopmode/Log$EvictingArrayQueue;->add(Ljava/lang/Object;)V

    return-void
.end method

.method public static saveState(Lcom/android/server/desktopmode/State;Lcom/android/server/desktopmode/BlockerManager$DesktopModeBlockerInfo;)V
    .locals 3

    sget-object v0, Lcom/android/server/desktopmode/Log;->SAVED_STATES:Lcom/android/server/desktopmode/Log$EvictingArrayQueue;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(enter) State="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", blocked by "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0x57

    const-string v1, "[DMS]State"

    invoke-static {p1, v1, p0}, Lcom/android/server/desktopmode/Log;->buildLogString(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/server/desktopmode/Log$EvictingArrayQueue;->add(Ljava/lang/Object;)V

    return-void
.end method

.method public static saveState(Lcom/android/server/desktopmode/State;ZZ)V
    .locals 3

    sget-object v0, Lcom/android/server/desktopmode/Log;->SAVED_STATES:Lcom/android/server/desktopmode/Log$EvictingArrayQueue;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const-string p1, "enter"

    goto :goto_0

    :cond_0
    const-string p1, "exit"

    :goto_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_1

    const-string p1, ", successful)"

    goto :goto_1

    :cond_1
    const-string p1, ")"

    :goto_1
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " State="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0x44

    const-string p2, "[DMS]State"

    invoke-static {p1, p2, p0}, Lcom/android/server/desktopmode/Log;->buildLogString(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/server/desktopmode/Log$EvictingArrayQueue;->add(Ljava/lang/Object;)V

    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    const/16 v0, 0x56

    invoke-static {v0, p0, p1}, Lcom/android/server/desktopmode/Log;->save(CLjava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    const/16 v0, 0x57

    invoke-static {v0, p0, p1}, Lcom/android/server/desktopmode/Log;->save(CLjava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method
