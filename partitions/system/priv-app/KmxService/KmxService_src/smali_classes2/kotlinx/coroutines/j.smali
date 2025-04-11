.class public final Lkotlinx/coroutines/j;
.super Lkotlinx/coroutines/z0;
.source "SourceFile"


# instance fields
.field public final synthetic e:I

.field public final f:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/h;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lkotlinx/coroutines/j;->e:I

    .line 1
    invoke-direct {p0}, Lkotlinx/coroutines/z0;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/j;->f:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lkotlinx/coroutines/selects/c;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lkotlinx/coroutines/j;->e:I

    .line 2
    iput-object p1, p0, Lkotlinx/coroutines/j;->f:Ljava/lang/Object;

    invoke-direct {p0}, Lkotlinx/coroutines/z0;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    sget-object v0, Lkotlin/s;->a:Lkotlin/s;

    iget v1, p0, Lkotlinx/coroutines/j;->e:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/j;->s(Ljava/lang/Throwable;)V

    return-object v0

    :goto_0
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/j;->s(Ljava/lang/Throwable;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final s(Ljava/lang/Throwable;)V
    .locals 1

    iget-object p1, p0, Lkotlinx/coroutines/j;->f:Ljava/lang/Object;

    iget v0, p0, Lkotlinx/coroutines/j;->e:I

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    check-cast p1, Lkotlinx/coroutines/h;

    invoke-virtual {p0}, Lkotlinx/coroutines/b1;->r()Lkotlinx/coroutines/f1;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lkotlinx/coroutines/f1;->u()Ljava/util/concurrent/CancellationException;

    move-result-object p0

    invoke-virtual {p1}, Lkotlinx/coroutines/h;->q()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lkotlinx/coroutines/h;->d:Lkotlin/coroutines/d;

    check-cast v0, Lkotlinx/coroutines/internal/e;

    invoke-virtual {v0, p0}, Lkotlinx/coroutines/internal/e;->i(Ljava/util/concurrent/CancellationException;)Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1, p0}, Lkotlinx/coroutines/h;->j(Ljava/lang/Throwable;)V

    invoke-virtual {p1}, Lkotlinx/coroutines/h;->q()Z

    move-result p0

    if-nez p0, :cond_2

    invoke-virtual {p1}, Lkotlinx/coroutines/h;->k()V

    :cond_2
    :goto_1
    return-void

    :goto_2
    check-cast p1, Lkotlinx/coroutines/selects/c;

    invoke-virtual {p1}, Lkotlinx/coroutines/selects/c;->x()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lkotlinx/coroutines/b1;->r()Lkotlinx/coroutines/f1;

    move-result-object p0

    invoke-virtual {p0}, Lkotlinx/coroutines/f1;->u()Ljava/util/concurrent/CancellationException;

    move-result-object p0

    invoke-virtual {p1, p0}, Lkotlinx/coroutines/selects/c;->w(Ljava/lang/Throwable;)V

    :cond_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
