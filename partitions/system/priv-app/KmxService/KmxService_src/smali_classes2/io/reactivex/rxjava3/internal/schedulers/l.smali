.class public abstract Lio/reactivex/rxjava3/internal/schedulers/l;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/gson/internal/d;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lcom/google/gson/internal/d;-><init>(I)V

    const-string v1, "rx3.purge-enabled"

    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {v0, v1}, Lcom/google/gson/internal/d;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Li4/f;->L(Ljava/lang/Throwable;)V

    :goto_0
    sput-boolean v2, Lio/reactivex/rxjava3/internal/schedulers/l;->a:Z

    return-void
.end method
