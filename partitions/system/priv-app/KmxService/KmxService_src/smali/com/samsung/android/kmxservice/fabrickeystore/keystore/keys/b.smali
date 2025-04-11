.class public final synthetic Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget p0, p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/b;->a:I

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-instance p0, Lcom/samsung/security/fabric/chain/core/exception/chain/status/FabricChainNoAvailablePeerException;

    const-string v0, "Stable peer does not exist."

    invoke-direct {p0, v0}, Lcom/samsung/security/fabric/chain/core/exception/chain/status/FabricChainNoAvailablePeerException;-><init>(Ljava/lang/String;)V

    return-object p0

    :pswitch_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    return-object p0

    :goto_0
    new-instance p0, Ljava/util/LinkedHashMap;

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
