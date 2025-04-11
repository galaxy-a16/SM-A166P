.class public final Lkotlinx/coroutines/r1;
.super Lkotlinx/coroutines/t;
.source "SourceFile"


# static fields
.field public static final synthetic c:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlinx/coroutines/r1;

    invoke-direct {v0}, Lkotlinx/coroutines/r1;-><init>()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lkotlinx/coroutines/t;-><init>()V

    return-void
.end method


# virtual methods
.method public final i(Lkotlin/coroutines/i;Ljava/lang/Runnable;)V
    .locals 0

    sget-object p0, Lkotlinx/coroutines/u1;->c:Ll4/e;

    invoke-interface {p1, p0}, Lkotlin/coroutines/i;->get(Lkotlin/coroutines/h;)Lkotlin/coroutines/g;

    move-result-object p0

    check-cast p0, Lkotlinx/coroutines/u1;

    if-eqz p0, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lkotlinx/coroutines/u1;->b:Z

    return-void

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Dispatchers.Unconfined.dispatch function can only be used by the yield function. If you wrap Unconfined dispatcher in your code, make sure you properly delegate isDispatchNeeded and dispatch calls."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    const-string p0, "Dispatchers.Unconfined"

    return-object p0
.end method
