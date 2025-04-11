.class public final Lkotlinx/coroutines/channels/f;
.super Lkotlinx/coroutines/c;
.source "SourceFile"


# instance fields
.field public final a:Lkotlinx/coroutines/channels/z;

.field public final synthetic b:Lkotlinx/coroutines/channels/j;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/channels/j;Lkotlinx/coroutines/channels/z;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/coroutines/channels/f;->b:Lkotlinx/coroutines/channels/j;

    invoke-direct {p0}, Lkotlinx/coroutines/c;-><init>()V

    iput-object p2, p0, Lkotlinx/coroutines/channels/f;->a:Lkotlinx/coroutines/channels/z;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 0

    iget-object p1, p0, Lkotlinx/coroutines/channels/f;->a:Lkotlinx/coroutines/channels/z;

    invoke-virtual {p1}, Lkotlinx/coroutines/internal/n;->n()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lkotlinx/coroutines/channels/f;->b:Lkotlinx/coroutines/channels/j;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    return-void
.end method

.method public final bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/channels/f;->a(Ljava/lang/Throwable;)V

    sget-object p0, Lkotlin/s;->a:Lkotlin/s;

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RemoveReceiveOnCancel["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lkotlinx/coroutines/channels/f;->a:Lkotlinx/coroutines/channels/z;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x5d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
