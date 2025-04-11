.class public final Lio/reactivex/internal/operators/flowable/h;
.super Leb/e;
.source "SourceFile"

# interfaces
.implements Lib/e;


# static fields
.field public static final b:Lio/reactivex/internal/operators/flowable/h;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/reactivex/internal/operators/flowable/h;

    invoke-direct {v0}, Lio/reactivex/internal/operators/flowable/h;-><init>()V

    sput-object v0, Lio/reactivex/internal/operators/flowable/h;->b:Lio/reactivex/internal/operators/flowable/h;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Leb/e;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Lvc/c;)V
    .locals 0

    invoke-static {p1}, Lio/reactivex/internal/subscriptions/EmptySubscription;->complete(Lvc/c;)V

    return-void
.end method

.method public final call()Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method
