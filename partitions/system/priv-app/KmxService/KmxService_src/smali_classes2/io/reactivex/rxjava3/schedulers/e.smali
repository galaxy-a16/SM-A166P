.class public abstract Lio/reactivex/rxjava3/schedulers/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljb/q;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/reactivex/rxjava3/internal/functions/b;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lio/reactivex/rxjava3/internal/functions/b;-><init>(I)V

    invoke-static {v0}, Lv4/b;->z(Lio/reactivex/rxjava3/internal/functions/b;)Ljb/q;

    new-instance v0, Lio/reactivex/rxjava3/internal/functions/b;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lio/reactivex/rxjava3/internal/functions/b;-><init>(I)V

    invoke-static {v0}, Lv4/b;->z(Lio/reactivex/rxjava3/internal/functions/b;)Ljb/q;

    move-result-object v0

    sput-object v0, Lio/reactivex/rxjava3/schedulers/e;->a:Ljb/q;

    new-instance v0, Lio/reactivex/rxjava3/internal/functions/b;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lio/reactivex/rxjava3/internal/functions/b;-><init>(I)V

    invoke-static {v0}, Lv4/b;->z(Lio/reactivex/rxjava3/internal/functions/b;)Ljb/q;

    sget v0, Lio/reactivex/rxjava3/internal/schedulers/r;->c:I

    new-instance v0, Lio/reactivex/rxjava3/internal/functions/b;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lio/reactivex/rxjava3/internal/functions/b;-><init>(I)V

    invoke-static {v0}, Lv4/b;->z(Lio/reactivex/rxjava3/internal/functions/b;)Ljb/q;

    return-void
.end method
