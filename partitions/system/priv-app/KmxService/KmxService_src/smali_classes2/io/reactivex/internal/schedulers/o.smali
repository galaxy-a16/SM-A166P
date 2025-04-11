.class public abstract Lio/reactivex/internal/schedulers/o;
.super Leb/s;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/disposables/b;


# static fields
.field public static final b:Lio/reactivex/internal/schedulers/n;

.field public static final c:Lio/reactivex/internal/disposables/EmptyDisposable;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/reactivex/internal/schedulers/n;

    invoke-direct {v0}, Lio/reactivex/internal/schedulers/n;-><init>()V

    sput-object v0, Lio/reactivex/internal/schedulers/o;->b:Lio/reactivex/internal/schedulers/n;

    sget-object v0, Lio/reactivex/internal/disposables/EmptyDisposable;->INSTANCE:Lio/reactivex/internal/disposables/EmptyDisposable;

    sput-object v0, Lio/reactivex/internal/schedulers/o;->c:Lio/reactivex/internal/disposables/EmptyDisposable;

    return-void
.end method
