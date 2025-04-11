.class public final Lio/reactivex/internal/operators/single/b;
.super Leb/e;
.source "SourceFile"


# instance fields
.field public final b:Leb/v;


# direct methods
.method public constructor <init>(Leb/v;)V
    .locals 0

    invoke-direct {p0}, Leb/e;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/single/b;->b:Leb/v;

    return-void
.end method


# virtual methods
.method public final b(Lvc/c;)V
    .locals 1

    new-instance v0, Lio/reactivex/internal/operators/single/SingleToFlowable$SingleToFlowableObserver;

    invoke-direct {v0, p1}, Lio/reactivex/internal/operators/single/SingleToFlowable$SingleToFlowableObserver;-><init>(Lvc/c;)V

    iget-object p0, p0, Lio/reactivex/internal/operators/single/b;->b:Leb/v;

    check-cast p0, Leb/t;

    invoke-virtual {p0, v0}, Leb/t;->a(Leb/u;)V

    return-void
.end method
