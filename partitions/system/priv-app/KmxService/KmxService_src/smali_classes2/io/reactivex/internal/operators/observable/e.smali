.class public final Lio/reactivex/internal/operators/observable/e;
.super Leb/k;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Lio/reactivex/internal/operators/observable/ObservableGroupBy$State;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lio/reactivex/internal/operators/observable/ObservableGroupBy$State;)V
    .locals 0

    invoke-direct {p0}, Leb/k;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/e;->a:Ljava/lang/Object;

    iput-object p2, p0, Lio/reactivex/internal/operators/observable/e;->b:Lio/reactivex/internal/operators/observable/ObservableGroupBy$State;

    return-void
.end method


# virtual methods
.method public final a(Leb/n;)V
    .locals 0

    iget-object p0, p0, Lio/reactivex/internal/operators/observable/e;->b:Lio/reactivex/internal/operators/observable/ObservableGroupBy$State;

    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/observable/ObservableGroupBy$State;->subscribe(Leb/n;)V

    return-void
.end method
