.class public final synthetic Lcom/samsung/android/kmxservice/common/update/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lcom/samsung/android/kmxservice/common/update/a;->a:I

    iput-object p1, p0, Lcom/samsung/android/kmxservice/common/update/a;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lcom/samsung/android/kmxservice/common/update/a;->a:I

    iget-object p0, p0, Lcom/samsung/android/kmxservice/common/update/a;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p0, Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/kmxservice/common/update/ContextFactory;->c(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p0, Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/kmxservice/common/update/ContextFactory;->b(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p0, Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/kmxservice/common/update/ContextFactory;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    return-object p0

    :goto_0
    check-cast p0, Ljava/lang/String;

    new-instance v0, Lcom/samsung/security/fabric/chain/core/exception/chain/status/FabricChainInvalidPeerStatusException;

    const-string v1, "No board number of "

    const-string v2, "."

    invoke-static {v1, p0, v2}, Lorg/spongycastle/jcajce/provider/digest/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/samsung/security/fabric/chain/core/exception/chain/status/FabricChainInvalidPeerStatusException;-><init>(Ljava/lang/String;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
