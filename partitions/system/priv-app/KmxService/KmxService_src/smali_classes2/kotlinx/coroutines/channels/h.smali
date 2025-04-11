.class public final Lkotlinx/coroutines/channels/h;
.super Lkotlinx/coroutines/internal/k;
.source "SourceFile"


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Lkotlinx/coroutines/channels/l;


# direct methods
.method public synthetic constructor <init>(Lkotlinx/coroutines/internal/n;Lkotlinx/coroutines/channels/l;I)V
    .locals 0

    iput p3, p0, Lkotlinx/coroutines/channels/h;->d:I

    iput-object p2, p0, Lkotlinx/coroutines/channels/h;->e:Lkotlinx/coroutines/channels/l;

    invoke-direct {p0, p1}, Lkotlinx/coroutines/internal/k;-><init>(Lkotlinx/coroutines/internal/n;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic i(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lkotlinx/coroutines/channels/h;->d:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p1, Lkotlinx/coroutines/internal/n;

    invoke-virtual {p0}, Lkotlinx/coroutines/channels/h;->j()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :goto_0
    check-cast p1, Lkotlinx/coroutines/internal/n;

    invoke-virtual {p0}, Lkotlinx/coroutines/channels/h;->j()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final j()Ljava/lang/Object;
    .locals 3

    sget-object v0, Lkotlinx/coroutines/internal/t;->e:Lkotlinx/coroutines/internal/z;

    iget v1, p0, Lkotlinx/coroutines/channels/h;->d:I

    const/4 v2, 0x0

    iget-object p0, p0, Lkotlinx/coroutines/channels/h;->e:Lkotlinx/coroutines/channels/l;

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p0, Lkotlinx/coroutines/channels/j;

    invoke-virtual {p0}, Lkotlinx/coroutines/channels/j;->w()Z

    move-result p0

    if-eqz p0, :cond_0

    move-object v0, v2

    :cond_0
    return-object v0

    :goto_0
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/l;->p()Z

    move-result p0

    if-eqz p0, :cond_1

    move-object v0, v2

    :cond_1
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
