.class public abstract Lcom/android/server/am/Pageboost$VramdiskLogger;
.super Ljava/lang/Object;
.source "Pageboost.java"


# static fields
.field public static array:[Ljava/lang/String;

.field public static cur_idx:I

.field public static final sLock:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x7d0

    new-array v0, v0, [Ljava/lang/String;

    .line 3400
    sput-object v0, Lcom/android/server/am/Pageboost$VramdiskLogger;->array:[Ljava/lang/String;

    .line 3401
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/am/Pageboost$VramdiskLogger;->sLock:Ljava/lang/Object;

    return-void
.end method

.method public static add(Ljava/lang/String;)V
    .locals 3

    .line 3408
    sget-object v0, Lcom/android/server/am/Pageboost$VramdiskLogger;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3409
    :try_start_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "MM-dd HH:mm:ss.SSS"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 3410
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 3411
    sget-object v1, Lcom/android/server/am/Pageboost$VramdiskLogger;->array:[Ljava/lang/String;

    invoke-static {}, Lcom/android/server/am/Pageboost$VramdiskLogger;->getNextIdx()I

    move-result v2

    aput-object p0, v1, v2

    .line 3412
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static getNextIdx()I
    .locals 2

    .line 3404
    sget v0, Lcom/android/server/am/Pageboost$VramdiskLogger;->cur_idx:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/android/server/am/Pageboost$VramdiskLogger;->cur_idx:I

    rem-int/lit16 v0, v0, 0x7d0

    return v0
.end method

.method public static print(Ljava/io/PrintWriter;)V
    .locals 4

    .line 3416
    sget-object v0, Lcom/android/server/am/Pageboost$VramdiskLogger;->sLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x7d0

    if-ge v1, v2, :cond_1

    .line 3418
    :try_start_0
    sget-object v2, Lcom/android/server/am/Pageboost$VramdiskLogger;->array:[Ljava/lang/String;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    .line 3419
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/server/am/Pageboost$VramdiskLogger;->array:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3422
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
