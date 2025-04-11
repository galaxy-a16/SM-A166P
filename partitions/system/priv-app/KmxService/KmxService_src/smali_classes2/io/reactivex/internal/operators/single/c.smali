.class public final Lio/reactivex/internal/operators/single/c;
.super Leb/k;
.source "SourceFile"


# instance fields
.field public final a:Leb/v;


# direct methods
.method public constructor <init>(Leb/v;)V
    .locals 0

    invoke-direct {p0}, Leb/k;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/single/c;->a:Leb/v;

    return-void
.end method


# virtual methods
.method public final a(Leb/n;)V
    .locals 1

    new-instance v0, Lio/reactivex/internal/operators/single/SingleToObservable$SingleToObservableObserver;

    invoke-direct {v0, p1}, Lio/reactivex/internal/operators/single/SingleToObservable$SingleToObservableObserver;-><init>(Leb/n;)V

    iget-object p0, p0, Lio/reactivex/internal/operators/single/c;->a:Leb/v;

    check-cast p0, Leb/t;

    invoke-virtual {p0, v0}, Leb/t;->a(Leb/u;)V

    return-void
.end method
