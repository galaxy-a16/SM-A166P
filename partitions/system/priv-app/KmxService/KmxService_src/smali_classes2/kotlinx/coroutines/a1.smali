.class public final Lkotlinx/coroutines/a1;
.super Lkotlinx/coroutines/f1;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/o;


# instance fields
.field public final b:Z


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/y0;)V
    .locals 3

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlinx/coroutines/f1;-><init>(Z)V

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/f1;->C(Lkotlinx/coroutines/y0;)V

    invoke-virtual {p0}, Lkotlinx/coroutines/f1;->y()Lkotlinx/coroutines/k;

    move-result-object p1

    instance-of v1, p1, Lkotlinx/coroutines/l;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast p1, Lkotlinx/coroutines/l;

    goto :goto_0

    :cond_0
    move-object p1, v2

    :goto_0
    if-eqz p1, :cond_3

    :goto_1
    invoke-virtual {p1}, Lkotlinx/coroutines/b1;->r()Lkotlinx/coroutines/f1;

    move-result-object p1

    invoke-virtual {p1}, Lkotlinx/coroutines/f1;->w()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_3

    :cond_1
    invoke-virtual {p1}, Lkotlinx/coroutines/f1;->y()Lkotlinx/coroutines/k;

    move-result-object p1

    instance-of v1, p1, Lkotlinx/coroutines/l;

    if-eqz v1, :cond_2

    check-cast p1, Lkotlinx/coroutines/l;

    goto :goto_2

    :cond_2
    move-object p1, v2

    :goto_2
    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_3
    iput-boolean v0, p0, Lkotlinx/coroutines/a1;->b:Z

    return-void
.end method


# virtual methods
.method public final w()Z
    .locals 0

    iget-boolean p0, p0, Lkotlinx/coroutines/a1;->b:Z

    return p0
.end method
