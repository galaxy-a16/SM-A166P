.class public abstract Ljb/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/disposables/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Runnable;)Lio/reactivex/rxjava3/disposables/b;
    .locals 3

    const-wide/16 v0, 0x0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, p1, v0, v1, v2}, Ljb/p;->b(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/disposables/b;

    move-result-object p0

    return-object p0
.end method

.method public abstract b(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/disposables/b;
.end method

.method public final c(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/disposables/b;
    .locals 18

    move-wide/from16 v0, p2

    move-object/from16 v2, p6

    new-instance v3, Lio/reactivex/rxjava3/internal/disposables/SequentialDisposable;

    invoke-direct {v3}, Lio/reactivex/rxjava3/internal/disposables/SequentialDisposable;-><init>()V

    new-instance v15, Lio/reactivex/rxjava3/internal/disposables/SequentialDisposable;

    invoke-direct {v15, v3}, Lio/reactivex/rxjava3/internal/disposables/SequentialDisposable;-><init>(Lio/reactivex/rxjava3/disposables/b;)V

    const-string v4, "run is null"

    move-object/from16 v8, p1

    invoke-static {v8, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-wide/from16 v4, p4

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v12

    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v4}, Ljb/q;->a(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v9

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v4

    add-long v6, v4, v9

    new-instance v14, Leb/q;

    const/16 v16, 0x1

    move-object v4, v14

    move-object/from16 v5, p0

    move-object v11, v15

    move-object/from16 v17, v15

    move-object v15, v14

    move/from16 v14, v16

    invoke-direct/range {v4 .. v14}, Leb/q;-><init>(Ljava/lang/Object;JLjava/lang/Runnable;JLjava/util/concurrent/atomic/AtomicReference;JI)V

    move-object/from16 v4, p0

    invoke-virtual {v4, v15, v0, v1, v2}, Ljb/p;->b(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/disposables/b;

    move-result-object v0

    sget-object v1, Lio/reactivex/rxjava3/internal/disposables/EmptyDisposable;->INSTANCE:Lio/reactivex/rxjava3/internal/disposables/EmptyDisposable;

    if-ne v0, v1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {v3, v0}, Lio/reactivex/rxjava3/internal/disposables/SequentialDisposable;->replace(Lio/reactivex/rxjava3/disposables/b;)Z

    return-object v17
.end method
