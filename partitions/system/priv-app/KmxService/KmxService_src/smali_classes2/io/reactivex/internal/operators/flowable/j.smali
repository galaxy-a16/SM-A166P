.class public final Lio/reactivex/internal/operators/flowable/j;
.super Lfb/a;
.source "SourceFile"


# static fields
.field public static final synthetic d:I


# instance fields
.field public final c:Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;)V
    .locals 0

    invoke-direct {p0, p1}, Lfb/a;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/j;->c:Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;

    return-void
.end method


# virtual methods
.method public final b(Lvc/c;)V
    .locals 0

    iget-object p0, p0, Lio/reactivex/internal/operators/flowable/j;->c:Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;

    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->subscribe(Lvc/c;)V

    return-void
.end method
