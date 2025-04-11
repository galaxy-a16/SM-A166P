.class public abstract Leb/s;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-string v1, "rx2.scheduler.drift-tolerance"

    const-wide/16 v2, 0xf

    invoke-static {v1, v2, v3}, Ljava/lang/Long;->getLong(Ljava/lang/String;J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, Leb/s;->a:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()Leb/r;
.end method

.method public final b(Ljava/util/concurrent/TimeUnit;)J
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, p0}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide p0

    return-wide p0
.end method

.method public c(Ljava/lang/Runnable;)Lio/reactivex/disposables/b;
    .locals 3

    const-wide/16 v0, 0x0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, p1, v0, v1, v2}, Leb/s;->d(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/b;

    move-result-object p0

    return-object p0
.end method

.method public d(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/b;
    .locals 1

    invoke-virtual {p0}, Leb/s;->a()Leb/r;

    move-result-object p0

    invoke-static {p1}, Lv4/b;->T(Ljava/lang/Runnable;)V

    new-instance v0, Leb/o;

    invoke-direct {v0, p1, p0}, Leb/o;-><init>(Ljava/lang/Runnable;Leb/r;)V

    invoke-virtual {p0, v0, p2, p3, p4}, Leb/r;->c(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/b;

    return-object v0
.end method

.method public e(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/b;
    .locals 21

    move-wide/from16 v0, p2

    move-object/from16 v2, p6

    invoke-virtual/range {p0 .. p0}, Leb/s;->a()Leb/r;

    move-result-object v14

    invoke-static/range {p1 .. p1}, Lv4/b;->T(Ljava/lang/Runnable;)V

    new-instance v15, Leb/p;

    move-object/from16 v3, p1

    invoke-direct {v15, v3, v14}, Leb/p;-><init>(Ljava/lang/Runnable;Leb/r;)V

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v13, Lio/reactivex/internal/disposables/SequentialDisposable;

    invoke-direct {v13}, Lio/reactivex/internal/disposables/SequentialDisposable;-><init>()V

    new-instance v11, Lio/reactivex/internal/disposables/SequentialDisposable;

    invoke-direct {v11, v13}, Lio/reactivex/internal/disposables/SequentialDisposable;-><init>(Lio/reactivex/disposables/b;)V

    move-wide/from16 v3, p4

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v16

    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v14, v3}, Leb/r;->a(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v8

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v3

    add-long v5, v3, v8

    new-instance v12, Leb/q;

    const/16 v18, 0x0

    move-object v3, v12

    move-object v4, v14

    move-object v7, v15

    move-object v10, v11

    move-object/from16 v19, v11

    move-object/from16 p0, v15

    move-object v15, v12

    move-wide/from16 v11, v16

    move-object/from16 v20, v13

    move/from16 v13, v18

    invoke-direct/range {v3 .. v13}, Leb/q;-><init>(Ljava/lang/Object;JLjava/lang/Runnable;JLjava/util/concurrent/atomic/AtomicReference;JI)V

    invoke-virtual {v14, v15, v0, v1, v2}, Leb/r;->c(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/b;

    move-result-object v11

    sget-object v0, Lio/reactivex/internal/disposables/EmptyDisposable;->INSTANCE:Lio/reactivex/internal/disposables/EmptyDisposable;

    if-ne v11, v0, :cond_0

    goto :goto_0

    :cond_0
    move-object/from16 v1, v20

    invoke-virtual {v1, v11}, Lio/reactivex/internal/disposables/SequentialDisposable;->replace(Lio/reactivex/disposables/b;)Z

    move-object/from16 v11, v19

    :goto_0
    if-ne v11, v0, :cond_1

    return-object v11

    :cond_1
    return-object p0
.end method
