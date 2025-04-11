.class public abstract Lnb/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Leb/s;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/reactivex/internal/functions/a;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lio/reactivex/internal/functions/a;-><init>(I)V

    invoke-static {v0}, Lv4/b;->y(Lio/reactivex/internal/functions/a;)Leb/s;

    new-instance v0, Lio/reactivex/internal/functions/a;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lio/reactivex/internal/functions/a;-><init>(I)V

    invoke-static {v0}, Lv4/b;->y(Lio/reactivex/internal/functions/a;)Leb/s;

    move-result-object v0

    sput-object v0, Lnb/e;->a:Leb/s;

    new-instance v0, Lio/reactivex/internal/functions/a;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lio/reactivex/internal/functions/a;-><init>(I)V

    invoke-static {v0}, Lv4/b;->y(Lio/reactivex/internal/functions/a;)Leb/s;

    sget v0, Lio/reactivex/internal/schedulers/t;->b:I

    new-instance v0, Lio/reactivex/internal/functions/a;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lio/reactivex/internal/functions/a;-><init>(I)V

    invoke-static {v0}, Lv4/b;->y(Lio/reactivex/internal/functions/a;)Leb/s;

    return-void
.end method
