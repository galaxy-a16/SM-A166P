.class public abstract Lio/reactivex/rxjava3/internal/operators/flowable/x;
.super Lkb/a;
.source "SourceFile"


# direct methods
.method public static d(J)Lio/reactivex/rxjava3/exceptions/MissingBackpressureException;
    .locals 3

    new-instance v0, Lio/reactivex/rxjava3/exceptions/MissingBackpressureException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to emit the next window (#"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, ") due to lack of requests. Please make sure the downstream is ready to consume windows."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lio/reactivex/rxjava3/exceptions/MissingBackpressureException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
