.class public final synthetic Lcom/hivemq/client/internal/mqtt/handler/auth/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/hivemq/client/internal/mqtt/handler/auth/e;->a:I

    iput-object p2, p0, Lcom/hivemq/client/internal/mqtt/handler/auth/e;->b:Ljava/lang/Object;

    iput-object p3, p0, Lcom/hivemq/client/internal/mqtt/handler/auth/e;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lcom/hivemq/client/internal/mqtt/handler/auth/e;->a:I

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/handler/auth/e;->c:Ljava/lang/Object;

    iget-object p0, p0, Lcom/hivemq/client/internal/mqtt/handler/auth/e;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p0, Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager$PeerAgent;

    check-cast v2, Ljava/lang/Runnable;

    invoke-static {p0, v2}, Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager$PeerAgent;->c(Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager$PeerAgent;Ljava/lang/Runnable;)Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p0, Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager$PeerAgent;

    check-cast v2, Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager$PeerAgent;->e(Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager$PeerAgent;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p0, Lcom/hivemq/client/internal/mqtt/handler/auth/k;

    sget v0, Lcom/hivemq/client/internal/mqtt/handler/auth/k;->f:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    throw v1

    :pswitch_3
    check-cast p0, Lcom/hivemq/client/internal/mqtt/handler/auth/g;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    throw v1

    :goto_0
    check-cast p0, Lfa/b;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getPki : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", token : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lh/e;->a:Ljava/lang/Object;

    check-cast v1, Landroid/content/Context;

    iget-object p0, p0, Lh/e;->c:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {v1, p0}, Lh3/a;->A(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
