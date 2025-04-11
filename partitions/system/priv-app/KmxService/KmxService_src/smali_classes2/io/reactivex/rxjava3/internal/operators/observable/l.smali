.class public final Lio/reactivex/rxjava3/internal/operators/observable/l;
.super Ljb/j;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Lio/reactivex/rxjava3/internal/operators/observable/ObservableGroupBy$State;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lio/reactivex/rxjava3/internal/operators/observable/ObservableGroupBy$State;)V
    .locals 0

    invoke-direct {p0}, Ljb/j;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/l;->a:Ljava/lang/Object;

    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/observable/l;->b:Lio/reactivex/rxjava3/internal/operators/observable/ObservableGroupBy$State;

    return-void
.end method


# virtual methods
.method public final b(Ljb/m;)V
    .locals 0

    iget-object p0, p0, Lio/reactivex/rxjava3/internal/operators/observable/l;->b:Lio/reactivex/rxjava3/internal/operators/observable/ObservableGroupBy$State;

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/internal/operators/observable/ObservableGroupBy$State;->subscribe(Ljb/m;)V

    return-void
.end method
