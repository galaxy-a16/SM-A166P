.class public abstract Lio/reactivex/rxjava3/internal/schedulers/n;
.super Ljb/q;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/disposables/b;


# static fields
.field public static final c:Lio/reactivex/rxjava3/internal/schedulers/m;

.field public static final d:Lio/reactivex/rxjava3/internal/disposables/EmptyDisposable;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/reactivex/rxjava3/internal/schedulers/m;

    invoke-direct {v0}, Lio/reactivex/rxjava3/internal/schedulers/m;-><init>()V

    sput-object v0, Lio/reactivex/rxjava3/internal/schedulers/n;->c:Lio/reactivex/rxjava3/internal/schedulers/m;

    sget-object v0, Lio/reactivex/rxjava3/internal/disposables/EmptyDisposable;->INSTANCE:Lio/reactivex/rxjava3/internal/disposables/EmptyDisposable;

    sput-object v0, Lio/reactivex/rxjava3/internal/schedulers/n;->d:Lio/reactivex/rxjava3/internal/disposables/EmptyDisposable;

    return-void
.end method
