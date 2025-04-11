.class public final Lio/reactivex/rxjava3/internal/operators/flowable/f;
.super Ljb/d;
.source "SourceFile"


# static fields
.field public static final synthetic d:I


# instance fields
.field public final b:Ljava/lang/Object;

.field public final c:Lio/reactivex/rxjava3/internal/operators/flowable/FlowableGroupBy$State;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lio/reactivex/rxjava3/internal/operators/flowable/FlowableGroupBy$State;)V
    .locals 0

    invoke-direct {p0}, Ljb/d;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/f;->b:Ljava/lang/Object;

    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/f;->c:Lio/reactivex/rxjava3/internal/operators/flowable/FlowableGroupBy$State;

    return-void
.end method


# virtual methods
.method public final b(Lvc/c;)V
    .locals 0

    iget-object p0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/f;->c:Lio/reactivex/rxjava3/internal/operators/flowable/FlowableGroupBy$State;

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableGroupBy$State;->subscribe(Lvc/c;)V

    return-void
.end method
